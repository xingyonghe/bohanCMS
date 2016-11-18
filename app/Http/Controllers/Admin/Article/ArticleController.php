<?php

namespace App\Http\Controllers\Admin\Article;

use App\Http\Requests\Admin\ArticleRequest;
use App\Http\Controllers\Admin\CommonController;//公用控制器

class ArticleController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Article Controller
    | @author xingyonghe
    | @date 2016-11-18
    |--------------------------------------------------------------------------
    |
    | 内容控制器
    |
    */
    protected $model = 'article';//内容模块分组标识
    /**
     * 列表
     * @author: xingyonghe
     * @date: 2016-11-18
     * @return mixed
     */
    public function index(){
        $title = (string)request()->get('title','');
        $lists = D('Article')
            ->select(['id', 'title', 'descrition', 'status', 'catid','author','quote','created_at', 'updated_at','view'])
            ->where('status',D('Article')::STATUS_NORMAL)
            ->where(function ($query) use($title) {
                if($title){
                    $query->where('title','like','%'.$title.'%');
                }
            })
            ->orderBy('created_at', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);

        foreach($lists as $key=>&$item){
            $item['catid_text'] = D('Category')->getCateName($this->model,$item['catid']);
        }
        $params = array(
            'title' => $title
        );
        return view('admin.article.index',compact('lists','params'));
    }

    /**
     * 新增
     * @author: xingyonghe
     * @date: 2016-11-18
     * @return mixed
     */
    public function create(){
        $trees = D('Category')->getTree($this->model);
        return view('admin.article.edit',compact('trees'));
    }

    /**
     * 编辑
     * @author: xingyonghe
     * @date: 2016-11-18
     * @param $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function edit(int $id){
        $info = D('Article')->findOrFail($id);
        $trees = D('Category')->getTree($this->model);
        return view('admin.article.edit',compact('info','trees'));
    }

    /**
     * 更新
     * @author: xingyonghe
     * @date: 2016-11-18
     * @param AdminRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(ArticleRequest $request){
        $data = $request->all();
        if(empty($data['descrition'])){
            $data['descrition'] = msubstr(strip_tags($data['content']),0,150);
        }
        $resualt = D('Article')->updateData($data);
        if($resualt){
            return $this->ajaxReturn(isset($resualt['id'])?'内容信息修改成功':'内容信息添加成功',1,route('admin.article.index'));
        }else{
            return $this->ajaxReturn(D('Article')->getError());
        }
    }


    /**
     * 删除，状态变为-1
     * @author: xingyonghe
     * @date: 2016-11-18
     * @param $id
     * @return mixed
     */
    public function destroy(int $id){
        $info    = D('Article')->findOrFail($id);
        $resualt = D('Article')->where('id',$id)->update(array('status'=>-1));
        if($resualt){
            return redirect()->back()->withSuccess('删除信息成功!');
        }else{
            return redirect()->back()->with('error','删除信息失败');
        }
    }


    /**
     * 回收站
     * @author: xingyonghe
     * @date: 2016-11-18
     * @param $id
     * @return mixed
     */
    public function recycle(){
        $title = (string)request()->get('title','');
        $lists = D('Article')
            ->select(['id', 'title', 'descrition', 'status', 'catid','author','quote','created_at', 'updated_at','view'])
            ->where('status',D('Article')::STATUS_DELETE)
            ->where(function ($query) use($title) {
                if($title){
                    $query->where('title','like','%'.$title.'%');
                }
            })
            ->orderBy('created_at', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);

        foreach($lists as $key=>&$item){
            $item['catid_text'] = D('Category')->getCateName($this->model,$item['catid']);
        }
        $params = array(
            'title' => $title
        );
        return view('admin.article.recycle',compact('lists','params'));
    }
    




}
