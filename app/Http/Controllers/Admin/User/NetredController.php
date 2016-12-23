<?php

namespace App\Http\Controllers\Admin\User;

use App\Http\Controllers\Admin\CommonController;
use App\Http\Requests\Admin\AdminRequest;
use App\Models\User;

class NetredController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Netred Controller
    | @author xingyonghe
    | @date 2016-12-23
    |--------------------------------------------------------------------------
    |
    | 网红用户控制器
    |
    */

    /**
     * 列表
     * @author xingyonghe
     * @date 2016-12-23
     * @return
     */
    public function index(){
        $username = (string)request()->get('username','');
        $lists = User::where('type',User::USER_TYPE_NETRED)
            ->where(function ($query) use($username) {
                if($username){
                    $query->where('username','like','%'.$username.'%');
                }
            })
            ->orderBy('id', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        $params = [
            'username'=>$username,
        ];
        $this->intToString($lists,['status'=>User::STATUS_TEXT]);
        return view('admin.netred.index',compact('lists','params'));
    }

    /**
     * 新增
     * @author xingyonghe
     * @date 2016-11-16
     * @return
     */
    public function create(){
        $groups = D('SysAuthGroup')->getGroup();
        $view = view('admin.warden.create',compact('groups'));
        return $this->ajaxReturn($view->render(),1,'','新增管理员账号');
    }

    /**
     * 添加
     * @author xingyonghe
     * @date 2016-11-16
     * @param AdminRequest $request
     * @return
     */
    public function add(AdminRequest $request){
        $info = D('SysAdmin')->where(array(['username','=',$request->username],['status','>','-1']))->first();
        if(!empty($info)){
            return $this->ajaxReturn('管理员账号已存在');
        }
        $resault = D('SysAdmin')->updateData($request->all());
        if($resault){
            return $this->ajaxReturn('管理员信息添加成功',1,url()->previous());
        }else{
            return $this->ajaxReturn(D('SysAdmin')->getError());
        }
    }

    /**
     * 修改
     * @author xingyonghe
     * @date 2016-11-16
     * @param int $id
     * @return
     */
    public function edit(int $id){
        $info = D('SysAdmin')->find($id);
        $groups = D('SysAuthGroup')->getGroup();
        $view = view('admin.warden.edit',compact('info','groups'));
        return $this->ajaxReturn($view->render(),1,'','编辑管理员账号');
    }

    /**
     * 更新
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param MenuRequest $request
     * @return mixed
     */
    public function update(){
        $resault = D('SysAdmin')->updateData(request()->only(['nickname','role_id','id','status']));
        if($resault){
            return $this->ajaxReturn('修改管理员信息新增成功',1,url()->previous());
        }else{
            return $this->ajaxReturn(D('SysAdmin')->getError());
        }
    }

    /**
     * 删除（-1）
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param $id
     * @return mixed
     */
    public function destroy(int $id){
        $info = D('SysAdmin')->findOrFail($id);
        $resualt = $info->update(array('status'=>-1));
        if($resualt){
            return redirect()->back()->withSuccess('删除管理员信息成功!');
        }else{
            return redirect()->back()->with('error','删除管理员信息失败');
        }
    }

    /**
     * 禁用，状态变为0
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param $id
     * @return mixed
     */
    public function forbid(int $id){
        $info = D('SysAdmin')->findOrFail($id);
        $resualt = $info->update(array('status'=>0));
        if($resualt){
            return redirect()->back()->withSuccess('禁用管理员信息成功!');
        }else{
            return redirect()->back()->with('error','禁用管理员信息失败');
        }
    }

    /**
     * 启用，状态变为1
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param $id
     * @return mixed
     */
    public function resume(int $id){
        $info = D('SysAdmin')->findOrFail($id);
        $resualt = $info->update(array('status'=>1));
        if($resualt){
            return redirect()->back()->withSuccess('启用管理员信息成功!');
        }else{
            return redirect()->back()->with('error','启用管理员信息失败');
        }
    }

    /**
     * 重置密码
     * @return mixed
     */
    public function resetpass(){
        return view('admin.admin.resetpass');
    }

    /**
     * 更新密码
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function updatepass(HttpRequest $request){
        $rules = [
            'username' => 'required|exists:sys_admin,username',
            'password' => 'required|min:6|confirmed',
        ];
        $messages = [
            'username.required'   => '请填写重置密码的账号',
            'username.exists'     => '账号信息不存在',
            'password.required'   => '请填写新密码',
            'password.min'        => '新密码不能低于6位数',
            'password.confirmed'  => '新密码确认不一致',
        ];
        //成功提示用redirect('admin/admin/resetpass')->withSuccess();视图判断Session::has('success')，视图调用消息Session::get('success')
        //错误提示用redirect()->back()->withInput()->with('error','msg');视图判断Session::has('success')，视图调用消息Session::get('success')
        //        return redirect()->back()->withInput()->with('errors','123123213123');die;
        //        return Redirect::back()->withErrors(['error'=>'新增失败！','status'=>0]);
        //        $this->validate($request, $rules, $messages);这样写用的是默认的错误返回，返回所有的错误提示
        //自己构造Validator::make可以自定义返回信息
        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->back()
                ->withInput()
                ->with('error',$validator->messages()->first());
        }
        $res = SysAdmin::resetPassword($request);
        if($res){
            return redirect()->back()->withSuccess('重置用户密码成功');
        }else{
            return redirect()->back()->withInput()->with('error','重置用户密码失败');
        }
    }






}
