<?php

namespace App\Http\Controllers\Ads;

use App\Http\Controllers\Controller;
use SEO;
use App\Models\UserAdsTask;
use App\Models\UserPlatform;

class TaskController extends Controller{
    /*
    |--------------------------------------------------------------------------
    | Task Controller
    | @author xingyonghe
    | @date 2016-11-24
    |--------------------------------------------------------------------------
    |
    | 推广管理
    |
    */
    protected $navkey = 'task';//菜单标识
    public function __construct(){
        view()->share('navkey',$this->navkey);//用于设置头部菜单高亮
        view()->composer(['ads.task.edit'],function($view){
            $view->with('shape_arr',parse_config_attr(C('ADS_TASK_TYPE')));//活动广告类型
        });
        view()->composer(['ads.task.index','ads.task.edit'],function($view){
            $view->with('type_arr',parse_config_attr(C('NETRED_TYPE')));//资源类型，活动投放类型关联这个
        });
    }

    /**
     * 推广管理
     * @author: xingyonghe
     * @date: 2016-11-24
     * @return mixed
     */
    public function index(){
        $lists = UserAdsTask::where('userid',auth()->id())
            ->where('status','>',UserAdsTask::STATUS_D)
            ->orderBy('created_at','desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        $this->intToString($lists,array(
            'status' => UserAdsTask::STATUS_TEXT,
        ));
        SEO::setTitle('推广管理-广告主中心-'.C('WEB_SITE_TITLE'));
        return view('ads.task.index',compact('lists'));
    }

    /**
     * 发布推广活动
     * @author: xingyonghe
     * @date: 2016-11-24
     * @return mixed
     */
    public function create(){
        SEO::setTitle('发布推广活动-广告主中心-'.C('WEB_SITE_TITLE'));
        return view('ads.task.edit');
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
        $info = UserAdsTask::where('userid',auth()->id())
            ->whereIn('status',[UserAdsTask::STATUS_6,UserAdsTask::STATUS_3])
            ->findOrFail($id);
        SEO::setTitle('修改推广活动-广告主中心-'.C('WEB_SITE_TITLE'));
        return view('ads.task.edit',compact('info'));
    }

    /**
     * 活动更新
     * @author: xingyonghe
     * @date: 2016-11-25
     * @return
     */
    public function update(){
        $data = request()->all();
        $rules = [
            'title'      => 'required|max:100',
            'money'      => 'required|money',
            'logo'       => 'required',
            'start_time' => 'required|date',
            'end_time'   => 'required|date|after:start_time',
            'dead_time'  => 'required|date|before:start_time',
            'num'        => 'required|positive_integer',
            'shape'      => 'required',
            'type'       => 'required',

        ];
        $msgs = [
            'title.required'      => '请填写活动名称',
            'title.max'           => '活动名称长度不能超过100个字',
            'money.required'      => '请填写预算金额',
            'money.money'         => '预算金额格式不正确',
            'logo.required'       => '请上传推广logo',
            'start_time.required' => '请选择投放开始时间',
            'start_time.date'     => '投放开始时间格式错误',
            'end_time.required'   => '请选择投放结束时间',
            'end_time.date'       => '投放结束时间格式错误',
            'end_time.after'      => '投放结束时间不能在开始时间之前',
            'dead_time.required'  => '请填写需求截至时间',
            'dead_time.date'      => '需求截至时间格式错误',
            'dead_time.before'    => '截至时间必须在开始时间之前',
            'num.required'        => '请填写需要网红的数量',
            'num.positive_integer'=> '需要投放的数量必须是大于0的整数',
            'shape.required'      => '请选择广告类型',
            'type.required'       => '请选择投放类型',

        ];
        $validator = validator()->make($data,$rules,$msgs);
        if ($validator->fails()) {
            return $this->ajaxValidator($validator);
        }
        $data['userid']     = auth()->id();
        $data['status'] = UserAdsTask::STATUS_6;
        $resualt = UserAdsTask::toUpdate($data);
        if($resualt){
            if(isset($resualt['id'])){
                return $this->ajaxReturn('派单信息修改成功!',1,route('ads.task.index'));
            }else{
                return $this->ajaxReturn('推广活动发布成功,正在跳转支付界面...',1,route('ads.task.index'));
            }
        }else{
            return $this->ajaxReturn('操作失败，请稍后再试');
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
        $info = UserAdsTask::where('userid',auth()->id())
            ->whereIn('status',[UserAdsTask::STATUS_1,UserAdsTask::STATUS_3,UserAdsTask::STATUS_4])
            ->findOrFail($id);
        $resualt = $info->update(array('status'=>UserAdsTask::STATUS_D));
        if($resualt){
            return $this->ajaxReturn('信息删除成功',1,url()->previous());
        }else{
            return $this->ajaxReturn('信息删除失败');
        }
    }





}
