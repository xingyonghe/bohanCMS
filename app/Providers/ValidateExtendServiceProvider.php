<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Validator;

class ValidateExtendServiceProvider extends ServiceProvider{
    /*
    |--------------------------------------------------------------------------
    | ValidateExtend ServiceProvider
    | @author xingyonghe
    | @date 2016-11-17
    |--------------------------------------------------------------------------
    |
    | 验证扩展服务提供者
    |
    */
    public function boot(){
        //金额
        Validator::extend('money',function ($attribute,$value,$parameters){
            return preg_match('/^\d+(\.\d+)?$/',$value);
        });
        //手机
        Validator::extend('mobile',function ($attribute,$value,$parameters){
            return preg_match('/^1[34578]{1}\d{9}$/',$value);
        });
        //正整数
        Validator::extend('positive',function ($attribute,$value,$parameters){
            return preg_match('/^\+?[1-9]\d*$/',$value);
        });
            //正整数
        Validator::extend('positive_integer',function ($attribute,$value,$parameters){
            return preg_match('/^\+?[1-9]\d*$/',$value);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register(){
        //
    }
}
