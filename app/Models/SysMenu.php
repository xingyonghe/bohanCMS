<?php

namespace App\Models;

class SysMenu extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | SysMenu Model
    | @author xingyonghe
    | @date 2016-11-10
    |--------------------------------------------------------------------------
    |
    | 系统菜单模型
    |
    */

    protected $table    = 'sys_menu';
    public $timestamps  = false;
    protected $fillable = [
        'title', 'pid', 'sort', 'url', 'hide', 'group','icon'
    ];
    

    /**
     * 获取所有菜单
     * @author xingyonghe
     * @date 2016-11-10
     * @return mixed
     */
    public function getMenus(){
        $menus = $this->returnMenus();
        $menus = $this->toFormatTree($menus);
        $menus = array_merge(array(0=>array('id'=>0,'title_show'=>'顶级菜单')), $menus);
        return $menus;
    }

    /**
     * 获取所有菜单并存入缓存
     * @author xingyonghe
     * @date 2016-11-10
     * @return mixed
     */
    public function returnMenus(){
        $menus = cache()->get('MENUS_LIST');
        if(empty($menus)){
            $menus = $this->get()->toArray();
            cache()->forever('MENUS_LIST',$menus);//永久保存
        }
        return $menus;
    }








}
