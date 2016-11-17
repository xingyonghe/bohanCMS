<?php
/*
|--------------------------------------------------------------------------
| web route
| @author xingyonghe
| @date 2016-11-17
|--------------------------------------------------------------------------
|
| 前台路由
|
*/
Route::group(['namespace'=>'Home'],function(){
    /**--**--**--**--**--**--**--**--**--**网站首页**--**--**--**--**--**--**--**--**--**--**/
    Route::group(['namespace'=>'Index'],function(){
        //入口
        Route::get('', 'IndexController@index')->name('home.index.index');
        //图片上传
        Route::post('upload', 'PictrueController@upload')->name('home.pictrue.upload');
        //头像上传
        Route::post('avatar', 'PictrueController@avatar')->name('home.pictrue.avatar');
        //文件上传
        Route::post('upload', 'FileController@upload')->name('home.file.upload');
    });

    /**--**--**--**--**--**--**--**--**--**用户认证**--**--**--**--**--**--**--**--**--**--**/
    Route::group(['namespace'=>'Auth'],function(){
        //登录页面
        Route::get('login', 'LoginController@showLoginForm')->name('home.login.form');
        //登录
        Route::post('login/post', 'LoginController@login')->name('home.login.post');
        //退出登录
        Route::get('logout', 'LoginController@logout')->name('home.login.logout');
        //注册页面
        Route::get('register', 'RegisterController@showRegistrationForm')->name('home.register.form');
        //注册
        Route::post('register/post', 'RegisterController@register')->name('home.register.post');
        //手机短信发送
        Route::post('register/send', 'RegisterController@sendSMS')->name('home.register.send');
        //手机短信验证
        Route::post('register/verify', 'RegisterController@verifySMS')->name('home.register.verify');
        //忘记密码
        Route::get('password', 'RegisterController@aaaa')->name('home.password.reset');
    });


//    Route::group(['prefix'=>'home'],function(){
//
//    });
});