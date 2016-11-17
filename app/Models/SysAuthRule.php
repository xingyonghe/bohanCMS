<?php

namespace App\Models;

class SysAuthRule extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | SysAuthRule Model
    | @author xingyonghe
    | @date 2016-11-16
    |--------------------------------------------------------------------------
    |
    | 管理员权限节点模型
    |
    */
    // 定义常量
    const RULE_ALL      = 0;//全部节点
    const RULE_URL      = 1;//url节点
    const RULE_MAIN     = 2;//主菜单节点
    protected $table    = 'sys_auth_rule';
    public $timestamps  = false;
    protected $fillable = [
        'title', 'type', 'name'
    ];

    /**
     * 把菜单节点更新到权限节点表中
     * @author: xingyonghe
     * @date: 2016-11-16
     * @return bool
     */
    public function updateRules(){
        //根据菜单获取最新的权限节点
        $nodes    = D('SysMenu')->returnNodes(false);

        //获取已有的所有节点
        $rules    = $this->getRules(self::RULE_ALL);

        //构建insert数据
        $data     = array();//保存需要插入和更新的新节点
        foreach ($nodes as $value){
            $temp['name']   = $value['url'];
            $temp['title']  = $value['title'];
            if($value['pid'] >0){
                $temp['type'] = self::RULE_URL;
            }else{
                $temp['type'] = self::RULE_MAIN;
            }
            $data[strtolower($temp['name'].$temp['type'])] = $temp;//去除重复项
        }

        $update = array();//保存需要更新的节点
        $ids    = array();//保存需要删除的节点的id
        foreach ($rules as $index=>$rule){
            $key = strtolower($rule['name'].$rule['type']);
            if ( isset($data[$key]) ) {//如果数据库中的规则与配置的节点匹配,说明是需要更新的节点
                $data[$key]['id'] = $rule['id'];//为需要更新的节点补充id值
                $update[] = $data[$key];
                unset($data[$key]);
                unset($rules[$index]);
                $diff[$rule['id']]=$rule;//把最新的菜单结果放入新的容器中
            }else{
                $ids[] = $rule['id'];
            }
        }
        \DB::transaction(function () use($data,$update,$ids,$diff){
            //创建新的节点
            if( count($data) ){
                cache()->forget('RULES_LIST');//更新权限规则缓存
                foreach ($data as $value){
                    $this->create($value);
                }
            }
            //更新存在的节点
            if ( count($update) ) {
                cache()->forget('RULES_LIST');//更新权限规则缓存
                foreach ($update as $k=>$row){
                    if ( $row != $diff[$row['id']] ) {
                        $info = $this->find($row['id']);
                        $info->update($row);
                    }
                }
            }
            //删除重复节点
            if ( count($ids) ) {
                cache()->forget('RULES_LIST');//更新权限规则缓存
                $this->destroy($ids);
            }
        });
        return true;
    }

    /**
     * 获取所有节点
     * @author: xingyonghe
     * @date: 2016-11-16
     * @param int $type
     */
    public function getRules($type = self::RULE_ALL){
        $datas = cache()->get('RULES_LIST');
        if(empty($datas)){
            $datas = $this->get()->toArray();

            cache()->forever('RULES_LIST',$datas);//永久保存
        }
        $rules = array_where($datas,function ($value, $key) use($type){
            if($type){
                return $value['type'] == $type;
            }else{
                return $value;
            }

        });
        return $rules;
    }

    /**
     * 用户角色权限
     * @author: xingyonghe
     * @date: 2016-11-17
     * @param $userGroupId 用户组ID
     * @return array
     */
    public function getUserRules($userGroupId){
        $rulesData = D('SysAuthGroup')->where('status',1)->where('id',$userGroupId)->value('rules');
        if(empty($rulesData)){
            return [];
        }
        $roles = $this->whereIn('id',$rulesData)->pluck('name', 'id')->toArray();
        return $roles;
    }


}
