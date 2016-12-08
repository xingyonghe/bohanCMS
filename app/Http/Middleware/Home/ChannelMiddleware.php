<?php

namespace App\Http\Middleware\Home;

use Closure;

class ChannelMiddleware{
    /*
    |--------------------------------------------------------------------------
    | Channel Middleware
    | @author xingyonghe
    | @date 2016-11-14
    |--------------------------------------------------------------------------
    |
    | 网站导航中间件
    |
    */


    public function handle($request, Closure $next){
        view()->share('channels',$this->getChannel());//share()，分享数据给所有视图，参数一代表键，参数二代表值
        return $next($request);
    }

    /**
     * 返回网站导航，存入缓存
     * @return array
     */
    public function getChannel(){
        cache()->forget('CHANNEL_LIST');//更新导航缓存
        $channel = cache()->get('CHANNEL_LIST');
        if(empty($channel)){
            $channel = D('SysChannel')->where('status',1)->orderBy('sort','asc')->get(['id','title', 'remark','url','sort','status','target'])->toArray();
            cache()->forever('CHANNEL_LIST',$channel);
        }
        return $channel;
    }
}
