<?php

/*
|--------------------------------------------------------------------------
| api route
| @author xingyonghe
| @date 2016-12-9
|--------------------------------------------------------------------------
|
| api路由
|
*/
//验证码生成路由
Route::post('captcha', function(){
    return captcha_src();
})->name('api.captcha');
//手机短信发送
Route::post('sendsms', 'Api\SmsApiController@sendSMS')->name('api.sendsms');
//手机短信验证
Route::post('verifysms', 'Api\SmsApiController@verifySMS')->name('api.verifysms');