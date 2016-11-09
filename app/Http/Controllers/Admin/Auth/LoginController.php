<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Admin\CommonController;
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

    protected $redirectTo = '/home';

    public function __construct(){
        $this->middleware('guest', ['except' => 'logout']);
    }

    /**
     * 登陆界面
     * @author xingyonghe
     * @date 2016-11-9
     */
    public function showLoginForm(){
        return view('admin.auth.login');
    }

//    public function login(Request $request){
//        //字段验证
//        $rules = [
//            'username' => 'required',
//            'password' => 'required',
//        ];
//        $msgs = [
//            'username.required' => '请填写管理员账号',
//            'password.required' => '请填写密码',
//        ];
//        $this->validate($request, $rules, $msgs);
//
//        //从请求中获取所需的授权凭据。
//        $credentials = $request->only('username', 'password');
//
//        if ($this->guard()->attempt($credentials, $request->has('remember'))) {
//            return $this->sendLoginResponse($request);
//        }
//
//        return $this->sendFailedLoginResponse($request);
//    }
//
//    /**
//     * 执行登陆成功
//     * @param Request $request
//     * @return \Illuminate\Http\RedirectResponse
//     */
//    protected function sendLoginResponse(Request $request){
//        $request->session()->regenerate();
//
//        $this->clearLoginAttempts($request);
//
//        return $this->authenticated($request, $this->guard()->user())
//            ?: redirect()->intended($this->redirectPath());
//    }
//
//    /**
//     * 登陆失败
//     * @param Request $request
//     * @return $this
//     */
//    protected function sendFailedLoginResponse(Request $request){
//        return redirect()
//            ->back()
//            ->withInput($request->only('username', 'remember'))
//            ->withErrors(['username' => '账户不存在或密码输入错误',]);
//    }
//
//    /**
//     * 退出登录
//     * @param Request $request
//     * @return mixed
//     */
//    public function logout(Request $request){
//        $admin = Auth::guard('admin')->user();
//        $user = $admin->toArray();
//        $user['login_time'] = date('Y-m-d H:i:s');
//        $user['login_ip'] = $request->ip();
//        $admin->update($user);
//        $this->guard()->logout();
//        $request->session()->flush();
//        $request->session()->regenerate();
//        return redirect('admin');
//    }
//
//    /**
//     * 调用模型
//     */
//    protected function guard(){
//        return Auth::guard('admin');
//    }









}
