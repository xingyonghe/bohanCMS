<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\CommonRequest;

class ChannelRequest extends CommonRequest{
    /*
    |--------------------------------------------------------------------------
    | Channel Request
    | @author xingyonghe
    | @date 2016-11-14
    |--------------------------------------------------------------------------
    |
    | 导航http请求
    |
    */

    public function rules(){
        return [
            'title' => 'required',
            'url'   => 'required',
        ];
    }

    public function messages(){
        return [
            'title.required' => '请填写导航标题',
            'url.required'   => '请填写导航url地址',
        ];
    }
}
