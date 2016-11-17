<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\CommonRequest;

class AdminRequest extends CommonRequest{
    /*
    |--------------------------------------------------------------------------
    | Admin Request
    | @author xingyonghe
    | @date 2016-11-16
    |--------------------------------------------------------------------------
    |
    | 管理员新增http请求
    |
    */

    public function rules(){
        $id = $this->get('id');
        return [
            'username' => 'required',
            'nickname' => 'required',
            'password' => 'required|min:6|confirmed',
        ];
    }

    public function messages(){
        return [
            'username.required'   => '请填写账号名称',
            'nickname.required'   => '请填写管理员昵称',
            'password.required'   => '请填写账号登陆密码',
            'password.min'        => '账号密码不能低于6位数',
            'password.confirmed'  => '密码确认不一致',
        ];
    }
}
