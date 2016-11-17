<?php

namespace App\Models;

class SysAuthGroup extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | SysAuthGroup Model
    | @author xingyonghe
    | @date 2016-11-16
    |--------------------------------------------------------------------------
    |
    | 管理员权限分组模型
    |
    */

    //禁用状态
    const STATUS_LOCK   = 0;
    //正常状态
    const STATUS_NORMAL = 1;
    //状态含义
    const STATUS_TEXT   = array(
        self::STATUS_LOCK   =>'<span class="label label-info">禁用</span>',
        self::STATUS_NORMAL =>'<span class="label label-success">正常</span>'
    );
    protected $table = 'sys_auth_group';
    public $timestamps = false;
    protected $fillable = [
        'title', 'description', 'status', 'rules'
    ];
    protected $casts = [
        'rules' => 'array',
    ];

    /**
     * 获取所有用户组,不含超级管理员
     * @author: xingyonghe
     * @date: 2016-11-16
     */
    public function getGroup(){
        $groups = cache()->get('GROUP_LIST');
        if(empty($groups)){
            $groups = $this->where('status',1)->where('id','>',1)->get()->pluck('title', 'id');
            cache()->forever('GROUP_LIST',$groups);//永久保存
        }
        return $groups;
    }






}
