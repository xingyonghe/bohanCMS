<?php
/*
|--------------------------------------------------------------------------
| admin route
| @author xingyonghe
| @date 2016-11-9
|--------------------------------------------------------------------------
|
| 后台路由
|
*/
Route::group(['namespace'=>'Admin'],function(){
    /**--**--**--**--**--**--**--**--**--**用户认证**--**--**--**--**--**--**--**--**--**--**/
    Route::group(['namespace'=>'Auth'],function(){
        //登录页面
        Route::get('/', 'LoginController@showLoginForm')->name('admin.login.form');
        //登录提交
        Route::post('post', 'LoginController@login')->name('admin.login.post');
        //退出登录
        Route::get('logout', 'LoginController@logout')->name('admin.login.logout');
    });

    Route::group(['middleware'=>['admin.auth','menu']],function(){
        /**--**--**--**--**--**--**--**--**--**首页**--**--**--**--**--**--**--**--**--**--**/
        Route::group(['namespace'=>'Index'],function(){
            //首页
            Route::get('index/index', 'IndexController@index')->name('admin.index.index');
        });
        /**--**--**--**--**--**--**--**--**--**系统**--**--**--**--**--**--**--**--**--**--**/
        Route::group(['namespace'=>'System'],function(){
            /**--菜单管理--**/
            //列表
            Route::get ('menu/index',       'MenuController@index')->name('admin.menu.index');
            //新增
            Route::get ('menu/create/{pid}','MenuController@create')->name('admin.menu.create')->where('pid','\d+');
            //修改
            Route::get ('menu/edit/{id}',   'MenuController@edit')->name('admin.menu.edit')->where('id','\d+');
            //更新
            Route::post('menu/update',      'MenuController@update')->name('admin.menu.update');
            //删除
            Route::get ('menu/destroy/{id}','MenuController@destroy')->name('admin.menu.destroy')->where('id','\d+');
            //批量新增
            Route::get ('menu/batch/{pid?}','MenuController@batch')->name('admin.menu.batch')->where('pid','\d+');
            //批量更新
            Route::post('menu/submit',      'MenuController@submit')->name('admin.menu.submit');

            /**--系统配置--**/
            //配置列表
            Route::get ('config/index',           'ConfigController@index')->name('admin.config.index');
            //新增配置
            Route::get ('config/create',          'ConfigController@create')->name('admin.config.create');
            //修改配置
            Route::get ('config/edit/{id}',       'ConfigController@edit')->name('admin.config.edit')->where('id','\d+');
            //更新配置
            Route::post('config/update',          'ConfigController@update')->name('admin.config.update');
            //删除配置
            Route::get ('config/destroy/{id}',    'ConfigController@destroy')->name('admin.config.destroy')->where('id','\d+');
            //配置排序
            Route::get ('config/sort',            'ConfigController@sort')->name('admin.config.sort');
            //更新排序
            Route::post('config/order',           'ConfigController@postSort')->name('admin.config.order');
            //网站设置
            Route::get ('config/setting/{group?}','ConfigController@setting')->name('admin.config.setting');
            //更新设置
            Route::post('config/post',             'ConfigController@post')->name('admin.config.post');
        });
        /**--**--**--**--**--**--**--**--**--**用户管理**--**--**--**--**--**--**--**--**--**--**/
        Route::group(['namespace'=>'User'],function(){
            /**--管理员--**/
            //管理员列表
            Route::get ('warden/index',         'WardenController@index')->name('admin.warden.index');
            //新增
            Route::get ('warden/create',        'WardenController@create')->name('admin.warden.create');
            //添加管理员
            Route::post('warden/add',           'WardenController@add')->name('admin.warden.add');
            //修改
            Route::get ('warden/edit/{id}',     'WardenController@edit')->name('admin.warden.edit')->where('id','\d+');
            //修改管理员
            Route::post('warden/update',        'WardenController@update')->name('admin.warden.update');
            //禁用
            Route::get ('warden/forbid/{id}',   'WardenController@forbid')->name('admin.warden.forbid')->where('id','\d+');
            //启用
            Route::get ('warden/resume/{id}',   'WardenController@resume')->name('admin.warden.resume')->where('id','\d+');
            //删除
            Route::get ('warden/destroy/{id}',  'WardenController@destroy')->name('admin.warden.destroy')->where('id','\d+');
            //重置密码
            Route::get ('warden/resetpass',     'WardenController@resetpass')->name('admin.warden.resetpass');
            //更新密码
            Route::post('warden/change',        'WardenController@change')->name('admin.warden.change');
            /**--用户组--**/
            //用户组列表
            Route::get ('group/index',         'GroupController@index')->name('admin.group.index');
            //新增用户组
            Route::get ('group/create',        'GroupController@create')->name('admin.group.create');
            //修改用户组
            Route::get ('group/edit/{id}',     'GroupController@edit')->name('admin.group.edit')->where('id','\d+');
            //更新用户组
            Route::post('group/update',        'GroupController@update')->name('admin.group.update');
            //删除用户组
            Route::get ('group/destroy/{id}',  'GroupController@destroy')->name('admin.group.destroy')->where('id','\d+');
            //用户组授权
            Route::get ('group/access/{id}',   'GroupController@access')->name('admin.group.access')->where('id','\d+');
            //用户组授权写入
            Route::post('group/write',         'GroupController@write')->name('admin.group.write');

            //普通会员
            //普通会员管理
            Route::get ('personal/index',              'PersonalController@index')->name('admin.user.index');
            //添加
            Route::get ('personal/add',                'PersonalController@add');
            //修改
            Route::get ('personal/edit/{id}',          'PersonalController@edit');
            //更新
            Route::post('personal/post',               'PersonalController@post');
            //新增
            Route::post('personal/update',             'PersonalController@update');
            //删除
            Route::get ('personal/destroy/{id}',       'PersonalController@destroy');
            //禁用
            Route::get ('personal/forbid/{id}',        'PersonalController@forbid');
            //启用
            Route::get ('personal/resume/{id}',        'PersonalController@resume');
            //审核
            Route::get ('personal/verify/{id}',        'PersonalController@verify');
            //添加客服
            Route::get ('personal/addCustom/{id}',     'PersonalController@addCustom');
            //更新客服
            Route::post('personal/postCustom',         'PersonalController@postCustom');
        });
    });
//    //后台用户认证
//    Route::group(['namespace'=>'Auth'],function(){
//        //登录页面
//        Route::get('/', 'LoginController@showLoginForm')->name('admin.login.form');
//        //登录提交
//        Route::post('login', 'LoginController@login')->name('admin.login.post');
//        //退出登录
//        Route::get('logout', 'LoginController@logout')->name('admin.login.logout');
//    });


    //
//    Route::group(['middleware'=>['admin.auth','menu']],function (){
//        //首页
//
//
//
//
//
//        //导航管理
//        Route::get ('channel/index',       'ChannelController@index');        //列表
//        Route::get ('channel/add',         'ChannelController@add');          //新增
//        Route::get ('channel/edit/{id}',   'ChannelController@edit');         //修改
//        Route::post('channel/update',      'ChannelController@update');       //更新
//        Route::get ('channel/destroy/{id}','ChannelController@destroy');      //删除
//        Route::get ('channel/sort',        'ChannelController@sort');         //排序
//        Route::post('channel/postSort',    'ChannelController@postSort');     //更新排序
//        //网站设置、配置
//        Route::get ('config/index',        'ConfigController@index');         //配置列表
//        Route::get ('config/add',          'ConfigController@add');           //新增配置
//        Route::get ('config/edit/{id}',    'ConfigController@edit');          //修改配置
//        Route::post('config/update',       'ConfigController@update');        //更新配置
//        Route::get ('config/destroy/{id}', 'ConfigController@destroy');       //删除配置
//        Route::get ('config/sort',         'ConfigController@sort');          //配置排序
//        Route::post('config/postSort',     'ConfigController@postSort');      //更新排序
//        Route::get ('config/setting/{group?}',      'ConfigController@setting');       //网站设置
//        Route::post('config/post',         'ConfigController@post');          //更新设置
//
//
//        /**--**--**--**--**--**--**--**--**--**管理员**--**--**--**--**--**--**--**--**--**--**/
//
//        //权限管理
//        Route::get ('auth/index',              'AuthController@index');        //列表
//        Route::get ('auth/group',              'AuthController@group');        //用户组列表
//        Route::get ('auth/addGroup',           'AuthController@addGroup');     //新增用户组
//        Route::get ('auth/editGroup/{id}',     'AuthController@editGroup');    //修改用户组
//        Route::post('auth/updateGroup',        'AuthController@updateGroup');  //更新用户组
//        Route::get ('auth/destroyGroup/{id}',  'AuthController@destroyGroup'); //删除用户组
//        Route::get ('auth/access/{id}',        'AuthController@access');       //用户组授权
//        Route::post('auth/writeGroup',         'AuthController@writeGroup');   //用户组授权写入
//        //管理员
//        Route::get ('admin/index',             'AdminController@index');        //列表
//        Route::get ('admin/add',               'AdminController@add');          //新增
//        Route::post('admin/update',            'AdminController@update');       //添加管理员
//        Route::get ('admin/edit/{id}',         'AdminController@edit');         //修改
//        Route::post('admin/editUpdate',        'AdminController@editUpdate');   //修改管理员
//        Route::get ('admin/forbid/{id}',       'AdminController@forbid');       //禁用
//        Route::get ('admin/resume/{id}',       'AdminController@resume');       //启用
//        Route::get ('admin/destroy/{id}',      'AdminController@destroy');      //删除
//        Route::get ('admin/resetpass',         'AdminController@resetpass');    //重置密码
//        Route::post('admin/updatepass',        'AdminController@updatepass');   //更新密码
//
//        /**--**--**--**--**--**--**--**--**--**用户管理**--**--**--**--**--**--**--**--**--**--**/
//        //普通会员
//        Route::get ('personal/index',              'PersonalController@index');        //普通会员管理
//        Route::get ('personal/add',                'PersonalController@add');          //添加
//        Route::get ('personal/edit/{id}',          'PersonalController@edit');         //修改
//        Route::post('personal/post',               'PersonalController@post');         //更新
//        Route::post('personal/update',             'PersonalController@update');       //新增
//        Route::get ('personal/destroy/{id}',       'PersonalController@destroy');      //删除
//        Route::get ('personal/forbid/{id}',        'PersonalController@forbid');       //禁用
//        Route::get ('personal/resume/{id}',        'PersonalController@resume');       //启用
//        Route::get ('personal/verify/{id}',        'PersonalController@verify');       //审核
//        Route::get ('personal/addCustom/{id}',     'PersonalController@addCustom');    //添加客服
//        Route::post('personal/postCustom',         'PersonalController@postCustom');   //更新客服
//        //广告主
//        Route::get ('advertiser/index',            'AdvertiserController@index');        //广告主管理
//        Route::get ('advertiser/add',              'AdvertiserController@add');          //添加
//        Route::get ('advertiser/edit/{id}',        'AdvertiserController@edit');         //修改
//        Route::post('advertiser/post',             'AdvertiserController@post');         //更新
//        Route::post('advertiser/update',           'AdvertiserController@update');       //新增
//        Route::get ('advertiser/destroy/{id}',     'AdvertiserController@destroy');      //删除
//        Route::get ('advertiser/forbid/{id}',      'AdvertiserController@forbid');       //禁用
//        Route::get ('advertiser/resume/{id}',      'AdvertiserController@resume');       //启用
//        Route::get ('advertiser/verify/{id}',      'AdvertiserController@verify');       //审核
//        Route::get ('advertiser/addCustom/{id}',   'AdvertiserController@addCustom');    //添加客服
//        Route::post('advertiser/postCustom',       'AdvertiserController@postCustom');   //更新客服
//
//        /**--**--**--**--**--**--**--**--**--**内容管理**--**--**--**--**--**--**--**--**--**--**/
//        //分类管理
//        Route::get ('category/add/{model}', 'CategoryController@add');          //新增
//        Route::get ('category/edit/{id}',          'CategoryController@edit');         //修改
//        Route::post('category/update',             'CategoryController@update');       //更新
//        Route::get ('category/destroy/{id}',       'CategoryController@destroy');      //删除
//
//        //内容管理
//        Route::get ('article/index',               'ArticleController@index');        //列表
//        Route::get ('article/add',                 'ArticleController@add');          //新增
//        Route::get ('article/edit/{id}',           'ArticleController@edit');         //修改
//        Route::post('article/update',              'ArticleController@update');       //更新
//        Route::get ('article/destroy/{id}',        'ArticleController@destroy');      //删除
//        Route::get ('article/category',            'ArticleController@category');     //分类列表
//    });
});
