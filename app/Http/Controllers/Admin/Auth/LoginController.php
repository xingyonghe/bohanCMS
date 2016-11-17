<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Admin\CommonController;
use App\Http\Requests\Admin\LoginRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends CommonController{
    use AuthenticatesUsers;
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    | @author xingyonghe
    | @date 2016-11-9
    |--------------------------------------------------------------------------
    |
    | 后台登陆控制器
    |
    */

    public function __construct(){
        $this->middleware('admin.login');
    }

    /**
     * 登陆界面
     * @author xingyonghe
     * @date 2016-11-16
     */
    public function showLoginForm(){
        return view('admin.auth.login');
    }

    /**
     * 管理员登陆
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param LoginRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(LoginRequest $request){
        //从请求中获取所需的授权凭据。
        $credentials = $request->only('username', 'password');
        if ($this->guard()->attempt($credentials, $request->has('remember'))) {
            $admin = $this->guard()->user();
            $user['login_time'] = date('Y-m-d H:i:s');
            $user['login_ip'] = request()->ip();
            $admin->update($user);
            $request->session()->regenerate();
            $this->clearLoginAttempts($request);
            return $this->ajaxReturn('登陆成功',1,route('admin.index.index'));
        }
        $this->incrementLoginAttempts($request);
        return $this->ajaxReturn('账户不存在或密码输入错误');
    }


    /**
     * 退出登录
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param Request $request
     * @return mixed
     */
    public function logout(){
        $this->guard()->logout();
        request()->session()->flush();
        request()->session()->regenerate();
        return redirect(route('admin.login.form'));
    }

    /**
     * 管理员模型
     * @author: xingyonghe
     * @date: 2016-11-16
     * @return mixed
     */
    protected function guard(){
        return Auth::guard('admin');
    }









}
