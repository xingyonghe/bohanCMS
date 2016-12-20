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

Route::group(['namespace'=>'Api'],function(){
    //手机短信发送
    Route::post('sendsms',    'SmsApiController@sendSMS')->name('api.sendsms');
    //手机短信验证
    Route::post('verifysms',  'SmsApiController@verifySMS')->name('api.verifysms');
    //文件上传
    Route::post('file',       'UploadApiController@file')->name('api.file');
    //图片上传
    Route::post('picture',    'UploadApiController@picture')->name('api.picture');
});

