<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Libraries\MobileSms\SMS;

class SmsServiceProvider extends ServiceProvider{
    /*
    |--------------------------------------------------------------------------
    | Seo ServiceProvider
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | 短信服务提供者,使用singleton方法，实现单例访问
    |
    */
    public function boot(){
        //
    }

    public function register(){
        $this->app->singleton('sms', function () {
            return new SMS();
        });

    }
}
