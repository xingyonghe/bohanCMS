@extends('member.layouts.base')
@section('style')
@endsection
@section('script')
    <script type="text/javascript">
        $(function(){

        })
    </script>
@endsection
@section('body')
    <div class="juzhong">
        <div class="detail">
            <div class="leixing fl">订单类型：全部订单</div>
            <div class="query fr">
                <span>订单ID：</span><input class="date" type="text"/><span>时间</span><input class="date" type="text"/>一<input class="date" type="text"/><input class="search" type="submit" value=""/>
            </div>
        </div>
        <div class="jilu"><p>共计：0个订单</p></div>
        <div class="xijie">

            <div class="biaoti">
                <table width="1008">
                    <tr>
                        <td width="90">订单ID</td>
                        <td width="110">资源类型</td>
                        <td width="110">账号名称</td>
                        <td width="110">活动名称</td>
                        <td width="110">开始时间-结束时间</td>
                        <td width="110">价格</td>
                        <td width="110">订单状态</td>
                        <td width="100">提交审核</td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">001</td>
                        <td width="110">直播</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">10000</td>
                        <td width="110">进行中</td>
                        <td width="100"><input  type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">002</td>
                        <td width="110">短视频</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">99999</td>
                        <td width="110">已完成</td>
                        <td class="no" width="100"><input  type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">001</td>
                        <td width="110">直播</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">10000</td>
                        <td width="110">进行中</td>
                        <td width="100"><input  type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">002</td>
                        <td width="110">短视频</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">99999</td>
                        <td width="110">已完成</td>
                        <td width="100"><input  class="no" type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">001</td>
                        <td width="110">直播</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">10000</td>
                        <td width="110">进行中</td>
                        <td width="100"><input  type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">002</td>
                        <td width="110">短视频</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">99999</td>
                        <td width="110">已完成</td>
                        <td width="100"><input  class="no" type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">001</td>
                        <td width="110">直播</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">10000</td>
                        <td width="110">进行中</td>
                        <td width="100"><input  type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">002</td>
                        <td width="110">短视频</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">99999</td>
                        <td width="110">已完成</td>
                        <td width="100"><input  class="no" type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">001</td>
                        <td width="110">直播</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">10000</td>
                        <td width="110">进行中</td>
                        <td width="100"><input  type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">002</td>
                        <td width="110">短视频</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">99999</td>
                        <td width="110">已完成</td>
                        <td width="100"><input  class="no" type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">001</td>
                        <td width="110">直播</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">10000</td>
                        <td width="110">进行中</td>
                        <td width="100"><input  type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqing">
                <table width="1008">
                    <tr>
                        <td width="90">002</td>
                        <td width="110">短视频</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">99999</td>
                        <td width="110">已完成</td>
                        <td width="100"><input  class="no" type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
            <div class="xiangqingmo">
                <table width="1008">
                    <tr>
                        <td width="90">002</td>
                        <td width="110">短视频</td>
                        <td width="110">admin</td>
                        <td width="110">梦幻西游手游推广</td>
                        <td width="110">2016.11.25-2016.12.30</td>
                        <td class="no" width="110">99999</td>
                        <td width="110">已完成</td>
                        <td width="100"><input  class="no" type="submit" value="提交"/></td>
                    </tr>
                </table>
            </div>
        </div>
        <div id="showpage" class="cpage">
            <a class="cur" href="#">1</a><a href="#">2</a><a href="#">3</a><span>…</span><a href="#">18</a><a href="#"><img src="{{ asset('assets/home/images/sanjiao.jpg') }}"/></a>
        </div>
    </div>
@endsection
