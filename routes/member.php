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
Route::group(['namespace'=>'Member','middleware'=> ['login']],function(){
    /**--**--**--**--**--**--**--**--**--**自媒体**--**--**--**--**--**--**--**--**--**--**/
    Route::group(['namespace'=>'Media'],function(){
        //订单管理
        Route::get('order/index',        'NetredOrderController@index')->name('netred.order.index');//订单列表netred.dispatch.index
        //派单大厅
        Route::get('dispatch/index',     'DispatchController@index')->name('netred.dispatch.index');//活动列表

        //资源管理
        Route::get('star/index',        'StarController@index')->name('netred.star.index');//网红列表
        Route::get('star/create',       'StarController@create')->name('netred.star.create');//网红新增
        Route::get('star/edit/{id}',    'StarController@edit')->name('netred.star.edit')->where('id','\d+');//网红编辑
        Route::post('star/update',      'StarController@update')->name('netred.star.update');//网红更新
        Route::get ('star/destroy/{id}','StarController@destroy')->name('netred.star.destroy')->where('id','\d+');      //网红删除


    });

    /**--**--**--**--**--**--**--**--**--**广告主**--**--**--**--**--**--**--**--**--**--**/
    Route::group(['namespace'=>'Ads'],function(){
        //派单管理
        Route::get('task/index',        'TaskController@index')->name('member.task.index');//任务列表
        Route::get('task/create',       'TaskController@create')->name('member.task.create');//任务新增
        Route::get('task/edit/{id}',    'TaskController@edit')->name('member.task.edit')->where('id','\d+');//任务编辑
        Route::post('task/update',      'TaskController@update')->name('member.task.update');//任务更新
        Route::get ('task/destroy/{id}','TaskController@destroy')->name('member.task.destroy')->where('id','\d+');//任务删除
    });

    /**--**--**--**--**--**--**--**--**--**基本资料部分**--**--**--**--**--**--**--**--**--**--**/
    Route::group(['namespace'=>'Basic'],function(){
        //个人中心
        Route::get('',               'IndexController@index')->name('member.index.index');//基本资料
        Route::get('index/edit',     'IndexController@edit')->name('member.index.edit');//修改基本资料
        Route::post('index/update',  'IndexController@update')->name('member.index.update');//更新基本资料
        Route::get('index/password', 'IndexController@password')->name('member.index.password');//修改密码
        Route::post('index/reset',   'IndexController@reset')->name('member.index.reset');//更新密码

        //账户管理
        Route::get('account/index',         'AccountController@index')->name('member.account.index');//我的账户
        Route::get('account/records',       'AccountController@records')->name('member.account.records');//收支记录
        Route::get('account/notes',         'AccountController@notes')->name('member.account.notes');//提现记录
        Route::get('account/recharge',      'AccountController@recharge')->name('member.account.recharge');//充值界面
        Route::post('account/recharge',     'AccountController@recharge')->name('member.account.charging');//充值
        Route::get('account/pay/{order_id}','AccountController@pay')->name('member.account.pay');//充值
        Route::get('account/return',        'AccountController@return')->name('member.account.return');//充值同步地址
        Route::post('account/notify',       'AccountController@notify')->name('member.account.notify');//充值异步地址
        Route::get('account/cash',          'AccountController@cash')->name('member.account.cash');//提现界面
        Route::post('account/post',         'AccountController@post')->name('member.account.post');//提现

        //图片上传
        Route::post('upload', 'PictrueController@upload')->name('home.pictrue.upload');
        //头像上传
        Route::post('avatar', 'PictrueController@avatar')->name('home.pictrue.avatar');
        //文件上传
        Route::post('upload', 'FileController@upload')->name('home.file.upload');
    });
});

