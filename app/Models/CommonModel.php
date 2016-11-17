<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CommonModel extends Model{
    /*
    |--------------------------------------------------------------------------
    | Common Model
    | @author xingyonghe
    | @date 2016-11-10
    |--------------------------------------------------------------------------
    |
    | 公用模型
    |
    */
    //定义错误信息
    protected $error   = '';
    //用于树型数组完成递归格式的全局变量
    protected $formatTree = array();

    /**
     * 后台列表查询
     * @param int $limit
     * @param array $map
     * @param array $order
     * @return mixed
     */
    public function adminLists($map = array(), $order = 'created_at', $sort = 'desc', $page = 10){
        $list = $this->where($map)->orderBy($order, $sort)->paginate($page);
        return $list;
    }

    /**
     * 列表查询
     * @param int $limit
     * @param array $map
     * @param array $order
     * @return mixed
     */
    public function listing($map = array(), $order = 'created_at', $sort = 'desc', $page = 10){
        $list = $this
            ->where($map)
            ->orderBy($order, $sort)
            ->paginate($page);
        return $list;
    }


    /**
     * 更新/新增数据
     * @param $data 表单数据
     * @return bool
     */
    public function updateData($data){
        if(empty($data['id'])){
            //新增
            $resualt = $this->create($data);
            if($resualt === false){
                $this->error = '新增信息失败';
                return false;
            }
        }else{
            //编辑
            $info = $this->find($data['id']);
            if(empty($info) || $info->update($data)===false){
                $this->error = '修改信息失败';
                return false;
            }
        }
        return $data;
    }

    /**
     * 返回模型的错误信息
     * @return string
     */
    public function getError(){
        return $this->error;
    }

    /**
     * 将格式数组转换为树
     * @param $list
     * @param string $title
     * @param string $pk
     * @param string $pid
     * @param int $root
     * @return mixed
     */
    protected function toFormatTree($list,$title = 'title',$pk='id',$pid = 'pid',$root = 0){
        $list = $this->list_to_tree($list,$pk,$pid,'_child',$root);
        $this->_toFormatTree($list,0,$title);
        return $this->formatTree;
    }

    /**
     * 把返回的数据集转换成Tree
     * @param array $list 要转换的数据集
     * @param string $pid parent标记字段
     * @param string $level level标记字段
     * @return array
     */
    protected function list_to_tree($list, $pk='id', $pid = 'pid', $child = '_child', $root = 0) {
        // 创建Tree
        $tree = array();
        if(is_array($list)) {
            // 创建基于主键的数组引用
            $refer = array();
            foreach ($list as $key => $data) {
                $refer[$data[$pk]] =& $list[$key];
            }
            foreach ($list as $key => $data) {
                // 判断是否存在parent
                $parentId =  $data[$pid];
                if ($root == $parentId) {
                    $tree[] =& $list[$key];
                }else{
                    if (isset($refer[$parentId])) {
                        $parent =& $refer[$parentId];
                        $parent[$child][] =& $list[$key];
                    }
                }
            }
        }
        return $tree;
    }

    /**
     * 将格式数组转换为树
     * @param array $list
     * @param integer $level 进行递归时传递用的参数
     */

    protected function _toFormatTree($list,$level=0,$title = 'title') {
        foreach($list as $key=>$val){
            $tmp_str=str_repeat("&nbsp;",$level*2);
            $tmp_str.=" ∟";
            $val['level'] = $level;
            $val['title_show'] =$level==0?$val[$title]."&nbsp;":$tmp_str.$val[$title]."&nbsp;";
            if(!array_key_exists('_child',$val)){
                array_push($this->formatTree,$val);
            }else{
                $tmp_ary = $val['_child'];
                unset($val['_child']);
                array_push($this->formatTree,$val);
                $this->_toFormatTree($tmp_ary,$level+1,$title); //进行下一层递归
            }
        }
        return;
    }
}
