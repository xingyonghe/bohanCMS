<?php

namespace App\Http\Controllers\Admin\User;

use App\Http\Controllers\Admin\CommonController;
use App\Http\Requests\Admin\AuthGroupRequest;

class GroupController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Group Controller
    | @author xingyonghe
    | @date 2016-11-16
    |--------------------------------------------------------------------------
    |
    | 管理员权限控制器
    |
    */
    /**
     * 权限分组列表
     * @author: xingyonghe
     * @date: 2016-11-16
     * @return mixed
     */
    public function index(){
        $lists = D('SysAuthGroup')
            ->select(['id', 'title', 'description', 'status'])
            ->orderBy('id', 'asc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);

        $this->intToString($lists,array(
            'status' => D('SysAuthGroup')::STATUS_TEXT
        ));

        return view('admin.group.index',compact('lists'));
    }

    /**
     * 新增用户组
     * @author: xingyonghe
     * @date: 2016-11-16
     * @return \Illuminate\Http\JsonResponse
     */
    public function create(){
        $view = view('admin.group.edit');
        return $this->ajaxReturn($view->render(),1,'','新增用户组');
    }

    /**
     * 编辑用户组
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function edit(int $id){
        $info = D('SysAuthGroup')->where('id','>',1)->find($id);
        $view = view('admin.group.edit',compact('info'));
        return $this->ajaxReturn($view->render(),1,'','编辑用户组');
    }

    /**
     * 用户组更新
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param AuthGroupRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(AuthGroupRequest $request){
        $resault = D('SysAuthGroup')->updateData($request->all());
        if($resault){
            cache()->forget('GROUP_LIST');
            return $this->ajaxReturn(isset($resualt['id'])?'用户组修改成功':'用户组新增成功',1,url()->previous());
        }else{
            return $this->ajaxReturn(D('SysAuthGroup')->getError());
        }
    }

    /**
     * 删除用户组
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param $id
     * @return mixed
     */
    public function destroy(int $id){
        $resault = D('SysAuthGroup')->where('id','>',1)->destroy($id);
        if($resault){
            cache()->forget('GROUP_LIST');
            return redirect()->back()->withSuccess('删除用户组成功!');
        }else{
            return redirect()->back()->withErrors('error','删除用户组失败');
        }
    }

    /**
     * 用户组授权
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param $id 用户组ID
     * @return mixed
     */
    public function access(int $id){
        //把菜单节点更新到权限节点表中
        D('SysAuthRule')->updateRules();
        //所有菜单
        $nodeList   = D('SysMenu')->returnNodes();
        //url节点
        $childRules = D('SysAuthRule')->getRules(D('SysAuthRule')::RULE_URL);
        $childRules = array_pluck($childRules,'id','name');

        //主菜单节点
        $mainRules  = D('SysAuthRule')->getRules(D('SysAuthRule')::RULE_MAIN);
        $mainRules = array_pluck($mainRules,'id','name');
//        dump($childRules);dump($mainRules);dd($nodeList);
        //已设置的组权限
        $data = D('SysAuthGroup')->select('rules')->findOrFail($id)->toArray();
        $thisRules = json_encode($data['rules']);

        $groupId = $id;
        return view('admin.group.access',compact('nodeList','mainRules','childRules','groupId','thisRules'));
    }

    /**
     * 更新权限组
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param Request $request
     * @return $this|\Illuminate\Http\RedirectResponse
     */
    public function write(){
        $rules = request()->rules;
        $id    = request()->id;
        $info = D('SysAuthGroup')->findOrFail($id);
        $resault = $info->update(array('rules'=>$rules));
        if($resault){
            return redirect(route('admin.group.index'))->withSuccess('更新用户组权限成功!');
        }else{
            return redirect()->back()->with('error','更新用户组权限失败');
        }
    }




}
