<?php

namespace App\Http\Controllers\Home;

use SEO;

class CaseController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Case Controller
    | @author xingyonghe
    | @date 2016-12-8
    |--------------------------------------------------------------------------
    |
    | 客户案例控制器
    |
    */
    protected $channel_id = 3;//设置导航选中标志
    public function __construct(){
        view()->share('channel_id',$this->channel_id);
    }
    public function index(){
        SEO::setRule('WEB_INDEX');
        SEO::setVariables([
            'sitename' => C('WEB_SITE_TITLE'),
            'sitemedia' => '网红',
            'siteads' => '广告主'
        ]);
        return view('home.case.index');
    }



























}
