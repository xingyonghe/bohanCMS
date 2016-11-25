<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Libraries\File\Upload;

class UploadServiceProvider extends ServiceProvider{
    /*
    |--------------------------------------------------------------------------
    | Upload ServiceProvider
    | @author xingyonghe
    | @date 2016-11-25
    |--------------------------------------------------------------------------
    |
    | 短信服务提供者,使用singleton方法，实现单例访问
    |
    */
    public function boot(){
        //
    }

    public function register(){
        $this->app->singleton('upload', function () {
            return new Upload();
        });

    }
}
