<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\CommonRequest;

class SeoNameRequest extends CommonRequest{
    /*
    |--------------------------------------------------------------------------
    | SeoName Request
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | Seo变量 http请求
    |
    */

    public function rules(){
        return [
            'name'        => 'required',
            'variable'    => 'required',
        ];
    }

    public function messages(){
        return [
            'name.required'       => '请填写SEO变量名称',
            'variable.required'   => '请填写SEO变量标识',
        ];
    }
}
