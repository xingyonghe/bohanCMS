<?php

namespace App\Http\Controllers\Member\Ads;

use App\Http\Controllers\Member\CommonController;
use SEO;

class TaskController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Task Controller
    | @author xingyonghe
    | @date 2016-11-24
    |--------------------------------------------------------------------------
    |
    | 会员中心派单大厅
    |
    */
    protected $navkey = 'task';//菜单标识
    public function __construct(){
        view()->share('navkey',$this->navkey);//用于设置头部菜单高亮
    }

    /**
     * 我的派单
     * @author: xingyonghe
     * @date: 2016-11-24
     * @return mixed
     */
    public function index(){
        $lists = D('UserAdsTask')
            ->where('userid',auth()->id())
            ->where('status','>',D('UserAdsTask')::STATUS_D)
            ->orderBy('created_at','desc')
            ->paginate(10);
        $this->intToString($lists,array(
            'status' => D('UserAdsTask')::STATUS_TEXT,
        ));
        SEO::setTitle(C('WEB_SITE_TITLE').'-会员中心-我的派单');
        return view('member.task.index',compact('lists'));
    }

    /**
     * 新增派单
     * @author: xingyonghe
     * @date: 2016-11-24
     * @return mixed
     */
    public function create(){
        SEO::setTitle(C('WEB_SITE_TITLE').'-会员中心-新增派单');
        return view('member.task.edit');
    }

    /**
     * 修改派单
     * @return
     */
    public function edit(int $id){
        //允许修改的状态条件
        $info = D('UserAdsTask')
            ->where('userid',auth()->id())
            ->whereIn('status',[D('UserAdsTask')::STATUS_CREATE,D('UserAdsTask')::STATUS_FAILED])
            ->findOrFail($id);
        return view('member.task.edit',compact('info'));
    }

    /**
     * 网红列表更新
     * @return
     */
    public function update(){
        $data = request()->all();
        if(empty($data['platform'])){
            $data['platform'] = $data['platform_select'];
        }
        unset($data['platform_select']);
        $rules = [
            'avatar'     => 'required',
            'username'   => 'required',
            'type'       => 'required',
            'platform'   => 'required',
            'room_id'    => 'required',
            'homepage'   => 'required',
            'form_money' => 'required',
        ];
        $msgs = [
            'avatar.required'     => '请上传头像',
            'avatar.image'        => '头像格式不正确',
            'username.required'   => '请填写用户名',
            'type.required'       => '请选择资源类别',
            'platform.required'   => '请选择直播平台',
            'room_id.required'    => '请填写直播平台房间号',
            'homepage.required'   => '请填写直播平台ID',
            'form_money.required' => '请填写展现形式及报价',
        ];
        $validator = validator()->make($data,$rules,$msgs);
        if ($validator->fails()) {
            return $this->ajaxValidator($validator);
        }
        $resualt = D('UserAdsTask')->updateData($data);
        if($resualt){
            return $this->ajaxReturn(isset($resualt['id'])?'网红信息修改成功!':'网红信息添加成功!',1,route('user.star.index'));
        }else{
            return $this->ajaxReturn(D('UserAdsTask')->getError());
        }
    }

    /**
     * 删除信息
     * @param int $id
     * @return
     */
    public function destroy(int $id){
        $info = D('UserAdsTask')
            ->where('userid',auth()->id())
            ->whereIn('status',[D('Media')::STATUS_CREATE,D('UserAdsTask')::STATUS_FAILED])
            ->find($id);
        if(empty($info)){
            return $this->ajaxReturn('信息删除失败');
        }
        $resualt = $info->update(array('status'=>D('UserAdsTask')::STATUS_DELETE));
        if($resualt){
            return $this->ajaxReturn('信息删除成功',1,url()->previous());
        }else{
            return $this->ajaxReturn('信息删除失败');
        }
    }





}
