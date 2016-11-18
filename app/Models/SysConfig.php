<?php

namespace App\Models;

class SysConfig extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | SysConfig Model
    | @author xingyonghe
    | @date 2016-11-14
    |--------------------------------------------------------------------------
    |
    | 系统配置模型
    |
    */
    protected $table = 'sys_config';
    protected $fillable = [
        'title', 'name','sort','type','group','value','extra','remark','module'
    ];

}
