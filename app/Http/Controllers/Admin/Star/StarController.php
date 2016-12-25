<?php

namespace App\Http\Controllers\Admin\Star;

use App\Http\Controllers\Admin\CommonController;
use App\Models\UserNetredStar;

class StarController extends CommonController
{
    /*
    |--------------------------------------------------------------------------
    | Satr Controller
    | @author xingyonghe
    | @date 2016-12-24
    |--------------------------------------------------------------------------
    |
    | 资源管理控制器
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
        $stage_name = (string)request()->get('stage_name','');
        $lists = UserNetredStar::where('status',UserNetredStar::STATUS_NORMAL)
            ->where(function ($query) use($stage_name) {
                if($stage_name){
                    $query->where('stage_name','like','%'.$stage_name.'%');
                }
            })
            ->orderBy('created_at', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        $this->intToString($lists,[
            'status'=> UserNetredStar::STATUS_TEXT,
        ]);
        $params = array(
            'stage_name' => $stage_name,
        );
        return view('admin.star.index',compact('lists','params'));
    }

    /**
     * 新增
     * @author xingyonghe
     * @date 2016-12-24
     * @return
     */
    public function create()
    {
        $view = view('admin.star.edit');
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
        $view = view('admin.star.edit',compact('info'));
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
 * 等待审核
 * @author xingyonghe
 * @date 2016-12-24
 * @return
 */
    public function verify()
    {
        $stage_name = (string)request()->get('stage_name','');
        $lists = UserNetredStar::whereIn('status',[UserNetredStar::STATUS_VERIFY,UserNetredStar::STATUS_FEILED])
            ->where(function ($query) use($stage_name) {
                if($stage_name){
                    $query->where('stage_name','like','%'.$stage_name.'%');
                }
            })
            ->orderBy('status', 'asc')
            ->orderBy('created_at', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        $this->intToString($lists,[
            'status'=> UserNetredStar::STATUS_TEXT,
        ]);
        $params = array(
            'stage_name' => $stage_name,
        );
        return view('admin.star.verify',compact('lists','params'));
    }

    /**
     * 回收站
     * @author xingyonghe
     * @date 2016-12-24
     * @return
     */
    public function recycle()
    {
        $stage_name = (string)request()->get('stage_name','');
        $lists = UserNetredStar::where('status',UserNetredStar::STATUS_DELETE)
            ->where(function ($query) use($stage_name) {
                if($stage_name){
                    $query->where('stage_name','like','%'.$stage_name.'%');
                }
            })
            ->orderBy('status', 'asc')
            ->orderBy('created_at', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        $this->intToString($lists,[
            'status'=> UserNetredStar::STATUS_TEXT,
        ]);
        $params = array(
            'stage_name' => $stage_name,
        );
        return view('admin.star.recycle',compact('lists','params'));
    }



}
