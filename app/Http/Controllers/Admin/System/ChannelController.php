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
        $title = request()->get('title','');
        $list = D('SysChannel')
            ->where(function ($query) use($title) {
                if($title){
                    $query->where('title','like','%'.$title.'%');
                }
            })
            ->orderBy('sort', 'asc')
            ->get(['id','title', 'remark','url','sort','status','target']);
        $this->intToString($list,array('status'=>array(0=>'隐藏',1=>'显示'),'target'=>array(0=>'否',1=>'是')));
        $params = array('title'=>$title);
        return view('admin.channel.index',compact('datas','params'));
    }

    /**
     * 导航新增
     */
    public function add(){
        if(Request::ajax()){
            $view = view('admin.channel.add');
            return Response::json(array('html'=>$view->render(),'status'=>1,'title'=>'新增导航'));
        }else{
            return redirect()->back()->with('error','请求超时');
        }
    }

    /**
     * 导航修改
     */
    public function edit($id){
        if(Request::ajax()){
            $info = SysChannel::find($id);
            $view = view('admin.menu.edit',compact('info'));
            return Response::json(array('html'=>$view->render(),'status'=>1,'title'=>'修改导航'));
        }else{
            return redirect()->back()->with('error','请求超时');
        }
    }

    /**
     * 导航更新
     * URL::previous() 获取上一次请求地址
     */
    public function update(ChannelRequest $request){
        $res = SysChannel::updateData($request);
        if($res){
            return Response::json(array('success'=> $res['id']?'导航信息修改成功':'导航信息新增成功','status'=>1,'url'=>URL::previous()));
        }else{
            return Response::json(array('error'=> $res['id']?'导航信息更新失败':'导航信息新增失败','status'=>0));
        }
    }

    /**
     * 导航删除
     */
    public function destroy($id){
        $datas = SysChannel::find($id);
        if($datas->delete()){
            return redirect()->back()->withSuccess('删除信息成功!');
        }else{
            return redirect()->back()->with('error','删除信息失败');
        }
    }

    /**
     * 导航排序
     */
    public function sort(){
        if(Request::ajax()){
            $datas = SysChannel::orderBy('sort','asc')->get()->toArray();
            $view = view('admin.channel.sort',compact('datas'));
            return Response::json(array('html'=>$view->render(),'status'=>1,'title'=>'导航排序'));
        }else{
            return redirect()->back()->with('error','请求超时');
        }
    }

    /**
     * 更新排序
     * @param Request $request
     */
    public function postSort(HttpRequest $request){
        $ids = $request->ids;
        $ids = explode(',', $ids);
        foreach ($ids as $sort=>$id){
            $channel = SysChannel::find($id);
            $res = $channel->update(array('sort'=>$sort+1));
        }
        return Response::json(array('success'=> '导航信息排序成功','status'=>1,'url'=>URL::previous()));
    }




}
