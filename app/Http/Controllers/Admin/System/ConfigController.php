<?php

namespace App\Http\Controllers\Admin\System;

use App\Http\Controllers\Admin\CommonController;
use App\Http\Requests\Admin\ConfigRequest;

class ConfigController extends CommonController{
    /*
       |--------------------------------------------------------------------------
       | Config Controller
       | @author xingyonghe
       | @date 2016-11-14
       |--------------------------------------------------------------------------
       |
       | 网站配置/设置控制器
       |
       */

    public function __construct(){
        view()->composer(['admin.config.edit'],function($view){
            //配置类型/配置分组
            $view->with('config_type',parse_config_attr(C('CONFIG_TYPE_LIST')))
                ->with('config_group',parse_config_attr(C('CONFIG_GROUP_LIST')))
                ->with('config_module',parse_config_attr(C('CONFIG_MODULE_LIST')));
        });
    }

    /**
     * 网站配置
     * @author xingyonghe
     * @date 2016-11-14
     */
    public function index(){
        $name = (string)request()->get('name','');
        $lists = D('SysConfig')
            ->select(['id', 'title', 'name','type','group','module'])
            ->where(function ($query) use($name) {
                if($name){
                    $query->where('name','like','%'.$name.'%');
                }
            })
            ->orderBy('created_at','desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        $this->intToString($lists,array(
            'group'=>parse_config_attr(C('CONFIG_GROUP_LIST')),
            'type'=>parse_config_attr(C('CONFIG_TYPE_LIST')),
            'module'=>parse_config_attr(C('CONFIG_MODULE_LIST'))
        ));
        $params = array('name'=>$name);
        return view('admin.config.index',compact('lists','params'));
    }

    /**
     * 新增
     * @author xingyonghe
     * @date 2016-11-14
     */
    public function create(){
        return view('admin.config.edit');
    }

    /**
     * 编辑
     * @author xingyonghe
     * @date 2016-11-14
     */
    public function edit(int $id){
        $info = D('SysConfig')->findOrFail($id);
        return view('admin.config.edit',compact('info'));
    }

    /**
     * 配置更新
     * @author xingyonghe
     * @date 2016-11-14
     * @param ConfigRequest $request
     * @return
     */
    public function update(ConfigRequest $request){
        $resualt = D('SysConfig')->updateData($request->all());
        if($resualt){
            cache()->forget('CONFIG_LIST');//更新配置缓存
            return $this->ajaxReturn(isset($resualt['id'])?'配置信息修改成功':'配置信息新增成功',1,route('admin.config.index'));
        }else{
            return $this->ajaxReturn(D('SysConfig')->getError());
        }
    }

    /**
     * 删除
     * @author xingyonghe
     * @date 2016-11-14
     */
    public function destroy($id){
        $resualt = D('SysConfig')->destroy($id);
        if($resualt){
            cache()->forget('CONFIG_LIST');//更新配置缓存
            return redirect()->back()->withSuccess('删除信息成功!');
        }else{
            return redirect()->back()->with('error','删除信息失败');
        }
    }

    /**
     * 网站设置
     */
    public function setting(int $group_id = 1){
        //取出所有配置分组
        $group = parse_config_attr(C('CONFIG_GROUP_LIST'));
        //这里只显示基本和系统的配置，其余的放在各自的模型去管理
        $group = array_where($group, function ($value, $key) {
            return $key<3;
        });
        $lists = D('SysConfig')
            ->where('group',$group_id)
            ->orderBy('sort','asc')
            ->get(['id','title', 'name','sort','type','group','value','extra','remark']);
        return view('admin.config.setting',compact('lists','group','group_id'));
    }

    /**
     * 更新网站设置
     * @author: xingyonghe
     * @date: 2016-11-17
     * @return mixed
     */
    public function post(){
        $config = request()->config;
        if($config && is_array($config)){
            foreach ($config as $name => $value) {
                $info = D('SysConfig')->where(array('name' => $name))->first();
                $info->update(array('value'=>$value));
            }
        }
        cache()->forget('CONFIG_LIST');//更新配置缓存
        return redirect()->back()->withSuccess('更新网站设置成功!');
    }
}
