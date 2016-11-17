<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\CommonRequest;

class ConfigRequest extends CommonRequest{
    /*
    |--------------------------------------------------------------------------
    | Config Request
    | @author xingyonghe
    | @date 2016-11-14
    |--------------------------------------------------------------------------
    |
    | 网站配置http请求
    |
    */

    public function rules(){
        $id = $this->get('id');
        return [
            'title' => 'required',
            'name' => 'required|unique:sys_config,name,'.$id,
        ];
    }

    public function messages(){
        return [
            'title.required' => '请填写配置标题',
            'name.required'   => '请填写配置标识',
            'name.unique'   => '配置标识已经存在',
        ];
    }
}
