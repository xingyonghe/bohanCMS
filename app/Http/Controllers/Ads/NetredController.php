<?php

namespace App\Http\Controllers\Ads;

use App\Http\Controllers\Controller;
use App\Models\Category;
use SEO;
use App\Models\UserNetredStar;
use App\Models\UserAdform;
use App\Models\UserPlatform;

class NetredController extends Controller{
    /*
    |--------------------------------------------------------------------------
    | Netred Controller
    | @author xingyonghe
    | @date 2016-12-26
    |--------------------------------------------------------------------------
    |
    | 资源管理控制器
    |
    */
    protected $navkey = 'dispatch';//菜单标识
    public function __construct(){
        view()->share('navkey',$this->navkey);//用于设置头部菜单高亮
        //资源风格
        $style = parse_config_attr(C('NETRED_STYLE'));
        //分类
        $category = Category::where('model','star')->orderBy('sort','asc')->orderBy('id','asc')->get(['id','name','pid'])->toArray();
        $category = list_to_tree($category);
        view()->composer(['netred.star.live','netred.star.video'],function($view) use($style,$category){
            $view->with('styles',$style)->with('categorys',$category);
        });
    }

    /**
     * 直播列表
     * @author: xingyonghe
     * @date: 2016-12-26
     * @return mixed
     */
    public function index(){
        $type       = (int)request()->get('type','');
        $status     = (int)request()->get('status','');
        $stage_name = (string)request()->get('stage_name','');
        $lists = UserNetredStar::where('status',UserNetredStar::STATUS_NORMAL)
            ->where(function ($query) use($type) {
                if($type){
                    $query->where('type',$type);
                }
            })
            ->orderBy('created_at', 'desc')
            ->paginate(C('SYSTEM_LIST_LIMIT') ?? 10);
        dd($lists);
        //平台
        $platforms = UserPlatform::orderBy('sort','asc')->pluck('name','id');
        //广告形式
        $adforms = UserAdform::orderBy('sort','asc')->pluck('name','id');
        SEO::setTitle('资源列表-广告主中心'.C('WEB_SITE_TITLE'));
        return view('ads.netred.index');
    }




}
