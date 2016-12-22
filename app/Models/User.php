<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;


class User extends Authenticatable{
    use Notifiable;
    /*
    |--------------------------------------------------------------------------
    | User Model
    | @author xingyonghe
    | @date 2016-11-17
    |--------------------------------------------------------------------------
    |
    | 用户基础模型
    |
    */

    const STATUS = [
        'delete' => -1,//删除
        'locked' => 0, //锁定
        'normal' => 1, //正常
        'verify' => 2, //待审核
        'feiled' => 3  //审核未通过
    ];
    const AUTHEN = [
        'pass'  => 1, //通过认证
        'feild' => 0  //未通过认证
    ];
    const USER_TYPE_NETRED = 1;//网红用户分类
    const USER_TYPE_ADS = 2;//广告主用户分类
    const AUTHEN_PASS = 1;//通过认证
    const AUTHEN_FEILED = 0;//未通过认证
    const STATUS_DELETE = -1;//删除
    const STATUS_LOCKED = 0;//锁定
    const STATUS_NORMAL = 1;//正常
    const STATUS_VERIFY = 2;//待审核
    const STATUS_FEILED = 3;//审核未通过


    public $timestamps = false;//模型不需要更新/新增时间
    protected $table = 'user';
    protected $fillable = [
        'username','nickname','qq','weixin','email','password','type','custom_id','custom_name', 'is_auth','status','reg_time','reg_ip'
    ];
    protected $guarded = [
        'id', 'freeze', 'balance','login_time','login_ip'
    ];
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * 后台用户列表
     * @return mixed
     */
    protected function getAdminLists($map,$type=1){
        if($type == 1){
            $list = $this->where($map)
                ->whereIn('status',['0','1'])
                ->leftJoin('user_personal', 'user.id', '=', 'user_personal.user_id')
                ->orderBy('reg_time','desc')
                ->paginate(10);
        }else{
            $list = $this->where($map)
                ->whereIn('status',['0','1'])
                ->leftJoin('user_ads', 'user.id', '=', 'user_ads.user_id')
                ->orderBy('reg_time','desc')
                ->paginate(10);
        }

        int_to_string($list,array(
            'status' => array(
                0=>'<span class="label label-info">锁定</span>',
                1=>'<span class="label label-success">正常</span>',
            ),
        ));
        return $list;
    }

    /**
     * 更新/新增数据
     * @param $request
     * @return bool
     */
    protected function updateData($request){
        $this->fill($request->all());
        if(empty($request->id)){
            //新增
            $this->password = bcrypt($request->password);
            $this->is_auth = 0;//手机账户未认证
            $this->status = 1;//后台添加的账户不用审核
            $this->reg_time = date('Y-m-d H:i:s');
            $this->reg_ip = $request->ip();
            if($this->type ==1){
                DB::beginTransaction();
                if($this->save() && UserPersonal::create(array('user_id'=>$this->id))){
                    $resualt = true;
                    DB::commit();//如果处理成功,通过 commit 的方法提交事务
                }else{
                    $resualt = false;
                    DB::rollback();//如果处理失败,通过 rollback 的方法回滚事务
                }
            }else{
                DB::beginTransaction();
                if($this->save() && UserAdvertiser::create(array('user_id'=>$this->id,'company'=>$request->company))){
                    $resualt = true;
                    DB::commit();//如果处理成功,通过 commit 的方法提交事务
                }else{
                    $resualt = false;
                    DB::rollback();//如果处理失败,通过 rollback 的方法回滚事务
                }
            }


        }else{
            //编辑
            $info = $this->findOrFail($request->id);
            if($info->type ==1){
                $resualt = $info->update(Input::get());
            }else{
                $_info = UserAdvertiser::where(array(['user_id',$request->id]))->first();
                $_info->company = $request->company;
                DB::beginTransaction();
                if($info->update(Input::get()) && $_info->save()){
                    $resualt = true;
                    DB::commit();//如果处理成功,通过 commit 的方法提交事务
                }else{
                    $resualt = false;
                    DB::rollback();//如果处理失败,通过 rollback 的方法回滚事务
                }
            }
        }
        if($resualt === false){
            return false;
        }
        return $request;
    }

    protected function register($request){
        $data = $request->except('_token');
        //随机分配客服信息
        $admin = D('SysAdmin')->where(array(['id','>',1],['status','=',1]))->inRandomOrder()->first();
        $data['custom_id']   = $admin['id'];
        $data['custom_name'] = $admin['nickname'];
        $data['password']    = bcrypt($data['password']);
        $data['is_auth']     = self::AUTHEN['pass'];
        if(C('WEB_REGISTER_VERIFY')){
            $data['status']  = self::STATUS['verify'];
        }else{
            $data['status']  = self::STATUS['normal'];
        }
        $data['reg_time']    = \Carbon\Carbon::now();
        $data['reg_ip']      = $request->ip();
        $user = $this->create($data);
        if($user->exists){
            return true;
        }else{
            return false;
        }
    }



































}
