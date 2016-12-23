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
        <div class="dingdan">
            <div class="xuan fl">
                <span>账户状态：</span><select class="duoxuan">
                    <option>请选择</option>
                </select><input class="yi" type="text" value="  艺人名称"/><input class="so" type="submit" value=""/>
            </div>
            <div class="fr"><a href="{{ route('netred.star.live') }}"><input class="tianjia" type="button" value="添加直播"/></a></div>
            <div class="fr"><a href="{{ route('netred.star.video') }}"><input class="tianjia" type="button" value="添加短视频"/></a></div>
        </div>
        <div class="zhanghu"><p>共计：{{ $lists->total() }}个账户</p></div>
        <div class="zixun">
            <div class="biaoti">
                <table width="1136">
                    <tr>
                        <td width="130">艺人名称</td>
                        <td width="130">类型</td>
                        <td width="110">入驻平台</td>
                        <td width="110">粉丝数</td>
                        <td width="150">参考报价</td>
                        <td width="120">价格有效期</td>
                        <td width="110">审核状态</td>
                        <td width="120">上下架状态</td>
                        <td colspan="3" width="126">操作</td>
                    </tr>
                </table>
            </div>
            @if($lists->total())
                @foreach($lists as $item)
                    <div class="xiangqing">
                        <table width="1136">
                            <tr>
                                <td width="130">papi酱</td>
                                <td width="130">短视频</td>
                                <td width="110">秒拍</td>
                                <td width="110">19483000</td>
                                <td class="no" width="150">品牌植入：80万<p>片尾广告：50万</p></td>
                                <td width="120">2016.11.26</td>
                                <td class="no" width="110">已审核</td>
                                <td class="ing" width="120">上架中</td>
                                <td class="lan" width="126"><a href="#">编辑</a>|<a href="#">删除</a></td>

                            </tr>
                        </table>
                    </div>
                @endforeach
            @else
                <div class="xiangqingmo">
                    <table width="1136">
                        <tr>
                            <td width="130">papi酱</td>
                            <td width="130">短视频</td>
                            <td width="110">秒拍</td>
                            <td width="110">19483000</td>
                            <td class="no" width="150">品牌植入：80万<p>片尾广告：50万</p></td>
                            <td width="120">2016.11.26</td>
                            <td class="no" width="110">已审核</td>
                            <td class="ing" width="120">上架中</td>
                            <td class="lan" width="126"><a href="#">编辑</a>|<a href="#">删除</a></td>
                        </tr>
                    </table>
                </div>
            @endif
        </div>
        <div id="showpage" class="cpage">
            {!! $lists->render() !!}
        </div>
    </div>
@endsection
