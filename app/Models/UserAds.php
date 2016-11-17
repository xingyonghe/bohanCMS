<?php

namespace App\Models;

class UserAds extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | SysAdmin Model
    | @author xingyonghe
    | @date 2016-11-17
    |--------------------------------------------------------------------------
    |
    | 广告主用户扩展模型
    |
    */
    public $timestamps = false;//模型不需要更新/新增时间
    protected $table = 'user_ads';
    protected $primaryKey = 'user_id';
    public $incrementing = false;
    protected $fillable = [
        'user_id','wait_account','finish_account'
    ];
    
}
