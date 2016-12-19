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
        /* 返回标准数据 */
        $return  = array('code' => 1, 'info' => '上传成功');
        $files = request()->allFiles();
//        if($files->isValid()){
//
//        }else{
//            dd($files->getError());
//        }

        $config = config('filesystems.disks.picture');
        $info = Upload::picture($files,$config);
        dd($info);
//        /* 记录图片信息 */
//        return response()->json($info);
//        $picture = request(['file']);
//        return response()->json(['code'=>0]);
//        dd(request());
    }

    public function avatar(){
        $files = request()->file();
        $disks = 'avatar';//配置名称
        $info = Upload::avatar($files,$disks);
        return response()->json($info);
    }


























}
