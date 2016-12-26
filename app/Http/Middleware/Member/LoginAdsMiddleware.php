<?php

namespace App\Http\Middleware\Member;

use Closure;

class LoginAdsMiddleware{
    /*
    |--------------------------------------------------------------------------
    | LoginAds Middleware
    | @author xingyonghe
    | @date 2016-11-23
    |--------------------------------------------------------------------------
    |
    | 广告主会员中心用户权限中间件
    |
    */


    public function handle($request, Closure $next){
//        http://www.bohan.com/member/account/notify
        //获取当前路由
        $current = $request->route()->getName();
        //是否登陆
        if (auth()->guard()->check()) {
            if(auth()->user()->type == 1){
                //广告主没有权限访问
                return redirect(route('netred.index.index'));
            }
            $topnav = config('membersidebar.ads');
            view()->share('topnav',$topnav);//share()，分享数据给所有视图，参数一代表键，参数二代表值
            return $next($request);
        }
        //没有登陆前往登陆界面
        return redirect(route('ads.login.form'));
    }
}
