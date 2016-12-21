<?php

namespace App\Http\Controllers\Member\Basic;

use App\Http\Controllers\Member\CommonController;
use SEO;

class IndexController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Index Controller
    | @author xingyonghe
    | @date 2016-11-23
    |--------------------------------------------------------------------------
    |
    | 会员中心基本信息
    |
    */
    protected $navkey = 'home';//菜单标识
    public function __construct(){
        view()->share('navkey',$this->navkey);//用于设置头部菜单高亮
    }

    /**
     * 基本资料页
     * @author: xingyonghe
     * @date: 2016-11-23
     * @return mixed
     */
    public function index(){
        $user = auth()->user();
        SEO::setTitle(C('WEB_SITE_TITLE').'-会员中心-基本信息');
        return view('member.index.index',compact('user'));
    }

    /**
     * 修改基本资料
     * @author: xingyonghe
     * @date: 2016-11-23
     * @return mixed
     */
    public function edit(){
        if(auth()->user()->type ==1){
            $user = D('User')->with('media')->find(auth()->id());
        }else{
            $user = D('User')->with('advertiser')->find(auth()->id());
        }
        SEO::setTitle(C('WEB_SITE_TITLE').'-会员中心-修改资料');
        return view('member.index.edit',compact('user'));
    }

    /**
     * 更新基本资料
     * @author: xingyonghe
     * @date: 2016-11-23
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(){
        if(auth()->user()->type ==1){
            $rules = [
                'nickname' => 'required',
                'qq'  => 'required',
            ];
            $msgs = [
                'nickname.required' => '请填写联系人姓名',
                'qq.required'    => '请填写QQ账号',
            ];
        }else{
            $rules = [
                'nickname' => 'required',
                'company'  => 'required',
            ];
            $msgs = [
                'nickname.required' => '请填写联系人姓名',
                'company.required'    => '请填写公司名称',
            ];
        }
        $validator = validator()->make(request()->all(),$rules,$msgs);
        if ($validator->fails()) {
            return $this->ajaxValidator($validator);
        }
        $reault = auth()->user()->update(request()->all());
        if($reault){
            return $this->ajaxReturn('信息更新成功',1,route('member.index.index'));
        }else{
            return $this->ajaxReturn('信息更新失败',0);
        }
    }

    /**
     * 修改密码
     * @author: xingyonghe
     * @date: 2016-11-23
     * @return mixed
     */
    public function password(){
        SEO::setTitle(C('WEB_SITE_TITLE').'-会员中心-密码修改');
        return view('member.index.password');
    }

    /**
     * 更新密码
     * @author: xingyonghe
     * @date: 2016-11-23
     * @return \Illuminate\Http\JsonResponse
     */
    public function reset(){
        $data = request()->all();
        if($data['password-old']){
            if((\Hash::check($data['password-old'], auth()->user()->password)) === false){

            }
        }
        if($data['password-old'] && ($data['password-old'] == $data['password'])){
            return response()->json(array('status'=>0,'info'=>'新密码合旧密码一致','id'=>'password'));
        }
        $rules = [
            'password-old' => 'required',
            'password'  => 'required|min:6|confirmed',
        ];
        $msgs = [
            'password-old.required' => '请输入旧密码',
            'password.required' => '请输入新密码',
            'password.min'      => '密码最少6位',
            'password.confirmed'=> '确认密码不一致',
        ];
        $validator = validator()->make($data,$rules,$msgs);
        if ($validator->fails()) {
            return $this->ajaxValidator($validator);
        }
        $reault = auth()->user()->update(array('password'=>bcrypt($data['password'])));
        if($reault){
            return $this->ajaxReturn('修改密码成功',1,route('member.index.index'));
        }else{
            return $this->ajaxReturn('修改密码失败',0);
        }
    }





}
