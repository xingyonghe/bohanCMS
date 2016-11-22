<?php

namespace App\Http\Controllers\Home\Index;

use App\Http\Controllers\Home\CommonController;
use SEO;

class IndexController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Index Controller
    | @author xingyonghe
    | @date 2016-11-14
    |--------------------------------------------------------------------------
    |
    | 前台首页控制器
    |
    */
    protected $channel_id = 1;//设置导航选中标志
    public function __construct(){
        view()->share('channel_id',$this->channel_id);
    }
    public function index(){
        SEO::setRule('WEB_INDEX');
        SEO::setVariables([
            'sitename' => C('WEB_SITE_TITLE'),
            'sitemedia' => '自媒体',
            'siteads' => '广告主'
        ]);
        return view('home.index.index');
    }



























}
