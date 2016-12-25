<?php

namespace App\Models;

class UserPlatform extends CommonModel
{
    /*
    |--------------------------------------------------------------------------
    | UserPlatform Model
    | @author xingyonghe
    | @date 2016-12-24
    |--------------------------------------------------------------------------
    |
    | 用户平台模型
    |
    */

    protected $table = 'user_platform';
    protected $fillable = [
        'name', 'icon','category','sort'
    ];





}
