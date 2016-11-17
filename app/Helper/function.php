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
    $config = Cache::get('CONFIG_LIST');
    if(empty($config)){
        $config = D('SysConfig')->get()->pluck('value', 'name');
        Cache::forever('CONFIG_LIST',$config);//永久保存
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
 * 生成6位随机数
 * @author: xingyonghe
 * @date: 2016-11-17
 * @return string
 */
function random_char(){
    $char = '0123456789';
    $code = '';
    for ($i = 0; $i < 6; $i++) {
        $code .= $char[mt_rand(0, strlen($char) - 1)];
    }
    return $code;
}
