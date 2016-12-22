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
     * @author: xingyonghe
     * @date: 2016-11-25
     * @param int $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit(int $id){
        //允许修改的状态条件
        $info = D('UserAdsTask')
            ->where('userid',auth()->id())
            ->whereIn('status',[D('UserAdsTask')::STATUS_1,D('UserAdsTask')::STATUS_3])
            ->findOrFail($id);
        SEO::setTitle(C('WEB_SITE_TITLE').'-会员中心-修改派单');
        return view('member.task.edit',compact('info'));
    }

    /**
     * 派单更新
     * @author: xingyonghe
     * @date: 2016-11-25
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(){
        $data = request()->all();
        $rules = [
            'title'      => 'required|max:50',
            'money'      => 'required|money',
            'start_time' => 'required|date',
            'end_time'   => 'required|date|after:start_time',
            'num'        => 'required|positive_integer',
            'name'       => 'required',
            'mobile'     => 'required|mobile',
            'email'      => 'sometimes|email',
            'shape'      => 'required',
            'demand'     => 'required',
            'dead_time'  => 'required|date|before:start_time',
        ];
        $msgs = [
            'title.required'      => '请填写活动名称',
            'title.max'           => '活动名称长度不能超过50个字',
            'money.required'      => '请填写预算金额',
            'money.money'         => '预算金额格式不正确',
            'start_time.required' => '请选择执行开始时间',
            'start_time.date'     => '执行开始时间格式错误',
            'end_time.required'   => '请选择执行结束时间',
            'end_time.date'       => '执行结束时间格式错误',
            'end_time.after'      => '执行结束时间不能在开始时间之前',
            'num.required'        => '请填写需要媒体的数量',
            'num.positive_integer'=> '需要媒体的数量必须是大于0的整数',
            'name.required'       => '请填写联系人',
            'mobile.required'     => '请填写联系方式',
            'mobile.mobile'       => '联系方式格式错误',
            'email.email'         => 'E-mail格式错误',
            'shape.required'      => '请填写广告形式',
            'demand.required'     => '请填写广告需求',
            'dead_time.required'  => '请填写需求截至时间',
            'dead_time.date'      => '需求截至时间格式错误',
            'dead_time.before'    => '截至时间必须在开始时间之前',
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
     * 删除派单
     * @author: xingyonghe
     * @date: 2016-11-25
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(int $id){
        $info = D('UserAdsTask')
            ->where('userid',auth()->id())
            ->whereIn('status',[D('UserAdsTask')::STATUS_1,D('UserAdsTask')::STATUS_3,D('UserAdsTask')::STATUS_4])
            ->findOrFail($id);
        $resualt = $info->update(array('status'=>D('UserAdsTask')::STATUS_D));
        if($resualt){
            return $this->ajaxReturn('信息删除成功',1,url()->previous());
        }else{
            return $this->ajaxReturn('信息删除失败');
        }
    }





}
