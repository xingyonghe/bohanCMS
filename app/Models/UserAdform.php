<?php

namespace App\Models;

class UserAdform extends CommonModel
{
    /*
    |--------------------------------------------------------------------------
    | UserAdform Model
    | @author xingyonghe
    | @date 2016-12-24
    |--------------------------------------------------------------------------
    |
    | 广告形式模型
    |
    */

    protected $table = 'user_adform';
    protected $fillable = [
        'name', 'explain','category','sort'
    ];





}
