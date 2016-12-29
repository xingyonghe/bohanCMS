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
        /**--用户登陆--**/
        Route::get('/', 'LoginController@showLoginForm')->name('admin.login.form');//登录页面
        Route::post('post', 'LoginController@login')->name('admin.login.post'); //登录提交
        Route::get('logout', 'LoginController@logout')->name('admin.login.logout');//退出登录
    });

    Route::group(['middleware'=>['admin.auth','menu']],function(){
        /**--**--**--**--**--**--**--**--**--**首页**--**--**--**--**--**--**--**--**--**--**/
        Route::group(['namespace'=>'Index'],function(){
            /**--后台首页--**/
            Route::get('index/index', 'IndexController@index')->name('admin.index.index');//首页
            //后台通用demo
            Route::get('demo/index',  'DemoController@index')->name('admin.demo.index');//通用首页
        });

        /**--**--**--**--**--**--**--**--**--**系统**--**--**--**--**--**--**--**--**--**--**/
        Route::group(['namespace'=>'System'],function(){
            /**--菜单管理--**/
            Route::get ('menu/index',       'MenuController@index')->name('admin.menu.index');   //列表
            Route::get ('menu/create/{pid}','MenuController@create')->name('admin.menu.create')->where('pid','\d+');     //新增
            Route::get ('menu/edit/{id}',   'MenuController@edit')->name('admin.menu.edit')->where('id','\d+');  //修改
            Route::post('menu/update',      'MenuController@update')->name('admin.menu.update'); //更新
            Route::get ('menu/destroy/{id}','MenuController@destroy')->name('admin.menu.destroy')->where('id','\d+');//删除
            Route::get ('menu/batch/{pid?}','MenuController@batch')->name('admin.menu.batch')->where('pid','\d+');//批量新增
            Route::post('menu/submit',      'MenuController@submit')->name('admin.menu.submit');  //批量更新
            Route::get ('menu/sort/{pid?}', 'MenuController@sort')->name('admin.menu.sort')->where('pid','\d+');  //排序
            Route::post('menu/order',       'MenuController@order')->name('admin.menu.order');//更新排序

            /**--配置管理--**/
            Route::get ('config/index',           'ConfigController@index')->name('admin.config.index');//配置列表
            Route::get ('config/create',          'ConfigController@create')->name('admin.config.create'); //新增配置
            Route::get ('config/edit/{id}',       'ConfigController@edit')->name('admin.config.edit')->where('id','\d+'); //修改配置
            Route::post('config/update',          'ConfigController@update')->name('admin.config.update');   //更新配置
            Route::get ('config/destroy/{id}',    'ConfigController@destroy')->name('admin.config.destroy')->where('id','\d+');//删除配置
            Route::get ('config/setting/{group?}','ConfigController@setting')->name('admin.config.setting')->where('group','\d+'); //网站设置
            Route::post('config/post',            'ConfigController@post')->name('admin.config.post'); //更新设置

            /**--导航管理--**/
            Route::get ('channel/index',       'ChannelController@index')->name('admin.channel.index');        //列表
            Route::get ('channel/create',      'ChannelController@create')->name('admin.channel.create');          //新增
            Route::get ('channel/edit/{id}',   'ChannelController@edit')->name('admin.channel.edit')->where('id','\d+');         //修改
            Route::post('channel/update',      'ChannelController@update')->name('admin.channel.update');       //更新
            Route::get ('channel/destroy/{id}','ChannelController@destroy')->name('admin.channel.destroy')->where('id','\d+');      //删除
            Route::get ('channel/sort',        'ChannelController@sort')->name('admin.channel.sort');         //排序
            Route::post('channel/order',       'ChannelController@order')->name('admin.channel.order');     //更新排序

            /**--SEO管理--**/
            Route::get ('seo/index',       'SeoController@index')->name('admin.seo.index');        //列表
            Route::get ('seo/create',      'SeoController@create')->name('admin.seo.create');          //新增
            Route::get ('seo/edit/{id}',   'SeoController@edit')->name('admin.seo.edit')->where('id','\d+');         //修改
            Route::post('seo/update',      'SeoController@update')->name('admin.seo.update');       //更新
            Route::get ('seo/destroy/{id}','SeoController@destroy')->name('admin.seo.destroy')->where('id','\d+');      //删除

            /**--SEO变量管理--**/
            Route::get ('name/index',       'SeoNameController@index')->name('admin.seoname.index');        //列表
            Route::get ('name/create',      'SeoNameController@create')->name('admin.seoname.create');          //新增
            Route::get ('name/edit/{id}',   'SeoNameController@edit')->name('admin.seoname.edit')->where('id','\d+');         //修改
            Route::post('name/update',      'SeoNameController@update')->name('admin.seoname.update');       //更新
            Route::get ('name/destroy/{id}','SeoNameController@destroy')->name('admin.seoname.destroy')->where('id','\d+');      //删除
        });

        /**--**--**--**--**--**--**--**--**--**用户管理**--**--**--**--**--**--**--**--**--**--**/
        Route::group(['namespace'=>'User'],function(){
            /**--模块设置--**/
            Route::get ('user/index',  'UserSettingController@index')->name('user.setting.index');//模块设置
            Route::post('user/update', 'UserSettingController@update')->name('user.setting.update');//更新



            /**--网红管理--**/
            Route::get ('netred/index',              'NetredController@index')->name('admin.netred.index');//网红列表
            Route::get ('netred/show/{id}',          'NetredController@show')->name('admin.netred.show')->where('id','\d+');//网红详情
            Route::get ('netred/edit/{id}',          'NetredController@edit')->name('admin.netred.edit')->where('id','\d+');//网红修改
            Route::get ('netred/verify/{id}',        'NetredController@verify')->name('admin.netred.verify')->where('id','\d+');//审核
            /**--广告主管理--**/
            Route::get ('ads/index',              'AdsController@index')->name('admin.ads.index');//网红列表
            Route::get ('ads/show/{id}',          'AdsController@index')->name('admin.ads.show')->where('id','\d+');//网红详情
            Route::get ('ads/verify/{id}',        'AdsController@verify')->name('admin.ads.verify')->where('id','\d+');//审核

            /**--管理员--**/
            Route::get ('warden/index',         'WardenController@index')->name('admin.warden.index'); //管理员列表
            Route::get ('warden/create',        'WardenController@create')->name('admin.warden.create');//新增
            Route::post('warden/add',           'WardenController@add')->name('admin.warden.add');//添加管理员
            Route::get ('warden/edit/{id}',     'WardenController@edit')->name('admin.warden.edit')->where('id','\d+'); //修改
            Route::post('warden/update',        'WardenController@update')->name('admin.warden.update');//修改管理员
            Route::get ('warden/forbid/{id}',   'WardenController@forbid')->name('admin.warden.forbid')->where('id','\d+'); //禁用
            Route::get ('warden/resume/{id}',   'WardenController@resume')->name('admin.warden.resume')->where('id','\d+');//启用
            Route::get ('warden/destroy/{id}',  'WardenController@destroy')->name('admin.warden.destroy')->where('id','\d+');//删除
            Route::get ('warden/resetpass',     'WardenController@resetpass')->name('admin.warden.resetpass');//重置密码
            Route::post('warden/change',        'WardenController@change')->name('admin.warden.change');//更新密码

            /**--用户组--**/
            Route::get ('group/index',         'GroupController@index')->name('admin.group.index');//用户组列表
            Route::get ('group/create',        'GroupController@create')->name('admin.group.create');//新增用户组
            Route::get ('group/edit/{id}',     'GroupController@edit')->name('admin.group.edit')->where('id','\d+');//修改用户组
            Route::post('group/update',        'GroupController@update')->name('admin.group.update');   //更新用户组
            Route::get ('group/destroy/{id}',  'GroupController@destroy')->name('admin.group.destroy')->where('id','\d+');   //删除用户组
            Route::get ('group/access/{id}',   'GroupController@access')->name('admin.group.access')->where('id','\d+'); //用户组授权
            Route::post('group/write',         'GroupController@write')->name('admin.group.write');//用户组授权写入




        });

        /**--**--**--**--**--**--**--**--**--**内容管理**--**--**--**--**--**--**--**--**--**--**/
        Route::group(['namespace'=>'Article'],function(){
            /**--内容管理--**/
            Route::get ('article/index',           'ArticleController@index')->name('admin.article.index');        //列表
            Route::get ('article/create',          'ArticleController@create')->name('admin.article.create');      //新增
            Route::get ('article/edit/{id}',       'ArticleController@edit')->name('admin.article.edit')->where('id','\d+');         //修改
            Route::post('article/update',          'ArticleController@update')->name('admin.article.update');       //更新
            Route::get ('article/destroy/{id}',    'ArticleController@destroy')->name('admin.article.destroy')->where('id','\d+');      //删除
            Route::get ('article/recycle',         'ArticleController@recycle')->name('admin.article.recycle');        //回收站

            /**--分类管理--**/
            Route::get ('artcate/index',          'ArticleCategoryController@index')->name('article.category.index');     //分类列表
            Route::get ('artcate/create',         'ArticleCategoryController@create')->name('article.category.create');   //新增
            Route::get ('artcate/edit/{id}',      'ArticleCategoryController@edit')->name('article.category.edit')->where('id','\d+'); //修改
            Route::post('artcate/update',         'ArticleCategoryController@update')->name('article.category.update');       //更新
            Route::get ('artcate/destroy/{id}',   'ArticleCategoryController@destroy')->name('article.category.destroy')->where('id','\d+');//删除

            /**--模块设置--**/
            Route::get ('artset/index',  'ArticleSettingController@index')->name('article.setting.index');     //模块设置
            Route::post('artset/update', 'ArticleSettingController@update')->name('article.setting.update');       //更新
        });

        /**--**--**--**--**--**--**--**--**--**资源**--**--**--**--**--**--**--**--**--**--**/
        Route::group(['namespace'=>'Star'],function(){
            /**--模块设置--**/
            //分类
            Route::get ('starcate/index',         'StarCategoryController@index')->name('star.category.index');//分类列表
            Route::get ('starcate/create',        'StarCategoryController@create')->name('star.category.create');//新增
            Route::get ('starcate/edit/{id}',     'StarCategoryController@edit')->name('star.category.edit')->where('id','\d+');//修改
            Route::post('starcate/update',        'StarCategoryController@update')->name('star.category.update');//更新
            Route::get ('starcate/destroy/{id}',  'StarCategoryController@destroy')->name('star.category.destroy')->where('id','\d+');//删除
            //模块配置
            Route::get ('starset/index',          'StarSettingController@index')->name('star.setting.index');//模块配置
            Route::post('starset/update',         'StarSettingController@update')->name('star.setting.update');//配置更新
            //平台管理
            Route::get ('platform/index',         'PlatformController@index')->name('admin.platform.index');//平台列表
            Route::get ('platform/create',        'PlatformController@create')->name('admin.platform.create');//新增平台
            Route::get ('platform/edit/{id}',     'PlatformController@edit')->name('admin.platform.edit')->where('id','\d+');//修改平台
            Route::post('platform/update',        'PlatformController@update')->name('admin.platform.update');//更新平台
            Route::get ('platform/destroy/{id}',  'PlatformController@destroy')->name('admin.platform.destroy')->where('id','\d+');//删除平台
            Route::get ('platform/sort',          'PlatformController@sort')->name('admin.platform.sort');//排序
            Route::post('platform/order',         'PlatformController@order')->name('admin.platform.order');//更新排序
            //广告形式
            Route::get ('adform/index',         'AdformController@index')->name('admin.adform.index');//广告形式列表
            Route::get ('adform/create',        'AdformController@create')->name('admin.adform.create');//新增广告形式
            Route::get ('adform/edit/{id}',     'AdformController@edit')->name('admin.adform.edit')->where('id','\d+');//修改广告形式
            Route::post('adform/update',        'AdformController@update')->name('admin.adform.update');//更新广告形式
            Route::get ('adform/destroy/{id}',  'AdformController@destroy')->name('admin.adform.destroy')->where('id','\d+');//删除广告形式
            Route::get ('adform/sort',          'AdformController@sort')->name('admin.adform.sort');//排序
            Route::post('adform/order',         'AdformController@order')->name('admin.adform.order');//更新排序

            /**--资源管理--**/
            //资源列表
            Route::get ('star/index',             'StarController@index')->name('admin.star.index');//列表
            Route::get ('star/create',            'StarController@create')->name('admin.star.create');//新增
            Route::get ('star/edit/{id}',         'StarController@edit')->name('admin.star.edit')->where('id','\d+'); //修改
            Route::post('star/update',            'StarController@update')->name('admin.star.update');//更新
            Route::get ('star/destroy/{id}',      'StarController@destroy')->name('admin.star.destroy')->where('id','\d+');//删除
            //等待审核
            Route::get ('star/verify',            'StarController@verify')->name('admin.star.verify');//待审核列表
            Route::get ('star/show/{id}',         'StarController@show')->name('admin.star.show')->where('id','\d+'); //审核
            Route::get ('star/pass/{id}',         'StarController@pass')->name('admin.star.pass')->where('id','\d+');//通过审核
            Route::get ('star/refuse/{id}',       'StarController@refuse')->name('admin.star.refuse')->where('id','\d+'); //拒绝审核
            //回收站
            Route::get ('star/recycle',           'StarController@recycle')->name('admin.star.recycle');//回收站列表


        });

    });



    //
//    Route::group(['middleware'=>['admin.auth','menu']],function (){
//        //首页
//
//
//
//
//

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
