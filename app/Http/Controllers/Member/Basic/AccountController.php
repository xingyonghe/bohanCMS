<?php

namespace App\Http\Controllers\Member\Basic;

use App\Http\Controllers\Member\CommonController;
use SEO;

class AccountController extends CommonController{
    /*
    |--------------------------------------------------------------------------
    | Index Controller
    | @author xingyonghe
    | @date 2016-11-23
    |--------------------------------------------------------------------------
    |
    | 会员中心基本信息
    |
    */
    protected $navkey = 'account';//菜单标识
    public function __construct(){
        view()->share('navkey',$this->navkey);//用于设置头部菜单高亮
    }

    /**
     * 我的账户
     * @author: xingyonghe
     * @date: 2016-11-23
     * @return mixed
     */
    public function index(){
        SEO::setTitle(C('WEB_SITE_TITLE').'-会员中心-我的账户');
        return view('member.account.index');
    }

    /**
     * 充值界面/账户充值
     * @author: xingyonghe
     * @date: 2016-11-23
     */
    public function recharge(){
        if(request()->method() == 'POST'){
            $data = request()->all();
            $rules = [
                'money'   => 'required|money',
                'payment' => 'required',
            ];
            $msgs = [
                'money.required'  => '请输入要充值的金额',
                'money.money'     => '金额格式错误',
                'payment.required'=> '请选择支付平台',
            ];
            $validator = validator()->make($data,$rules,$msgs);
            if ($validator->fails()) {
                return $this->ajaxValidator($validator);
            }
            $mark = '用户充值，充值金额：'.$data['money'];
            $resualt = D('UserAccount')->accountLog(
                $data['money'],
                D('UserAccount')::TYPE_1,
                request()->ip(),
                D('UserAccount')::STATUS_0,
                $mark
            );
            if($resualt === false){
                return $this->ajaxReturn('充值失败');
            }
            return $this->ajaxReturn('正在跳转支付页面...',1,route('member.account.pay',[$resualt['order_id']]));
        }
        SEO::setTitle(C('WEB_SITE_TITLE').'-会员中心-账户充值');
        return view('member.account.recharge');
    }

    /**
     *
     * @author: xingyonghe
     * @date: 2016-11-23
     */
    public function pay(string $order_id){
        dd(config('pay.driver.alipay'));
        dd($order_id);
    }





}
