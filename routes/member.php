<?php

/*
|--------------------------------------------------------------------------
| member route
| @author xingyonghe
| @date 2016-11-22
|--------------------------------------------------------------------------
|
| 会员中心路由
|
*/
Route::group(['namespace'=>'Member'],function(){
    /**--**--**--**--**--**--**--**--**--**广告主**--**--**--**--**--**--**--**--**--**--**/
    Route::group(['namespace'=>'Ads'],function(){
        Route::get('star/index', 'StarController@index')->name('user.star.index');//网红列表
        Route::get('star/add', 'StarController@add')->name('user.star.add');//网红新增
        Route::get('star/edit/{id}', 'StarController@edit')->name('user.star.edit')->where('id','\d+');//网红编辑
        Route::post('star/update', 'StarController@update')->name('user.star.update');//网红更新
        Route::get ('star/destroy/{id}','StarController@destroy')->name('user.star.destroy')->where('id','\d+');      //网红删除


        Route::post('picture/upload', 'PictureController@upload');          //图片上传
    });

    /**--**--**--**--**--**--**--**--**--**自媒体**--**--**--**--**--**--**--**--**--**--**/
    Route::group(['namespace'=>'Media'],function(){
//        Route::get('index/index', 'IndexController@index')->name('advert.index.index');//基本资料
//        Route::get('index/edit', 'IndexController@edit')->name('advert.index.edit');//修改基本资料
//        Route::post('index/update', 'IndexController@update')->name('advert.index.update');//更新基本资料
//        Route::get('index/password', 'IndexController@password')->name('advert.index.password');//修改密码
//        Route::post('index/reset', 'IndexController@reset')->name('advert.index.reset');//更新密码['namespace'=>'Basic'],
    });

    /**--**--**--**--**--**--**--**--**--**基本资料部分**--**--**--**--**--**--**--**--**--**--**/
    Route::group(['namespace'=>'Basic'],function(){
        Route::get('/',              'IndexController@index')->name('member.index.index');//基本资料
        Route::get('index/edit',     'IndexController@edit')->name('member.index.edit');//修改基本资料
        Route::post('index/update',  'IndexController@update')->name('member.index.update');//更新基本资料
        Route::get('index/password', 'IndexController@password')->name('member.index.password');//修改密码
        Route::post('index/reset',   'IndexController@reset')->name('member.index.reset');//更新密码

        //图片上传
        Route::post('upload', 'PictrueController@upload')->name('home.pictrue.upload');
        //头像上传
        Route::post('avatar', 'PictrueController@avatar')->name('home.pictrue.avatar');
        //文件上传
        Route::post('upload', 'FileController@upload')->name('home.file.upload');
    });
});

