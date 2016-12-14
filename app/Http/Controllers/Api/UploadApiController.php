<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\MobileSms;
use SMS;

class UploadApiController extends Controller{
    /*
    |--------------------------------------------------------------------------
    | SmsApi Controller
    | @author xingyonghe
    | @date 2016-12-14
    |--------------------------------------------------------------------------
    |
    | 上传API控制器
    |
    */

    public function file(){

    }

    public function picture(){
        $picture = request(['file']);
        return response()->json(['status'=>1]);
//        dd(request());
    }

    public function avatar(){

    }


























}
