<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\CommonRequest;

class ArticleRequest extends CommonRequest{
    /*
    |--------------------------------------------------------------------------
    | Article Request
    | @author xingyonghe
    | @date 2016-11-16
    |--------------------------------------------------------------------------
    |
    | 内容http请求
    |
    */

    public function rules(){
        return [
            'catid' => 'positive',
            'title' => 'required',
            'content' => 'required',
        ];
    }

    public function messages(){
        return [
            'catid.positive'   => '请选择分类',
            'title.required'   => '请填写信息标题',
            'content.required'   => '请填写信息详情内容',
        ];
    }



}
