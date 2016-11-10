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
