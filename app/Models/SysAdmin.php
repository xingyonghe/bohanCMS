<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class SysAdmin extends Authenticatable{
    use Notifiable;
    /*
    |--------------------------------------------------------------------------
    | SysAdmin Model
    | @author xingyonghe
    | @date 2016-11-15
    |--------------------------------------------------------------------------
    |
    | 系统管理员模型
    |
    */
    const STATUS_DELETE = -1;//删除状态
    const STATUS_LOCK   = 0;//禁用状态
    const STATUS_NORMAL = 1; //正常状态
    //状态含义
    const STATUS_TEXT   = array(
      self::STATUS_DELETE =>'<span class="label label-danger">删除</span>',
      self::STATUS_LOCK   =>'<span class="label label-info">禁用</span>',
      self::STATUS_NORMAL =>'<span class="label label-success">正常</span>'
    );
    const TYPE_SYS = 1;//系统管理员
    const TYPE_RED = 2;//网红管理员
    const TYPE_ADS = 3;//广告主管理员
    const TYPE_TEXT = [
        self::TYPE_SYS   =>'系统管理员',
        self::TYPE_RED   =>'网红管理员',
        self::TYPE_ADS   =>'广告主管理员'
    ];

    public $timestamps = false;//模型不需要更新/新增时间
    protected $table = 'sys_admin';
    protected $fillable = [
        'username', 'password','reg_time','login_time','login_ip','role_id','nickname','status','type','qq'
    ];
    protected $hidden = [
        'password', 'remember_token',
    ];
    protected $dates = ['login_time','reg_time'];
    protected $error   = '';
    
    /**
     * 更新/新增管理员信息
     * @author xingyonghe
     * @date 2016-11-16
     * @param $data 表单数据
     * @return bool
     */
    public function updateData($data){
        if(empty($data['id'])){
            //新增
            $data['password'] = bcrypt($data['password']);
            $data['reg_time'] = Carbon::now();
            $data['login_time'] = Carbon::now();
            $resualt = $this->create($data);
            if($resualt === false){
                $this->error = '新增管理员信息失败';
                return false;
            }
        }else{
            //编辑
            $info = $this->find($data['id']);
            if(empty($info) || $info->update($data)===false){
                $this->error = '修改管理员信息失败';
                return false;
            }
        }
        return $data;
    }


    /**
     * 重置密码
     */
    protected function resetPassword($request){
        $resualt = $this->where(array(['username','=',$request->username]))->update(array('password'=>bcrypt($request->password)));
        if($resualt === false){
            return false;
        }
        return $request;
    }

    /**
     * 获取客服
     * @return mixed
     */
    protected function getCustom(){
        $lists = $this->where(array(['id','>',1]))->pluck('nickname', 'id')->toArray();
        return $lists;
    }

}
