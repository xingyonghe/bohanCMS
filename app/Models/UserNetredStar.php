<?php

namespace App\Models;

class UserNetredStar extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | UserAccount Model
    | @author xingyonghe
    | @date 2016-12-23
    |--------------------------------------------------------------------------
    |
    | 网红资源模型
    |
    */
    const STATUS_DELETE = -1;//删除
    const STATUS_NORMAL = 1;//正常
    const STATUS_VERIFY = 2;//待审核
    const STATUS_FEILED = 3;//审核未通过
    const STATUS_TEXT = [
        self::STATUS_DELETE => '<span class="label label-danger">删除</span>',
        self::STATUS_NORMAL => '<span class="label label-success">正常</span>',
        self::STATUS_VERIFY => '待审核',
        self::STATUS_FEILED => '审核未通过',
    ];

    protected $table = 'user_netred_star';
    protected $fillable = [
        'userid','status','avatar','stage_name','sex','province','city','district',
        'area','type','fans','platform','platform_id','average_num','max_num','style',
        'ad_type','form_price','note','advantage','introduce'
    ];

}
