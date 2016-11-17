<?php

namespace App\Http\Controllers\Home\Index;

use App\Http\Controllers\Home\CommonController;

class IndexController extends CommonController{
    public function index(){
//        dd(\Auth::guest());
        return view('home.index.index');
    }



























}
