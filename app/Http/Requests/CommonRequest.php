<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;

class CommonRequest extends FormRequest{
    /*
    |--------------------------------------------------------------------------
    | Common Request
    | @author xingyonghe
    | @date 2016-11-10
    |--------------------------------------------------------------------------
    |
    | 公用http请求
    |
    */
    public function authorize(){
        return true;
    }

    protected function formatErrors(Validator $validator){
        $error_keys = $validator->messages()->keys();
        $return['info']  = $validator->errors()->first();
        $return['status'] = 0;
        $return['id']     = $error_keys[0];
        return $return;

    }

    public function response(array $errors){
        return response()->json($errors);
    }


}