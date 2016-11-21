<?php

namespace App\Http\Controllers\Admin\System;

use App\Http\Controllers\Admin\CommonController;
use App\Http\Requests\Admin\ChannelRequest;

class ChannelController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Channel Controller
    | @author xingyonghe
    | @date 2016-11-10
    |--------------------------------------------------------------------------
    |
    | 前台导航控制器
    |
    */

    /**
     * 导航列表
     */
    public function index(){
        $title = (string)request()->get('title','');
        $lists = D('SysChannel')
            ->where(function ($query) use($title) {
                if($title){
                    $query->where('title','like','%'.$title.'%');
                }
            })
            ->orderBy('sort', 'asc')
            ->get(['id','title', 'remark','url','sort','status','target']);
        $this->intToString($lists,array('status'=>array(0=>'隐藏',1=>'显示'),'target'=>array(0=>'否',1=>'是')));
        $params = array('title'=>$title);
        return view('admin.channel.index',compact('lists','params'));
    }

    /**
     * 导航新增
     */
    public function create(){
        $view = view('admin.channel.edit');
        return $this->ajaxReturn($view->render(),1,'','新增导航');
    }

    /**
     * 导航修改
     */
    public function edit(int $id){
        $info = D('SysChannel')->find($id);
        $view = view('admin.channel.edit',compact('info'));
        return $this->ajaxReturn($view->render(),1,'','修改导航');
    }

    /**
     * 导航更新
     * URL::previous() 获取上一次请求地址
     */
    public function update(ChannelRequest $request){
        $resault = D('SysChannel')->updateData($request->all());
        if($resault){
            return $this->ajaxReturn(isset($resault['id'])?'导航信息修改成功':'导航信息新增成功',1,url()->previous());
        }else{
            return $this->ajaxReturn(D('SysChannel')->getError());
        }
    }

    /**
     * 导航删除
     */
    public function destroy(int $id){
        $resault = D('SysChannel')->destroy($id);
        if($resault){
            return redirect()->back()->withSuccess('删除信息成功!');
        }else{
            return redirect()->back()->with('error','删除信息失败');
        }
    }

    /**
     * 导航排序
     */
    public function sort(){
        $datas = D('SysChannel')->orderBy('sort','asc')->get()->toArray();
        $view = view('admin.channel.sort',compact('datas'));
        return $this->ajaxReturn($view->render(),1,'','导航排序');
    }

    /**
     * 更新排序
     * @param Request $request
     */
    public function order(){
        $ids = request()->ids;
        $ids = explode(',', $ids);
        foreach ($ids as $sort=>$id){
            $channel = D('SysChannel')->find($id);
            $channel->update(['sort'=>$sort+1]);
        }
        return $this->ajaxReturn('导航信息排序成功',1,url()->previous());
    }




}
