@extends('netred.layouts.base')
@section('style')
@endsection
@section('script')
    <script type="text/javascript">
        $(function(){

        })
    </script>
@endsection
@section('body')
    <div class="content">
        <div class="account">
            <div class="balance fl">
                账户余额：<span>{{ auth()->user()->balance }}</span><b>元</b>
            </div>
            {{--<a class="btn btn-danger"  href="{{ route('member.account.recharge') }}">充 值</a>--}}
            {{--<a class="btn btn-danger"  href="{{ route('member.account.cash') }}">提 现</a>--}}
            <div class="withdrawal fl"> <a class="btn btn-danger"  href="{{ route('netred.account.cash') }}">立即提现</a></div>
            <div class="add fl">添加收款账户</div>
        </div>
        <div class="detail">
            <div class="zi fl">提现明细</div>
            <div class="query fr">
                日期查询：<input class="date" type="text"/>一<input class="date" type="text"/><input class="search" type="submit" value=""/>
            </div>
        </div>
        <div class="jilu"><p>共计：2条记录</p></div>
        <div class="xijie">

            <div class="biaoti">
                <table width="1008" >
                    <tr>
                        <td width="90">流水号</td>
                        <td width="110">提现时间</td>
                        <td width="110">提现金额</td>
                        <td width="110">收款方式</td>
                        <td width="110">收款账户</td>
                        <td width="100">提现状态</td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008" >
                    <tr>
                        <td width="90">11256</td>
                        <td width="110">2016.11.28</td>
                        <td width="110">1000</td>
                        <td width="110">支付宝</td>
                        <td width="110">545222525</td>
                        <td class="no" width="100">待支付</td>
                    </tr>
                </table>
            </div>
            <div class="xiangqingmo">
                <table width="1008" >
                    <tr>
                        <td width="90">11256</td>
                        <td width="110">2016.11.28</td>
                        <td width="110">1000</td>
                        <td width="110">支付宝</td>
                        <td width="110">545222525</td>
                        <td width="100">待支付</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
@endsection
