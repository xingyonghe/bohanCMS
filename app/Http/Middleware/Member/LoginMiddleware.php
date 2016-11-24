<?php

namespace App\Http\Middleware\Member;

use Closure;

class LoginMiddleware{
    /*
    |--------------------------------------------------------------------------
    | Login Middleware
    | @author xingyonghe
    | @date 2016-11-23
    |--------------------------------------------------------------------------
    |
    | 会员中心用户权限中间件
    |
    */


    public function handle($request, Closure $next){
//        http://www.bohan.com/member/account/notify
        //获取当前路由
        $current = $request->route()->getName();
        //定义不需要登陆也能访问的路由，主要用于支付回调
        $accept = [
            'member.account.notify',
        ];
        if(in_array($current,$accept)){
            return $next($request);
        }
        //是否登陆
        if (auth()->guard()->check()) {
            //在登陆之后执行动作,把会员中心顶部菜单分享
            if(auth()->user()->type == 2){
                $topnav = config('membersidebar.ads');
            }else{
                $topnav = config('membersidebar.media');
            }
            view()->share('topnav',$topnav);//share()，分享数据给所有视图，参数一代表键，参数二代表值
            return $next($request);
        }
        //没有登陆前往登陆界面
        return redirect(route('home.login.form'));
    }
}
