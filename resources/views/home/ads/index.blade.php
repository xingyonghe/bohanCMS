@extends('home.layouts.base')
@section('style')
@endsection
@section('script')
<script type="text/javascript">
    $(function(){

    });
</script>
@endsection
@section('body')
<!--S顶部-->
<div class="datu1">
    @include('home.layouts.head')
    <div class="dazi">
        <h1>基于大数据的互动式新媒体推广平台</h1>
        <h2>优质资源提供品牌影响力</h2>
        <div class="an"><a href="#"><img src="/assets/home/images/an1.png"/></a></div>
    </div>
</div>
<div class="main">
    <div class="juzhong">
        <div class="biaoti">产品服务</div>
        <div class="fenkai">
            <div class="tg">
                <div class="tubiao"><img src="/assets/home/images/qianbi.png" /></div>
                <h3>线上品牌互动推广</h3>
                <div class="wenzi">
                    为客户量身打造推广方案，线上高效互动娱<br/>乐式的推广，让用户对您的产品过目不忘！
                </div>
            </div>
            <div class="tg">
                <div class="tubiao"><img src="/assets/home/images/tv.png" /></div>
                <h3>线下驻场品牌推广</h3>
                <div class="wenzi">
                    主播艺人外派指定活动现场，对新产品的发<br/>布进行全方位直播，真正打通线上线下！
                </div>
            </div>
            <div class="tg2">
                <div class="tubiao"><img src="/assets/home/images/shangs.png" /></div>
                <h3>电商产品直播推广</h3>
                <div class="wenzi">
                    主播艺人在直播节目过程中，针对指定产品，<br/>进行各类介绍宣传，直接促进产品销售量！
                </div>
            </div>
            <div class="qingchu"></div>
        </div>
    </div>

</div>
<!--Emain-->
<!--Scentre-->
<div class="centre">
    <div class="juzhong">
        <div class="biaoti">资源优势</div>
        <div class="fenkai">
            <div class="ys">
                <div class="biaozhi"><img src="/assets/home/images/biao5.png" /></div>
                <div class="wenzi">
                    多达500位独代主播网红资源
                </div>
            </div>
            <div class="ys">
                <div class="biaozhi"><img src="/assets/home/images/biao6.png" /></div>
                <div class="wenzi">
                    我们与三万名知名网红主播保持良好合作关
                </div>
            </div>
            <div class="ys2">
                <div class="biaozhi"><img src="/assets/home/images/biao7.png" /></div>
                <div class="wenzi">
                    全面覆盖各大直播视频平台，资源丰富
                </div>
            </div>
            <div class="qingchu"></div>
        </div>

    </div>

</div>
<!--Ecentre-->
<div class="zhengzhang">
    <div class="juzhong">
        <img src="/assets/home/images/zhengzhang.jpg"/>
    </div>
</div>

<!--Scentre2-->
<div class="centre">
    <div class="juzhong">
        <div class="biaoti">合作流程</div>
        <div class="fenkai">
            <div class="lc">
                <div class="sp"><h5>STEP1</h5>
                    <div class="wenzi">
                        选择您满意的网红资源或联系我们的<br/>在线客服进行推广方案定制
                    </div>
                </div>
            </div>
            <div class="jiantou"><img src="/assets/home/images/jiantou.png"/></div>
            <div class="lc">
                <div class="sp"><h5>STEP2</h5>
                    <div class="wenzi">
                        选择您满意的网红资源或联系我们的<br/>在线客服进行推广方案定制
                    </div>
                </div>
            </div>
            <div class="jiantou"><img src="/assets/home/images/jiantou.png"/></div>
            <div class="lc">
                <div class="sp"><h5>STEP3</h5>
                    <div class="wenzi">
                        选择您满意的网红资源或联系我们的<br/>在线客服进行推广方案定制
                    </div>
                </div>
            </div>
            <div class="qingchu"></div>
        </div>
    </div>

</div>
<!--Ecentre2-->
<div class="bt">
    <div class="zhong">
        <div class="bt1"><p><a href="{{ route('home.rednet.index') }}">网红资源查看</a></p></div>
        <div class="bt1"><p><a href="#">开始推广</a></p></div>
    </div>
    <div class="qingchu"></div>
</div>
@endsection
