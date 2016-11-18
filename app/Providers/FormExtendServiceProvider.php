<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Form;

class FormExtendServiceProvider extends ServiceProvider{
    /*
    |--------------------------------------------------------------------------
    | FormExtend ServiceProvider
    | @author xingyonghe
    | @date 2016-11-17
    |--------------------------------------------------------------------------
    |
    | 表单组件扩展服务提供者
    |
    */
    public function boot(){
        /**
         * 自定义多个复选框
         * @author xingyonghe
         * @date 2016-11-10
         * @$name string  name值
         * @$list array   复选框键值对
         * @$cheked string 默认选中的值,如果存在多个，用逗号隔开的方式保存
         * @$options array 其他参数，style、id等属性定义
         * @return string
         */
        Form::macro('checkboxs', function($name, $list=[], $cheked, $options = []){
            $html = '';
            $cheked = explode(',',$cheked);
            foreach ($list as $value => $display) {
                if(checked && in_array($value,$cheked)){
                    $html .= Form::checkbox($name,$value,true,$options).$display;
                }else{
                    $html .= Form::checkbox($name,$value,null,$options).$display;
                }

            }
            return $html;
        });

        /**
         * 批量单选框(用于管理后台单选框的调用)
         * 调用方式：{!!Form::adminRadios('column',[0=>'否',1=>'是'],0,['class'=>'radio on'])!!}
         * @author xingyonghe
         * @date 2016-11-10
         * @param string $name  name值
         * @param array $list  复选框value值
         * @param string|int $cheked  默认选中的值
         * @param array $options  其他参数，style、id等属性定义
         * @return string
         */
        Form::macro('adminRadios', function($name, $list=[], $cheked, $options = []){
            $html = '';
            foreach ($list as $value => $display) {
                if($cheked == $value){
                    $html .= "<label class='label_radio r_on' for='radio-01'>";
                    $html .= Form::radio($name,$value,true,$options).$display;
                    $html .= "</label>";
                }else{
                    $html .= "<label class='label_radio' for='radio-01'>";
                    $html .= Form::radio($name,$value,null,$options).$display;
                    $html .= "</label>";
                }

            }
            return $html;
        });


        /**
         * 批量单选框(用于管理后台单选框的调用)
         * 调用方式：{!!Form::homeRadios('column',[0=>'否',1=>'是'],0,['class'=>'radio on'])!!}
         * @author xingyonghe
         * @date 2016-11-10
         * @param string $name  name值
         * @param array $list  复选框value值
         * @param string|int $cheked  默认选中的值
         * @param array $options  其他参数，style、id等属性定义
         * @return string
         */
        Form::macro('homeRadios', function($name, $list=[], $cheked, $options = []){
            $html = '';
            foreach ($list as $value => $display) {
                if($cheked == $value){
//                    $html .= "<label class='label_radio r_on' for='radio-01'>";
                    $html .= Form::radio($name,$value,true,$options).$display;
//                    $html .= "</label>";
                }else{
//                    $html .= "<label class='label_radio' for='radio-01'>";
                    $html .= Form::radio($name,$value,null,$options).$display;
//                    $html .= "</label>";
                }

            }
            return $html;
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register(){

    }
}
