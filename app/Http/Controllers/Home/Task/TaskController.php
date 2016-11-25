<?php

namespace App\Http\Controllers\Home\Task;

use App\Http\Controllers\Home\CommonController;
use SEO;

class TaskController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Task Controller
    | @author xingyonghe
    | @date 2016-11-25
    |--------------------------------------------------------------------------
    |
    | 前台广告主派单控制器
    |
    */
    protected $channel_id = 3;//设置导航选中标志
    public function __construct(){
        view()->share('channel_id',$this->channel_id);
    }

    /**
     * 派单列表
     * @author: xingyonghe
     * @date: 2016-11-25
     */
    public function index(){
        $lists = D('UserAdsTask')
            ->whereIn('status',[D('UserAdsTask')::STATUS_1,D('UserAdsTask')::STATUS_4])
            ->orderBy('created_at','desc')
            ->paginate(10);
        $this->intToString($lists,array(
            'status' => D('UserAdsTask')::STATUS_TEXT,
        ));
        SEO::setTitle(C('WEB_SITE_TITLE').'-派单大厅');
        return view('home.task.index',compact('lists'));
    }

    /**
     * 派单详情
     * @author: xingyonghe
     * @date: 2016-11-25
     * @param int $id
     */
    public function show(int $id){
        $info = D('UserAdsTask')
            ->whereIn('status',[D('UserAdsTask')::STATUS_1,D('UserAdsTask')::STATUS_4])
            ->findOrFail($id);
        SEO::setTitle(C('WEB_SITE_TITLE').'-派单详情-'.$info['title']);
        return view('home.task.show',compact('info'));
    }






}
