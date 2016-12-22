<?php

/*
|--------------------------------------------------------------------------
| netred route
| @author xingyonghe
| @date 2016-11-22
|--------------------------------------------------------------------------
|
| 网红会员中心路由
|
*/
Route::group(['namespace'=>'Netred'],function(){

    Route::group(['middleware'=> ['login_netred']],function(){
        //首页
        Route::get('',               'IndexController@index')->name('netred.index.index');//网红中心首页

        //订单管理
        Route::get('order/index',        'OrderController@index')->name('netred.order.index');//订单列表netred.dispatch.index
        //派单大厅
        Route::get('dispatch/index',     'DispatchController@index')->name('netred.dispatch.index');//活动列表

        //资源管理
        Route::get('star/index',        'StarController@index')->name('netred.star.index');//网红列表
        Route::get('star/create',       'StarController@create')->name('netred.star.create');//网红新增
        Route::get('star/edit/{id}',    'StarController@edit')->name('netred.star.edit')->where('id','\d+');//网红编辑
        Route::post('star/update',      'StarController@update')->name('netred.star.update');//网红更新
        Route::get ('star/destroy/{id}','StarController@destroy')->name('netred.star.destroy')->where('id','\d+');      //网红删除


        Route::get('index/edit',     'IndexController@edit')->name('netred.index.edit');//修改基本资料
        Route::post('index/update',  'IndexController@update')->name('netred.index.update');//更新基本资料
        Route::get('index/password', 'IndexController@password')->name('netred.index.password');//修改密码
        Route::post('index/reset',   'IndexController@reset')->name('netred.index.reset');//更新密码

        //账户管理
        Route::get('account/index',         'AccountController@index')->name('netred.account.index');//我的账户
        Route::get('account/records',       'AccountController@records')->name('netred.account.records');//收支记录
        Route::get('account/notes',         'AccountController@notes')->name('netred.account.notes');//提现记录
        Route::get('account/recharge',      'AccountController@recharge')->name('netred.account.recharge');//充值界面
        Route::post('account/recharge',     'AccountController@recharge')->name('netred.account.charging');//充值
        Route::get('account/pay/{order_id}','AccountController@pay')->name('netred.account.pay');//充值
        Route::get('account/return',        'AccountController@return')->name('netred.account.return');//充值同步地址
        Route::post('account/notify',       'AccountController@notify')->name('netred.account.notify');//充值异步地址
        Route::get('account/cash',          'AccountController@cash')->name('netred.account.cash');//提现界面
        Route::post('account/post',         'AccountController@post')->name('netred.account.post');//提现
    });
});

