<?php

namespace App\Http\Middleware\Admin;

use Closure;
use Illuminate\Support\Facades\Auth;

class LoginAdminMiddleware{
    /*
    |--------------------------------------------------------------------------
    | LoginAdmin Middleware
    | @author xingyonghe
    | @date 2016-11-16
    |--------------------------------------------------------------------------
    |
    | 后台登陆中间件
    |
    */
    public function handle($request, Closure $next, $guard = 'admin'){
        //是否登陆
        if (Auth::guard($guard)->check()) {
            //登录成功
            return redirect(route('admin.index.index'));
        }
        //没有登陆前往登陆界面
        return $next($request);
    }
}
