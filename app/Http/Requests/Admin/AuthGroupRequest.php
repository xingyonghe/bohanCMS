<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\CommonRequest;

class AuthGroupRequest extends CommonRequest{

    /*
    |--------------------------------------------------------------------------
    | AuthGroup Request
    | @author xingyonghe
    | @date 2016-11-16
    |--------------------------------------------------------------------------
    |
    | 用户组http请求
    |
    */
    public function rules(){
        return [
            'title' => 'required',
        ];
    }

    public function messages(){
        return [
            'title.required' => '请填写用户组名称',
        ];
    }
}
