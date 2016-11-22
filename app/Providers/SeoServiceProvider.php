<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Libraries\Seo\SEO;

class SeoServiceProvider extends ServiceProvider{
    /*
    |--------------------------------------------------------------------------
    | Seo ServiceProvider
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | Seo服务提供者,使用singleton方法，实现单例访问
    |
    */
    public function boot(){
        //
    }

    public function register(){
        $this->app->singleton('seo', function () {
            return new SEO();
        });

    }
}
