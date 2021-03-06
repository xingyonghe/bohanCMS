<?php
/**
 * 实例化模型类
 * @author xingyonghe
 * @date 2016-11-10
 * @return Model
 */
function D($name='') {
    static $_model = array();
    if(isset($_model[$name])){
        return $_model[$name];
    }
    if(empty($name)){
        $class = '\\App\Models\\CommonModel';
    }else{
        $class = '\\App\Models\\'.$name;
        if(!class_exists($class)) {
            throw new InvalidArgumentException('D方法实例化没找到模型类'.$class);
        }
    }
    $model = new $class();
    $_model[$name]  =  $model;
    return $model;
}

/**
 * 打印原生sql语句
 * 在你想打印的sql语句之前使用此方法
 * @author xingyonghe
 * @date 2016-11-10
 * @return string 返回SQL语句
 */
function sql_dump(){
    \DB::listen(function ($query) {
        $bindings = $query->bindings;
        $i = 0;
        $rawSql = preg_replace_callback('/\?/', function ($matches) use ($bindings, &$i) {
            $item = isset($bindings[$i]) ? $bindings[$i] : $matches[0];
            $i++;
            return gettype($item) == 'string' ? "'$item'" : $item;
        }, $query->sql);
        echo $rawSql."\n<br /><br />\n";
    });
}

/**
 * 获取网站配置
 * @author xingyonghe
 * @date 2016-11-14
 * @param $name 配置标识
 * @return mixed
 */
function C($name){
    $config = cache()->get('CONFIG_LIST');
    if(empty($config)){
        $config = D('SysConfig')->get()->pluck('value', 'name');
        cache()->forever('CONFIG_LIST',$config);//永久保存
    }
    return isset($config[$name]) ? $config[$name] : '';
}

/**
 * 分析枚举类型配置值
 * @author xingyonghe
 * @date 2016-11-14
 * @param $string
 * @return array
 */
function parse_config_attr($string) {
    $array = preg_split('/[,;\r\n]+/', trim($string, ",;\r\n"));
    if(strpos($string,':')){
        $value  =   array();
        foreach ($array as $val) {
            list($k, $v) = explode(':', $val);
            $value[$k]   = $v;
        }
    }else{
        $value  =   $array;
    }
    return $value;
}

/**
 * 把返回的数据集转换成Tree
 * @author xingyonghe
 * @date 2016-11-16
 * @param array $list 要转换的数据集
 * @param string $pid parent标记字段
 * @param string $level level标记字段
 * @return array
 */
function list_to_tree($list, $pk='id', $pid = 'pid', $child = '_child', $root = 0) {
    // 创建Tree
    $tree = array();
    if(is_array($list)) {
        // 创建基于主键的数组引用
        $refer = array();
        foreach ($list as $key => $data) {
            $refer[$data[$pk]] =& $list[$key];
        }
        foreach ($list as $key => $data) {
            // 判断是否存在parent
            $parentId =  $data[$pid];
            if ($root == $parentId) {
                $tree[] =& $list[$key];
            }else{
                if (isset($refer[$parentId])) {
                    $parent =& $refer[$parentId];
                    $parent[$child][] =& $list[$key];
                }
            }
        }
    }
    return $tree;
}

/**
 * 是否是管理员
 * @author: xingyonghe
 * @date: 2016-11-17
 */
function is_administrators(){
    if(auth()->guard('admin')->id() == 1){
        return true;
    }
    return false;
}


/**
 * 字符串截取，支持中文和其他编码
 * @author: xingyonghe
 * @date: 2016-11-18
 * @param string $str 需要转换的字符串
 * @param string $start 开始位置
 * @param string $length 截取长度
 * @param string $charset 编码格式
 * @param string $suffix 截断显示字符
 * @return string
 */
function msubstr($str, $start=0, $length, $charset="utf-8", $suffix=true) {
    if(function_exists("mb_substr"))
        $slice = mb_substr($str, $start, $length, $charset);
    elseif(function_exists('iconv_substr')) {
        $slice = iconv_substr($str,$start,$length,$charset);
        if(false === $slice) {
            $slice = '';
        }
    }else{
        $re['utf-8']   = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}/";
        $re['gb2312'] = "/[\x01-\x7f]|[\xb0-\xf7][\xa0-\xfe]/";
        $re['gbk']    = "/[\x01-\x7f]|[\x81-\xfe][\x40-\xfe]/";
        $re['big5']   = "/[\x01-\x7f]|[\x81-\xfe]([\x40-\x7e]|\xa1-\xfe])/";
        preg_match_all($re[$charset], $str, $match);
        $slice = join("",array_slice($match[0], $start, $length));
    }
    return $suffix ? $slice.'...' : $slice;
}


/**
 * 生成订单号/流水号
 * @author xingyonghe
 * @date 2016-11-23
 * @return string
 */
function create_order_sn(){
    $order_sn = 'ZH'. strtoupper(dechex(date('m'))).date('d').substr(time(),-5).substr(microtime(),2,5).sprintf('%d',rand(0,9));
    return $order_sn;
}

/**
 * 获取广告平台字段信息
 * @author xingyonghe
 * @date 2015-12-25
 * @param $id 广告平台ID
 * @param string $field 广告平台字段名称
 * @return string 广告平台字段名称对应的平台ID的值
 */
function  get_platform_filed($id,$field ='name')
{
    if(empty($id)){
        return '';
    }
    $info = \App\Models\UserPlatform::find($id);
    if(empty($info)){
        return '';
    }
    return $info[$field];
}

/**
 * 获取广告平台形式信息
 * @author xingyonghe
 * @date 2015-12-25
 * @param $id 广告平台ID
 * @param string $field 广告形式字段名称
 * @return string 广告形式字段名称对应的形式ID的值
 */
function  get_adform_filed($id,$field ='name')
{
    if(empty($id)){
        return '';
    }
    $info = \App\Models\UserAdform::find($id);
    if(empty($info)){
        return '';
    }
    return $info[$field];
}


function  get_custom_qq($custom_id)
{
    if(empty($custom_id)){
        return '';
    }
    $info = \App\Models\SysAdmin::find($custom_id);
    if(empty($info) || empty($info['qq'])){
        return '';
    }
    $qq_url = 'tencent://message/?uin='.$info['qq'].'&Site=&Menu=yes';
    return $qq_url;
}