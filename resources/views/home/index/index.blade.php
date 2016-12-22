@extends('home.layouts.base')
@section('style')
    <link href="{{ asset('assets/home/css/slider.css') }}" rel="stylesheet" type="text/css"/>
@endsection
@section('script')
    <script type='text/javascript' src="{{ asset('assets/home/js/common.js') }}"></script>
    <script type='text/javascript' src="{{ asset('assets/home/js/slider.js') }}"></script>
    <script type="text/javascript">
        $(function(){

        });
    </script>
@endsection
@section('body')
    <!--S顶部-->
    <div class="header-content home">
        @include('home.layouts.head')
        <div class="parallax-bg" id="slider-wrap">
            <div class="slider parallax-bg" id="slider">
                <div class="slider-sections sandbox">
                    <section class="first">
                        <div class="text" style="padding-top: 10px;"><h2>专业的网红自媒体广告投放平台</h2>
                            <p class="copy">精准营销从此开始</p>
                            <p class="button"><a href="{{ route('netred.login.form') }}">网络入住</a></p>
                            <p class="button"><a href="{{ route('ads.login.form') }}">广告投放</a></p></div>
                    </section>
                    <section>
                        <div class="text" style="padding-top: 10px;"><h2>专业的网红自媒体广告投放平台22</h2>
                            <p class="copy">单页面、单广告等模块。</p>
                            <p class="button">
                                <a href="http://www.lanrentuku.com/" onclick="_gaq.push(['_trackPageview', 'http://www.lanrentuku.com/']);">Download</a>
                                <a class="dimmed" onclick="_gaq.push(['_trackPageview', 'http://www.lanrentuku.com/']);" href="http://www.lanrentuku.com/">Learn
                                                                                                                                                           More</a>
                            </p></div>
                    </section>
                    <section>
                        <div class="text"><h2>专业的网红自媒体广</h2>
                            <p class="copy">全站生成纯静态页。</p>
                            <p class="button">
                                <a href="http://www.lanrentuku.com/" onclick="_gaq.push(['_trackPageview', 'http://www.lanrentuku.com/']);">Download</a>
                                <a class="dimmed" onclick="_gaq.push(['_trackPageview', 'http://www.lanrentuku.com/']);" href="http://www.lanrentuku.com/">Learn
                                                                                                                                                           More</a>
                            </p></div>
                    </section>
                </div>
            </div>
            <a class="slider-prev" href="javascript: void(0)">?</a>
            <a class="slider-next" href="javascript: void(0)"></a>
        </div>

    </div>
    <div class="qingchu"></div>
    <!--E顶部-->
    <!--S中间-->
    <div class="main">
        <div class="juzhong">
            <div class="biaoti">精品网红资源展示</div>
            <div class="shang">
                <div class="zuo">
                    <div class="tuiguang">
                        <div class="tubiao">
                            <img src="{{ asset('assets/home/images/inter.png') }}" width="34" ; height="30"/><span>网络推广</span>
                        </div>
                    </div>
                    <div class="xiao">
                        <a href="#">家居家纺</a><a href="#">男装</a><br/>
                        <a href="#">女装</a><a href="#">彩妆</a><a href="#">饰品</a>
                    </div>
                </div>
                <div class="fenge1"><img src="{{ asset('assets/home/images/xian.jpg') }}"/></div>
                <div class="zuo">
                    <div class="tuiguang">
                        <div class="tubiao">
                            <img src="{{ asset('assets/home/images/photo.png') }}" width="23" ; height="32"/><span>APP推广</span>
                        </div>
                    </div>
                    <div class="xiao">
                        <a href="#">时尚购物</a><a href="#">o2o</a><br/>
                        <a href="#">美食</a><a href="#">旅行</a><a href="#">其他</a>
                    </div>
                </div>
                <div class="fenge1"><img src="{{ asset('assets/home/images/xian.jpg') }}"/></div>
                <div class="zuo">
                    <div class="tuiguang">
                        <div class="tubiao">
                            <img src="{{ asset('assets/home/images/game.png') }}" width="40" ; height="37"/><span>游戏推广</span>
                        </div>
                    </div>
                    <div class="xiao">
                        <a href="#">手游</a><a href="#">页游</a><br/>
                        <a href="#">端游</a><a href="#">棋牌</a>
                    </div>
                </div>
                <div class="fenge1"><img src="{{ asset('assets/home/images/xian.jpg') }}"/></div>
                <div class="zuo">
                    <div class="tuiguang">
                        <div class="tubiao">
                            <img src="{{ asset('assets/home/images/zuanshi.png') }}" width="29" ; height="28"/><span>品牌推广</span>
                        </div>
                    </div>
                    <div class="xiao">
                        <a href="#">手表</a><a href="#">首饰</a><br/>
                        <a href="#">旅游</a><a href="#">景区</a>
                    </div>
                </div>
                <div class="qingchu"></div>
            </div>

        </div>
    </div>
    <!--Emain-->
    <div class="tiantu">
        <div class="juzhong">
            <div class="fenkai">
                <div class="tu">
                    <div class="tupian">
                        <img src="{{ asset('assets/home/images/tu1.jpg') }}" width="261" ; height="328"/>
                    </div>
                    <div class="order"><span>赖美慧</span>
                        <a href="#"><img src="{{ asset('assets/home/images/anniu.png') }}" onMouseOver="this.src='{{ asset('assets/home/images/anniu.png') }}'" onMouseOut="this.src='{{ asset('assets/home/images/anniu.png') }}'" width="69" ; height="28"/></a>
                    </div>
                    <div class="fen">
                        <ul>
                            <li>
                                <p>粉丝</p>
                                <p>132159</p>
                            </li>
                            <li>
                                <p>平均播放数</p>
                                <p>11900次</p>
                            </li>
                            <li>
                                <img src="{{ asset('assets/home/images/tou1.jpg') }}" width="36" ; height="36"/>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="tu">
                    <div class="tupian">
                        <img src="{{ asset('assets/home/images/tu2.jpg') }}" width="261" ; height="328"/>
                    </div>
                    <div class="order"><span>赖美慧</span> <a href="#">
                            <img src="{{ asset('assets/home/images/anniu.png') }}" onMouseOver="this.src='{{ asset('assets/home/images/anniu.png') }}'" onMouseOut="this.src='{{ asset('assets/home/images/anniu.png') }}'" width="69" ; height="28"/></a>
                    </div>
                    <div class="fen">
                        <ul>
                            <li>
                                <p>粉丝</p>
                                <p>132159</p>
                            </li>
                            <li>
                                <p>平均播放数</p>
                                <p>11900次</p>
                            </li>
                            <li>
                                <img src="{{ asset('assets/home/images/tu2.jpg') }}" width="36" ; height="36"/>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="tu">
                    <div class="tupian">
                        <img src="{{ asset('assets/home/images/tu3.jpg') }}" width="261" ; height="328"/>
                    </div>
                    <div class="order"><span>赖美慧</span>
                        <a href="#"><img src="{{ asset('assets/home/images/anniu.png') }}" onMouseOver="this.src='{{ asset('assets/home/images/anniu.png') }}'" onMouseOut="this.src='{{ asset('assets/home/images/anniu.png') }}'" width="69" ; height="28"/></a>
                    </div>
                    <div class="fen">
                        <ul>
                            <li>
                                <p>粉丝</p>
                                <p>132159</p>
                            </li>
                            <li>
                                <p>平均播放数</p>
                                <p>11900次</p>
                            </li>
                            <li>
                                <img src="{{ asset('assets/home/images/tou3.jpg') }}" width="36" ; height="36"/>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="tu2">
                    <div class="tupian">
                        <img src="{{ asset('assets/home/images/tu4.jpg') }}" width="261" ; height="328"/>
                    </div>
                    <div class="order"><span>赖美慧</span>
                        <a href="#"><img src="{{ asset('assets/home/images/anniu.png') }}" onMouseOver="this.src='{{ asset('assets/home/images/anniu.png') }}'" onMouseOut="this.src='{{ asset('assets/home/images/anniu.png') }}'" width="69" ; height="28"/></a>
                    </div>
                    <div class="fen">
                        <ul>
                            <li>
                                <p>粉丝</p>
                                <p>132159</p>
                            </li>
                            <li>
                                <p>平均播放数</p>
                                <p>11900次</p>
                            </li>
                            <li><img src="{{ asset('assets/home/images/tu4.jpg') }}" width="36" ; height="36"/></li>
                        </ul>
                    </div>
                </div>
                <div class="tu">
                    <div class="tupian"><img src="{{ asset('assets/home/images/tu5.jpg') }}" width="261" ; height="328"/></div>
                    <div class="order"><span>赖美慧</span>
                        <a href="#"><img src="{{ asset('assets/home/images/anniu.png') }}" onMouseOver="this.src='{{ asset('assets/home/images/anniu.png') }}'" onMouseOut="this.src='{{ asset('assets/home/images/anniu.png') }}'" width="69" ; height="28"/></a>
                    </div>
                    <div class="fen">
                        <ul>
                            <li>
                                <p>粉丝</p>
                                <p>132159</p>
                            </li>
                            <li>
                                <p>平均播放数</p>
                                <p>11900次</p>
                            </li>
                            <li><img src="{{ asset('assets/home/images/tou1.jpg') }}" width="36" ; height="36"/></li>
                        </ul>
                    </div>
                </div>

                <div class="tu">
                    <div class="tupian"><img src="{{ asset('assets/home/images/tu6.jpg') }}" width="261" ; height="328"/></div>
                    <div class="order"><span>赖美慧</span>
                        <a href="#"><img src="{{ asset('assets/home/images/anniu.png') }}" onMouseOver="this.src='{{ asset('assets/home/images/anniu.png') }}'" onMouseOut="this.src='{{ asset('assets/home/images/anniu.png') }}'" width="69" ; height="28"/></a>
                    </div>
                    <div class="fen">
                        <ul>
                            <li>
                                <p>粉丝</p>
                                <p>132159</p>
                            </li>
                            <li>
                                <p>平均播放数</p>
                                <p>11900次</p>
                            </li>
                            <li><img src="{{ asset('assets/home/images/tou2.jpg') }}" width="36" ; height="36"/></li>
                        </ul>
                    </div>
                </div>

                <div class="tu">
                    <div class="tupian"><img src="{{ asset('assets/home/images/tu7.jpg') }}" width="261" ; height="328"/></div>
                    <div class="order"><span>赖美慧</span>
                        <a href="#"><img src="{{ asset('assets/home/images/anniu.png') }}" onMouseOver="this.src='{{ asset('assets/home/images/anniu.png') }}'" onMouseOut="this.src='{{ asset('assets/home/images/anniu.png') }}'" width="69" ; height="28"/></a>
                    </div>
                    <div class="fen">
                        <ul>
                            <li>
                                <p>粉丝</p>
                                <p>132159</p>
                            </li>
                            <li>
                                <p>平均播放数</p>
                                <p>11900次</p>
                            </li>
                            <li><img src="{{ asset('assets/home/images/tou3.jpg') }}" width="36" ; height="36"/></li>
                        </ul>
                    </div>
                </div>

                <div class="tu2">
                    <div class="tupian">
                        <img src="{{ asset('assets/home/images/tu8.jpg') }}" width="261" ; height="328"/></div>
                    <div class="order"><span>赖美慧</span>
                        <a href="#"><img src="{{ asset('assets/home/images/anniu.png') }}" onMouseOver="this.src='{{ asset('assets/home/images/anniu.png') }}'" onMouseOut="this.src='{{ asset('assets/home/images/anniu.png') }}'" width="69" ; height="28"/></a>
                    </div>
                    <div class="fen">
                        <ul>
                            <li>
                                <p>粉丝</p>
                                <p>132159</p>
                            </li>
                            <li>
                                <p>平均播放数</p>
                                <p>11900次</p>
                            </li>
                            <li><img src="{{ asset('assets/home/images/tou4.jpg') }}" width="36" ; height="36"/></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="qingchu"></div>
        </div>
    </div>
    <!--Scentre-->
    <div class="centre">
        <div class="juzhong">
            <div class="biaoti">平台优势</div>
            <div class="fenkai">
                <div class="biao"><img src="{{ asset('assets/home/images/biao1.png') }}"/>
                    <h3>丰富</h3>
                    <div class="wenzi">丰富的推广资源，数以万计的主播<br/>
                                       艺人资源，覆盖各行各业各种垂直<br/>
                                       领域
                    </div>
                </div>
                <div class="biao"><img src="{{ asset('assets/home/images/biao2.png') }}"/>
                    <h3>专业</h3>
                    <div class="wenzi">专业的大数据运营团队，有针对性<br/>
                                       的为各类广告客户提供切实可行的<br/>
                                       推广营销方案
                    </div>
                </div>
                <div class="biao"><img src="{{ asset('assets/home/images/biao3.png') }}"/>
                    <h3>安全</h3>
                    <div class="wenzi">平台第三方托管资金，确保资金安<br/>
                                       全，让广告主安心投放，网红也不<br/>
                                       必担心推广结束后无法获得报酬
                    </div>
                </div>
                <div class="biao2"><img src="{{ asset('assets/home/images/biao4.png') }}"/>
                    <h3>互动</h3>
                    <div class="wenzi">告别枯燥乏味的传统广告形式，新<br/>
                                       兴媒体互动式的推广，更有助于用<br/>
                                       户对产品更深入的了解
                    </div>
                </div>
                <div class="qingchu"></div>
            </div>
        </div>

    </div>
    <!--Ecentre-->
    <!--Sbelow-->
    <div class="below">
        <div class="juzhong">
            <div class="biaoti">解决方案</div>
            <h5>精准推广，不止是说说而已！</h5>
            <div class="fenkai">
                <div class="kuang"><img src="{{ asset('assets/home/images/kuang1.png') }}"/>
                    <h3>独特的标签分析系统</h3>
                    <div class="wenzi">性别、兴趣、关注点、年龄分布、消费<br/>能力等，运用此类数据，可以精准为广<br/>告投放定位人群！</div>
                </div>
                <div class="kuang"><img src="{{ asset('assets/home/images/kuang2.png') }}"/>
                    <h3>独特的标签分析系统</h3>
                    <div class="wenzi">性别、兴趣、关注点、年龄分布、消费<br/>能力等，运用此类数据，可以精准为广<br/>告投放定位人群！</div>
                </div>
                <div class="kuang"><img src="{{ asset('assets/home/images/kuang3.png') }}"/>
                    <h3>独特的标签分析系统</h3>
                    <div class="wenzi">性别、兴趣、关注点、年龄分布、消费<br/>能力等，运用此类数据，可以精准为广<br/>告投放定位人群！</div>
                </div>
                <div class="kuang2"><img src="{{ asset('assets/home/images/kuang4.png') }}"/>
                    <h3>独特的标签分析系统</h3>
                    <div class="wenzi">性别、兴趣、关注点、年龄分布、消费<br/>能力等，运用此类数据，可以精准为广<br/>告投放定位人群！</div>
                </div>
                <div class="qingchu"></div>
            </div>
        </div>

    </div>
    <!--Ebelow-->
    <!--Skehu-->
    <div class="kehu">
        <div class="juzhong">
            <div class="biaoti">我们的客户</div>
            <h5>基于专业的大数据分析，为广告主量身打造最为高效的推广方案，因此，以下客户选择了我们！</h5>
        </div>
        <div class="wangzhan">
            <div class="qitawangzhan">
                <a href="#"><img src="{{ asset('assets/home/images/jd.jpg') }}"/></a>
                <a href="#"><img src="{{ asset('assets/home/images/1haodian.jpg') }}"/></a>
                <a href="#"><img src="{{ asset('assets/home/images/ls.jpg') }}"/></a>
                <a href="#"><img src="{{ asset('assets/home/images/taobao.jpg') }}"/></a>
                <a href="#"><img src="{{ asset('assets/home/images/snyg.jpg') }}"/></a>
            </div>
            <div class="qitawangzhan">
                <a href="#"><img src="{{ asset('assets/home/images/wph.jpg') }}"/></a>
                <a href="#"><img src="{{ asset('assets/home/images/jmyp.jpg') }}"/></a>
                <a href="#"><img src="{{ asset('assets/home/images/haier.jpg') }}"/></a>
                <a href="#"><img src="{{ asset('assets/home/images/mi.jpg') }}"/></a>
                <a href="#"><img src="{{ asset('assets/home/images/cqly.jpg') }}"/></a>
            </div>
            <div class="qingchu"></div>
        </div>

        <div class="qingchu"></div>
    </div>
    <!--Ekehu-->
@endsection
