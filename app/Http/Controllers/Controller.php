<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /**
     * ajax返回信息
     * @author xingyonghe
     * @date 2016-11-10
     * @param $info 提示信息
     * @param $status 状态码 1成功 0失败
     * @param $url 返回地址
     * @param $title 弹窗标题
     * @return
     */
    protected function ajaxReturn($info='', $status=0, $url='', $title=''){
        return response()->json(array('status'=>1, 'info'=>$info, 'url'=>$url, 'title'=>$title));
    }

    /**
     * select返回的数组进行整数映射转换
     * @author xingyonghe
     * @date 2016-11-10
     * @param max|array $data
     * @param array $map
     * return $data
     */
    protected function int_to_string(&$data,$map=array('status'=>array(1=>'正常',-1=>'删除'))) {
        foreach ($data as $key => &$row){
            foreach ($map as $col=>$pair){
                if(isset($row[$col]) && isset($pair[$row[$col]])){
                    $text = $col.'_text';
                    $row[$text] = $pair[$row[$col]];
                }
            }
        }
        return $data;
    }



}
