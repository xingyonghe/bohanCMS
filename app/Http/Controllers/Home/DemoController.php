<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;

class DemoController extends Controller{


    public function file(){
        return view('home.demo.file');
    }

    public function picture(){
        return view('home.demo.picture');
    }

    public function avatar(){
        return view('home.demo.avatar');
    }


























}
