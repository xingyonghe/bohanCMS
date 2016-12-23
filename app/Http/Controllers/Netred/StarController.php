<?php

namespace App\Http\Controllers\Netred;

use App\Http\Controllers\Controller;
use SEO;
use App\Models\UserNetredStar;

class StarController extends Controller{
    /*
    |--------------------------------------------------------------------------
    | Star Controller
    | @author xingyonghe
    | @date 2016-11-23
    |--------------------------------------------------------------------------
    |
    | 资源控制器
    |
    */
    protected $navkey = 'star';//菜单标识
    public function __construct()
    {
        view()->share('navkey',$this->navkey);//用于设置头部菜单高亮
        //新增/编辑共享直播平台数据
//        view()->composer(['user.star.edit','user.star.add'],function($view){
//            $view->with('mediaType',parse_config_attr(C('USER_MEDIA_TYPE')));
//        });
    }

    /**
     * 资源列表
     * @author: xingyonghe
     * @date: 2016-12-23
     *
     */
    public function index()
    {
        SEO::setTitle('资源管理-网红中心-'.C('WEB_SITE_TITLE'));
        $lists = UserNetredStar::where('userid',auth()->id())
            ->orderBy('created', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        $this->intToString($lists,['status'=>UserNetredStar::STATUS_TEXT]);
        return view('netred.star.index',compact('lists'));
    }

    /**
     * 添加直播
     * @author: xingyonghe
     * @date: 2016-12-23
     */
    public function live()
    {
        SEO::setTitle('添加直播-网红中心-'.C('WEB_SITE_TITLE'));
        return view('netred.star.live');
    }

    /**
     * 添加短视频
     * @author: xingyonghe
     * @date: 2016-12-23
     */
    public function video()
    {
        SEO::setTitle('添加短视频-网红中心-'.C('WEB_SITE_TITLE'));
        return view('netred.star.video');
    }



    /**
     * 网红修改
     * @return
     */
    public function edit(int $id){
        //允许修改的状态条件
        $info = D('Media')
            ->where('userid',auth()->id())
            ->whereIn('status',[D('Media')::STATUS_CREATE,D('Media')::STATUS_FAILED])
            ->findOrFail($id);
        return view('netred.star.edit',compact('info'));
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
        $resualt = D('Media')->updateData($data);
        if($resualt){
            return $this->ajaxReturn(isset($resualt['id'])?'网红信息修改成功!':'网红信息添加成功!',1,route('user.star.index'));
        }else{
            return $this->ajaxReturn(D('Media')->getError());
        }
    }

    /**
     * 删除信息
     * @param int $id
     * @return
     */
    public function destroy(int $id){
        $info = D('Media')
            ->where('userid',auth()->id())
            ->whereIn('status',[D('Media')::STATUS_CREATE,D('Media')::STATUS_FAILED])
            ->find($id);
        if(empty($info)){
            return $this->ajaxReturn('信息删除失败');
        }
        $resualt = $info->update(array('status'=>D('Media')::STATUS_DELETE));
        if($resualt){
            return $this->ajaxReturn('信息删除成功',1,url()->previous());
        }else{
            return $this->ajaxReturn('信息删除失败');
        }
    }






}
