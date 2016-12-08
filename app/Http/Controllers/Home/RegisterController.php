<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Home\CommonController;
use SMS;

class RegisterController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    | @author xingyonghe
    | @date 2016-11-17
    |--------------------------------------------------------------------------
    |
    | 用户注册控制器
    |
    */
    public function __construct(){
        $this->middleware('guest');
    }

    /**
     * 注册页面
     * @author: xingyonghe
     * @date: 2016-11-17
     * @return mixed
     */
    public function showRegistrationForm(){
        $members = parse_config_attr(C('WEB_SITE_MEMBER'));
        if(empty(C('WEB_REGISTER_ALLOW'))){
            abort(404);
        }
        $resend = config('mobilesms.driver.zdtone.resend');
        return view('home.auth.register',compact('members','resend'));
    }

    /**
     * 用户注册
     * @author: xingyonghe
     * @date: 2016-11-17
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(){
        //数据验证
        $validator = $this->validator(request()->all());
        if ($validator->fails()) {
            return $this->ajaxValidator($validator);
        }
        //验证手机号码是否被验证
        $mobile = request()->get('username');
        $code   = request()->get('code');
        $info = D('MobileSms')
            ->where('mobile',$mobile)
            ->where('code',$code)
            ->where('status',D('MobileSms')::STATUS_SUCCESS)
            ->where('category',D('MobileSms')::CATEGORY['register'])
            ->first();
        if(empty($info)){
            return response()->json(array('status'=>0,'info'=>'您的手机号还未验证','id'=>'username'));
        }
        $resault = D('User')->register(request());
        if($resault === false){
            return $this->ajaxReturn('注册失败');
        }else{
            return $this->ajaxReturn('恭喜您，注册成功',1,route('home.login.form'));
        }

    }
    /**
     * 表单验证
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data){
        if($data['type'] == 2){
            $rules = [
                'username' => 'required|mobile|unique:user',
                'password' => 'required|min:6|confirmed',
                'nickname' => 'required',
                'company'  => 'required',
                'protocol' => 'accepted'
            ];
            $msgs = [
                'username.required' => '请填写你要注册的手机号码',
                'username.mobile'   => '手机号格式错误',
                'username.unique'   => '手机号已经注册',
                'password.required' => '请输入密码',
                'password.min'      => '密码最少6位',
                'password.confirmed'=> '确认密码不一致',
                'nickname.required' => '请填写联系人姓名',
                'company.unique'    => '请填写公司名称',
                'protocol.accepted' => '您还没有阅读和同意注册协议',
            ];
        }else{
            $rules = [
                'username' => 'required|mobile|unique:user',
                'password' => 'required|min:6|confirmed',
                'nickname' => 'required',
                'qq'       => 'required',
                'protocol' => 'accepted'
            ];
            $msgs = [
                'username.required' => '请填写你要注册的手机号码',
                'username.mobile' => '手机号格式错误',
                'username.unique' => '手机号已经注册',
                'password.required' => '请输入密码',
                'password.min' => '密码最少6位',
                'password.confirmed' => '确认密码不一致',
                'nickname.required' => '请填写联系人姓名',
                'qq.required' => '请填写QQ号码',
                'protocol.accepted' => '您还没有阅读和同意注册协议',
            ];
        }
        return validator()->make($data,$rules,$msgs);
    }

    /**
     * 发送短信
     * @author: xingyonghe
     * @date: 2016-11-17
     */
    public function sendSMS(){
        $data = request()->only('mobile');
        //频繁验证
        if(SMS::frequent($data['mobile'],D('MobileSms')::CATEGORY['register'])){
            return $this->ajaxReturn('您的操作过快');
        }
        $resault = SMS::send($data['mobile'],D('MobileSms')::CATEGORY['register']);
        if($resault === false){
            return $this->ajaxReturn('发送失败');
        }
        return $this->ajaxReturn('发送成功',1);
    }

    /**
     * 短信验证
     * @author: xingyonghe
     * @date: 2016-11-17
     */
    public function verifySMS(){
        $data = request()->only('mobile','code');
        $resault = SMS::verify($data['mobile'],$data['code'],D('MobileSms')::CATEGORY['register']);
        if($resault === true){
            return $this->ajaxReturn('验证成功',1);

        }
        $errorCode = SMS::errorSMS();
        return $this->ajaxReturn($errorCode[$resault]);
    }

}
