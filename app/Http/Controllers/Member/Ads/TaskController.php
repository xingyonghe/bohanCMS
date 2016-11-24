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
        SEO::setTitle(C('WEB_SITE_TITLE').'-会员中心-修改派单');
        return view('member.task.edit',compact('info'));
    }

    /**
     * 派单更新
     * @return
     */
    public function update(){
        $data = request()->all();
        $rules = [
            'title'      => 'required',
            'money'      => 'required',
            'start_time' => 'required',
            'end_time'   => 'required',
            'num'        => 'required',
            'name'       => 'required',
            'mobile'     => 'required',
            'shape'      => 'required',
            'demand'     => 'required',
            'dead_time'  => 'required',
        ];
        $msgs = [
            'title.required'      => '请填写活动名称',
            'money.required'      => '请填写预算金额',
            'money.money'         => '预算金额格式不正确',
            'start_time.required' => '请选择执行开始时间',
            'end_time.required'   => '请选择执行结束时间',
            'num.required'        => '请填写需要媒体的数量',
            'name.required'       => '请填写联系人',
            'mobile.required'     => '请填写联系方式',
            'shape.required'      => '请填写广告形式',
            'demand.required'     => '请填写广告需求',
            'dead_time.required'  => '请填写需求截至时间',
        ];
        $validator = validator()->make($data,$rules,$msgs);
        if ($validator->fails()) {
            return $this->ajaxValidator($validator);
        }
        $data['userid']     = auth()->id();
        $data['start_time'] = \Carbon\Carbon::parse($data['start_time']);
        $data['end_time']   = \Carbon\Carbon::parse($data['end_time']);
        $data['dead_time']  = \Carbon\Carbon::parse($data['dead_time']);
        $data['status'] = D('UserAdsTask')::STATUS_1;
        $resualt = D('UserAdsTask')->updateData($data);
        if($resualt){
            return $this->ajaxReturn(isset($resualt['id'])?'派单信息修改成功!':'派单信息添加成功!',1,route('member.task.index'));
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
