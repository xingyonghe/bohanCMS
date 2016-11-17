<?php

namespace App\Models;

class UserMedia extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | UserMedia Model
    | @author xingyonghe
    | @date 2016-11-17
    |--------------------------------------------------------------------------
    |
    | 自媒体用户扩展模型
    |
    */
    public $timestamps = false;//模型不需要更新/新增时间
    protected $table = 'user_media';
    protected $primaryKey = 'user_id';
    public $incrementing = false;
    protected $fillable = [
        'user_id','medias', 'wait_account', 'finish_account'
    ];

}
