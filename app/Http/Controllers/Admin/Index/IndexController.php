<?php

namespace App\Http\Controllers\Admin\Index;

use App\Http\Controllers\Admin\CommonController;
class IndexController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Index Controller
    | @author xingyonghe
    | @date 2016-11-10
    |--------------------------------------------------------------------------
    |
    | 后台首页控制器
    |
    */

    /**
     * 首页
     * @author xingyonghe
     * @date 2016-11-10
     * @return mixed
     */
    public function index(){
        return view('admin.index.index');
    }
}
