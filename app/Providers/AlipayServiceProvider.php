<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Libraries\Payment\Alipay;

class AlipayServiceProvider extends ServiceProvider{
    /*
    |--------------------------------------------------------------------------
    | Alipay ServiceProvider
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | 支付宝服务提供者,使用singleton方法，实现单例访问
    |
    */
    public function boot(){
        //
    }

    public function register(){
        $this->app->singleton('alipay', function () {
            return new Alipay();
        });

    }
}
