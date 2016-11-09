<?php
/**
 * 前台路由
 * @author xingyonghe
 * @date 2016-11-9
 */
Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index');
