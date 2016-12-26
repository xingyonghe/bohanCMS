<?php

namespace App\Http\Middleware\Member;

use Closure;

class LoginNetredMiddleware{
    /*
    |--------------------------------------------------------------------------
    | LoginNetred Middleware
    | @author xingyonghe
    | @date 2016-11-23
    |--------------------------------------------------------------------------
    |
    | 网红会员中心用户权限中间件
    |
    */


    public function handle($request, Closure $next){
        //获取当前路由
        $current = $request->route()->getName();
        //是否登陆
        if (auth()->guard()->check()) {
            if(auth()->user()->type == 2){
                //网红没有权限访问
                return redirect(route('ads.index.index'));
            }
            $topnav = config('membersidebar.netred');
            view()->share('topnav',$topnav);//share()，分享数据给所有视图，参数一代表键，参数二代表值
            return $next($request);
        }
        //没有登陆前往登陆界面
        return redirect(route('netred.login.form'));
    }
}
