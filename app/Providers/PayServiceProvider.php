<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Libraries\Pay\SMS;

class PayServiceProvider extends ServiceProvider{
    /*
    |--------------------------------------------------------------------------
    | Pay ServiceProvider
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | 支付服务提供者,使用singleton方法，实现单例访问
    |
    */
    public function boot(){
        //
    }

    public function register(){
        $this->app->singleton('pay', function () {
            return new PAY();
        });

    }
}
