<?php

namespace App\Http\Controllers\Admin\System;

use App\Http\Controllers\Admin\CommonController;
use App\Http\Requests\Admin\SeoRequest;

class SeoController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Seo Controller
    | @author xingyonghe
    | @date 2016-11-22
    |--------------------------------------------------------------------------
    |
    | SEO控制器
    |
    */

    /**
     * SEO列表
     * @author: xingyonghe
     * @date: 2016-11-22
     * @return mixed
     */
    public function index(){
        $name = (string)request()->get('name','');
        $key = (string)request()->get('key','');
        $lists = D('SysSeo')
            ->select(['id','name', 'key','title','keywords','description'])
            ->where(function ($query) use($name) {
                if($name){
                    $query->where('name','like','%'.$name.'%');
                }
            })
            ->where(function ($query) use($key) {
                if($key){
                    $query->where('key','like','%'.$key.'%');
                }
            })
            ->orderBy('created_at', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        $params = array('name'=>$name,'key'=>$key);
        return view('admin.seo.index',compact('lists','params'));
    }

    /**
     * SEO新增
     * @author: xingyonghe
     * @date: 2016-11-22
     * @return \Illuminate\Http\JsonResponse
     */
    public function create(){
        $view = view('admin.seo.edit');
        return $this->ajaxReturn($view->render(),1,'','新增SEO');
    }

    /**
     * SEO修改
     * @author: xingyonghe
     * @date: 2016-11-22
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function edit(int $id){
        $info = D('SysSeo')->find($id);
        $view = view('admin.seo.edit',compact('info'));
        return $this->ajaxReturn($view->render(),1,'','修改SEO');
    }

    /**
     * SEO更新
     * @author: xingyonghe
     * @date: 2016-11-22
     * @param SeoRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(SeoRequest $request){
        $resault = D('SysSeo')->updateData($request->all());
        if($resault){
            return $this->ajaxReturn(isset($resault['id'])?'SEO信息修改成功':'SEO信息新增成功',1,url()->previous());
        }else{
            return $this->ajaxReturn(D('SysChannel')->getError());
        }
    }

    /**
     * SEO删除
     * @author: xingyonghe
     * @date: 2016-11-22
     * @param int $id
     * @return mixed
     */
    public function destroy(int $id){
        $resault = D('SysSeo')->destroy($id);
        if($resault){
            return redirect()->back()->withSuccess('删除SEO信息成功!');
        }else{
            return redirect()->back()->with('error','删除SEO信息失败');
        }
    }




}
