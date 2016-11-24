<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserAdsTask extends Model{
    /*
    |--------------------------------------------------------------------------
    | UserAdsTask Model
    | @author xingyonghe
    | @date 2016-11-24
    |--------------------------------------------------------------------------
    |
    | 广告主发布任务模型
    |
    */

    const STATUS_D = -1;
    const STATUS_1 = 1;
    const STATUS_2 = 2;
    const STATUS_3 = 3;
    const STATUS_4 = 4;
    const STATUS_TEXT = [
        self::STATUS_D => '删除',
        self::STATUS_1 => '正常',
        self::STATUS_2 => '等待审核',
        self::STATUS_3 => '审核未通过',
        self::STATUS_4 => '已过期',
    ];
    protected $table = 'user_ads_task';
    protected $fillable = [
        'userid','title', 'money', 'num','start_time','end_time', 'dead_time', 'name','mobile','company', 'email', 'shape', 'demand', 'status'
    ];
    protected $dates = ['start_time','end_time','dead_time'];
}
