<?php

namespace App\Http\Controllers\Admin\System;

use App\Models\SysMenu;
use App\Http\Controllers\Admin\CommonController;
use App\Http\Requests\Admin\MenuRequest;

class MenuController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Menu Controller
    | @author xingyonghe
    | @date 2016-11-10
    |--------------------------------------------------------------------------
    |
    | 系统菜单控制器
    |
    */

    public function __construct(){
        //分享menus下拉菜单数据到模板admin.menu.edit
        view()->composer(['admin.menu.edit'],function($view){
            $view->with('menus',D('SysMenu')->getMenus());
        });
    }

    /**
     * 菜单列表
     * @author xingyonghe
     * @date 2016-11-10
     * @return
     */
    public function index(){
        $menus = D('SysMenu')->returnMenus();
        $menus = array_pluck($menus,'title','id');
        $pid = (int)request()->get('pid',0);
        $lists = D('SysMenu')
            ->where('pid',$pid)
            ->get(['id', 'title', 'pid', 'sort', 'url', 'hide', 'group'])
            ->toArray();
        if($menus && $lists){
            foreach($lists as $key=>&$val){
                if($val['pid']){
                    $val['up_title'] = $menus[$val['pid']];
                } else{
                    $val['up_title'] = '无';
                }
            }
        }
        $this->int_to_string($lists,array('hide'=>array(1=>'隐藏',0=>'显示')));
        return view('admin.menu.index',compact('lists','pid'));
    }

    /**
     * 菜单新增
     * @author xingyonghe
     * @date 2016-11-10
     * @param int $pid 上级菜单ID
     * @return
     */
    public function create(int $pid){
        $view = view('admin.menu.edit',compact('pid'));
        return $this->ajaxReturn($view->render(),1,'','新增菜单');
    }

    /**
     * 菜单修改
     * @author xingyonghe
     * @date 2016-11-10
     * @param int $id
     * @return
     */
    public function edit(int $id){
        $info = D('SysMenu')->find($id);
        $pid = $info['pid'];
        $view = view('admin.menu.edit',compact('info','pid'));
        return $this->ajaxReturn($view->render(),1,'','修改菜单');
    }

    /**
     * 菜单更新
     * @author xingyonghe
     * @date 2016-11-10
     * @param MenuRequest $request
     * @return
     */
    public function update(MenuRequest $request){
        $resualt = D('SysMenu')->updateData($request->all());
        if($resualt){
            cache()->forget('MENUS_LIST');
            return $this->ajaxReturn(isset($resualt['id'])?'菜单信息修改成功':'菜单信息新增成功',1,url()->previous());
        }else{
            return $this->ajaxReturn(D('SysMenu')->getError());
        }
    }

    /**
     * 菜单删除
     */
    public function destroy($id){
        $datas = SysMenu::find($id);
        if($datas->delete()){
            return redirect()->back()->withSuccess('删除信息成功!');
        }else{
            return redirect()->back()->with('error','删除信息失败');
        }
    }

    /**
     * 批量菜单新增
     */
    public function batch($pid){
        if(Request::ajax()){
            $view = view('admin.menu.batch',compact('pid'));
            return Response::json(array('html'=>$view->render(),'status'=>1,'title'=>'批量新增菜单'));
        }else{
            return redirect()->back()->with('error','请求超时');
        }
    }

    /**
     * 批量菜单更新
     */
    public function batchUpdate(HttpRequest $request){
        $tree = $request->menus;
        $lists = explode(',',str_replace(array("\r\n","\n","\r"),',',$tree));
        if($lists == array('0'=>'')){
            return Response::json(array('error'=> '请按格式填写批量导入的至少一条菜单信息','status'=>0));
        }
        foreach ($lists as $key => $item) {
            $record = explode('|', $item);
            SysMenu::create(array(
                'title'=>$record[0],
                'url'=>$record[2],
                'pid'=>$request->pid,
                'sort'=>$record[1],
                'hide'=>$record[3],
                'group'=>$record[4]?$record[4]:'',
            ));
        }
        return Response::json(array('success'=> '菜单批量新增成功','status'=>1,'url'=>URL::previous()));
    }




}
