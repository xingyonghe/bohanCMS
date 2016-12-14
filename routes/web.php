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
Route::group(['namespace'=>'Home','middleware'=>['channel']],function(){
    /**--**--**--**--**--**--**--**--**--**用户认证**--**--**--**--**--**--**--**--**--**--**/
    //网红登录页面
    Route::get('login/rednet', 'LoginController@showRednetForm')->name('home.login.rednet');
    //广告主登录页面
    Route::get('login/ads', 'LoginController@showAdsForm')->name('home.login.ads');
    //登录
    Route::post('login/post', 'LoginController@login')->name('home.login.post');
    //退出登录
    Route::get('logout', 'LoginController@logout')->name('home.login.logout');
    //网红注册页面
    Route::get('register/rednet', 'RegisterController@showRednetForm')->name('home.register.rednet');
    //广告主注册页面
    Route::get('register/ads', 'RegisterController@showAdsForm')->name('home.register.ads');
    //注册
    Route::post('register/post', 'RegisterController@register')->name('home.register.post');
    //忘记密码
    Route::get('password', 'RegisterController@aaaa')->name('home.password.reset');

    /**--**--**--**--**--**--**--**--**--**网站首页**--**--**--**--**--**--**--**--**--**--**/
    Route::get('', 'IndexController@index')->name('home.index.index');//首页
    //图片上传
    Route::post('upload', 'PictrueController@upload')->name('home.pictrue.upload');
    //头像上传
    Route::post('avatar', 'PictrueController@avatar')->name('home.pictrue.avatar');
    //文件上传
    Route::post('upload', 'FileController@upload')->name('home.file.upload');

    /**--**--**--**--**--**--**--**--**--**网红推荐**--**--**--**--**--**--**--**--**--**--**/
    Route::get('rednet/index',       'RednetController@index')->name('home.rednet.index');
    Route::get('rednet/show/{id}',   'RednetController@show')->name('home.rednet.show')->where('id','\d+');

    /**--**--**--**--**--**--**--**--**--**客户案例**--**--**--**--**--**--**--**--**--**--**/
    Route::get('case/index',         'CaseController@index')->name('home.case.index');

    /**--**--**--**--**--**--**--**--**--**广告主**--**--**--**--**--**--**--**--**--**--**/
    Route::get('ads/index',          'AdvertiserController@index')->name('home.ads.index');

    /**--**--**--**--**--**--**--**--**--**网红入驻**--**--**--**--**--**--**--**--**--**--**/
    Route::get('enter/index',        'RednetEnterController@index')->name('home.enter.index');
    //关于我们
    Route::get('about/index',        'AboutController@index')->name('home.about.index');
    //demo
    Route::get('demo/file',         'DemoController@file')->name('home.demo.file');
    Route::get('demo/picture',      'DemoController@picture')->name('home.demo.picture');
    Route::get('demo/avatar',       'DemoController@avatar')->name('home.demo.avatar');
});