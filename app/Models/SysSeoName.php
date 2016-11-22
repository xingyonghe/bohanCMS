<?php

namespace App\Models;

class SysSeoName extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | SysSeoName Model
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | SEO变量模型
    |
    */

    protected $table = 'sys_seo_name';
    protected $fillable = [
        'name', 'variable','confines'
    ];
}
