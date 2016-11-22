<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\CommonRequest;

class SeoRequest extends CommonRequest{
    /*
    |--------------------------------------------------------------------------
    | Seo Request
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | SEO http请求
    |
    */

    public function rules(){
        $id = $this->get('id');
        return [
            'name'        => 'required',
            'key'         => 'required|unique:sys_seo,key,'.$id,
            'title'       => 'required',
            'keywords'    => 'required',
            'description' => 'required',
        ];
    }

    public function messages(){
        return [
            'name.required'       => '请填写SEO名称',
            'key.required'        => '请填写SEO标识',
            'key.unique'          => 'SEO标识已经存在',
            'title.required'      => '请填写SEO Title',
            'keywords.required'   => '请填写SEO Keywords',
            'description.required'=> '请填写SEO Description',
        ];
    }
}
