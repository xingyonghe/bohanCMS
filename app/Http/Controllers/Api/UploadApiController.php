<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use SMS;
use Upload;

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
        $files = request()->file();
        $disks = 'picture';//配置名称
        $info = Upload::picture($files,$disks);
        return response()->json($info);
    }

    public function logo(){
        $files = request()->file();
        $disks = 'picture';//配置名称
        $info = Upload::logo($files,$disks);
        return response()->json($info);
    }


























}
