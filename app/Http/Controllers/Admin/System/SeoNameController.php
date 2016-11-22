<?php

namespace App\Http\Controllers\Admin\System;

use App\Http\Controllers\Admin\CommonController;
use App\Http\Requests\Admin\SeoNameRequest;

class SeoNameController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | SeoName Controller
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | SEO变量控制器
    |
    */

    /**
     * SEO变量列表
     * @author: xingyonghe
     * @date: 2016-11-22
     * @return mixed
     */
    public function index(){
        $name = (string)request()->get('name','');
        $lists = D('SysSeoName')
            ->select(['id','name', 'variable','confines'])
            ->where(function ($query) use($name) {
                if($name){
                    $query->where('name','like','%'.$name.'%');
                }
            })
            ->orderBy('created_at', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        $params = array('name'=>$name);
        return view('admin.seoname.index',compact('lists','params'));
    }

    /**
     * SEO变量新增
     * @author: xingyonghe
     * @date: 2016-11-22
     * @return \Illuminate\Http\JsonResponse
     */
    public function create(){
        $view = view('admin.seoname.edit');
        return $this->ajaxReturn($view->render(),1,'','新增SEO变量');
    }

    /**
     * SEO变量修改
     * @author: xingyonghe
     * @date: 2016-11-22
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function edit(int $id){
        $info = D('SysSeoName')->find($id);
        $view = view('admin.seoname.edit',compact('info'));
        return $this->ajaxReturn($view->render(),1,'','修改SEO变量');
    }

    /**
     * SEO变量更新
     * @author: xingyonghe
     * @date: 2016-11-22
     * @param SeoRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(SeoNameRequest $request){
        $resault = D('SysSeoName')->updateData($request->all());
        if($resault){
            return $this->ajaxReturn(isset($resault['id'])?'SEO变量信息修改成功':'SEO变量信息新增成功',1,url()->previous());
        }else{
            return $this->ajaxReturn(D('SysChannel')->getError());
        }
    }

    /**
     * SEO变量删除
     * @author: xingyonghe
     * @date: 2016-11-22
     * @param int $id
     * @return mixed
     */
    public function destroy(int $id){
        $resault = D('SysSeoName')->destroy($id);
        if($resault){
            return redirect()->back()->withSuccess('删除SEO变量信息成功!');
        }else{
            return redirect()->back()->with('error','删除SEO变量信息失败');
        }
    }




}
