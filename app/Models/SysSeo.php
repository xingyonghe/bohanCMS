<?php

namespace App\Models;

class SysSeo extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | SysSeo Model
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | SEO模型
    |
    */

    protected $table = 'sys_seo';
    protected $fillable = [
        'name', 'key','title','keywords','description'
    ];
}
