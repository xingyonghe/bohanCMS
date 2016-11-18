<?php

namespace App\Models;

class SysChannel extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | SysChannel Model
    | @author xingyonghe
    | @date 2016-11-18
    |--------------------------------------------------------------------------
    |
    | 导航模型
    |
    */

    protected $table = 'sys_channel';
    protected $fillable = [
        'title', 'remark','url','sort','status','target'
    ];



}
