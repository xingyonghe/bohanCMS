<?php

namespace App\Http\Controllers\Admin\Star;

use App\Http\Controllers\Admin\CommonController;
use App\Models\UserAdform;

class AdformController extends CommonController
{
    /*
    |--------------------------------------------------------------------------
    | Adform Controller
    | @author xingyonghe
    | @date 2016-12-24
    |--------------------------------------------------------------------------
    |
    | 广告形式管理控制器
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
        $lists = UserAdform::orderBy('sort', 'asc')
            ->paginate(100);
        return view('admin.adform.index',compact('lists'));
    }

    /**
     * 新增
     * @author xingyonghe
     * @date 2016-12-24
     * @return
     */
    public function create()
    {
        $view = view('admin.adform.edit');
        return $this->ajaxReturn($view->render(),1,'','新增广告形式');
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
        $info = UserAdform::find($id);
        $view = view('admin.adform.edit',compact('info'));
        return $this->ajaxReturn($view->render(),1,'','编辑广告形式');
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
        $resault = UserAdform::toUpdate(request()->all());
        if($resault){
            return $this->ajaxReturn(isset($resault['id'])?'广告形式修改成功':'广告形式新增成功',1,url()->previous());
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
        $resualt = UserAdform::destroy($id);
        if($resualt){
            return redirect()->back()->withSuccess('广告形式信息成功!');
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
        $datas = UserAdform::orderBy('sort','asc')->pluck('name','id');
        $view = view('admin.adform.sort',compact('datas'));
        return $this->ajaxReturn($view->render(),1,'','广告形式排序');
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
            $adform = UserAdform::find($id);
            $adform->update(['sort'=>$sort+1]);
        }
        return $this->ajaxReturn('广告形式排序成功',1,url()->previous());
    }



}
