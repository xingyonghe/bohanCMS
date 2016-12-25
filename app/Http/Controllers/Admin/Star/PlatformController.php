<?php

namespace App\Http\Controllers\Admin\Star;

use App\Http\Controllers\Admin\CommonController;
use App\Models\UserPlatform;

class PlatformController extends CommonController
{
    /*
    |--------------------------------------------------------------------------
    | Platform Controller
    | @author xingyonghe
    | @date 2016-12-24
    |--------------------------------------------------------------------------
    |
    | 平台管理控制器
    |
    */

    /**
     * 列表
     * @author xingyonghe
     * @date 2016-12-24
     * @return
     */
    public function index()
    {
        $lists = UserPlatform::orderBy('sort', 'asc')
            ->paginate(100);
        return view('admin.platform.index',compact('lists'));
    }

    /**
     * 新增
     * @author xingyonghe
     * @date 2016-12-24
     * @return
     */
    public function create()
    {
        $view = view('admin.platform.edit');
        return $this->ajaxReturn($view->render(),1,'','新增平台信息');
    }

    /**
     * 修改
     * @author xingyonghe
     * @date 2016-12-24
     * @param int $id
     * @return
     */
    public function edit(int $id)
    {
        $info = UserPlatform::find($id);
        $view = view('admin.platform.edit',compact('info'));
        return $this->ajaxReturn($view->render(),1,'','编辑平台信息');
    }

    /**
     * 更新
     * @author: xingyonghe
     * @date: 2016-12-24
     * @param MenuRequest $request
     * @return mixed
     */
    public function update()
    {
        $resault = UserPlatform::toUpdate(request()->all());
        if($resault){
            return $this->ajaxReturn(isset($resault['id'])?'平台信息修改成功':'平台信息新增成功',1,url()->previous());
        }else{
            return $this->ajaxReturn('操作失败，请稍后再试');
        }
    }

    /**
     * 删除
     * @author: xingyonghe
     * @date: 2016-12-24
     * @param $id
     * @return mixed
     */
    public function destroy(int $id)
    {
        $resualt = UserPlatform::destroy($id);
        if($resualt){
            return redirect()->back()->withSuccess('删除平台信息成功!');
        }else{
            return redirect()->back()->with('error','删除平台信息失败');
        }
    }

    /**
     * 导航排序
     * @author: xingyonghe
     * @date: 2016-12-24
     * @return
     */
    public function sort()
    {
        $datas = UserPlatform::orderBy('sort','asc')->pluck('name','id');
        $view = view('admin.platform.sort',compact('datas'));
        return $this->ajaxReturn($view->render(),1,'','平台排序');
    }

    /**
     * 更新排序
     * @author: xingyonghe
     * @date: 2016-12-24
     * @return
     */
    public function order()
    {
        $ids = request()->ids;
        $ids = explode(',', $ids);
        foreach ($ids as $sort=>$id){
            $platform = UserPlatform::find($id);
            $platform->update(['sort'=>$sort+1]);
        }
        return $this->ajaxReturn('平台信息排序成功',1,url()->previous());
    }



}
