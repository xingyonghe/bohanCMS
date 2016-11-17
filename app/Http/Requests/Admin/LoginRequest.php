<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\CommonRequest;

class LoginRequest extends CommonRequest{
    /*
    |--------------------------------------------------------------------------
    | Login Request
    | @author xingyonghe
    | @date 2016-11-16
    |--------------------------------------------------------------------------
    |
    | 登陆http请求
    |
    */

    public function rules(){
        return [
            'username' => 'required',
            'password' => 'required',
        ];
    }

    public function messages(){
        return [
            'username.required' => '请填写管理员账号',
            'password.required' => '请填写登陆密码',
        ];
    }
}
