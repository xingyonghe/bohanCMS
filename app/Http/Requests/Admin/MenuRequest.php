<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\CommonRequest;

class MenuRequest extends CommonRequest{
    /*
    |--------------------------------------------------------------------------
    | Menu Request
    | @author xingyonghe
    | @date 2016-11-10
    |--------------------------------------------------------------------------
    |
    | 系统菜单http请求
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
            'title.required' => '请填写菜单标题',
            'url.required'   => '请填写菜单url地址',
        ];
    }


}
