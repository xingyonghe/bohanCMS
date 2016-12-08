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
<div class="datu4">
    @include('home.layouts.head')
</div>
<div class="hui">
    <div class="juzhong">
        <div class="xie">
            <div class="fenkai">
                <div class="zuo">
                    <div class="tuiguang">
                        <div class="tubiao"><img src="/assets/home/images/inter.png" width="34"; height="30"/><span>网络推广</span></div>
                    </div>
                    <div class="xiao">
                        <a href="#">男装</a><a href="#">女装</a><a href="#">美容</a><a href="#">整形</a><a href="#">彩妆</a><br/>
                        <a href="#">家居家纺</a><a href="#">包包</a><a href="#">鞋帽</a><a href="#">母婴</a><br/>
                        <a href="#">珠宝</a><a href="#">手机数码</a><a href="#">美食</a>

                    </div>
                    <div class="fenge"><img src="/assets/home/images/xian.jpg"/></div>
                </div>
                <div class="zuo">
                    <div class="tuiguang">
                        <div class="tubiao"><img src="/assets/home/images/photo.png" width="23"; height="32"/><span>APP推广</span></div>
                    </div>
                    <div class="xiao">
                        <a href="#">时尚购物</a><a href="#">医疗健康</a><a href="#">休闲娱乐</a><br/>
                        <a href="#">自拍摄影</a><a href="#">户外旅游</a><a href="#">金融理财</a><br/>
                        <a href="#">学习教育</a><a href="#">美食</a><a href="#">O2O</a>

                    </div>
                    <div class="fenge"><img src="/assets/home/images/xian.jpg"/></div>
                </div>
                <div class="zuo">
                    <div class="tuiguang">
                        <div class="tubiao"><img src="/assets/home/images/game.png" width="40"; height="37"/><span>游戏推广</span></div>
                    </div>
                    <div class="xiao">
                        <a href="#">页游</a><a href="#">端游</a><a href="#">手游</a><a href="#">棋牌捕鱼</a><br/>
                        <a href="#">小游戏</a><a href="#">单机游戏</a>

                    </div>
                    <div class="fenge"><img src="/assets/home/images/xian.jpg"/></div>
                </div>
                <div class="zuo">
                    <div class="tuiguang">
                        <div class="tubiao"><img src="/assets/home/images/zuanshi.png" width="29"; height="28"/><span>品牌推广</span></div>
                    </div>
                    <div class="xiao">
                        <a href="#">手表</a><a href="#">饰品</a><a href="#">汽车推广</a><br/>
                        <a href="#">活动发布</a><a href="#">房产</a><a href="#">酒店</a><a href="#">旅游</a><br/>
                        <a href="#">景区</a><a href="#">名菜</a><a href="#">餐厅</a>

                    </div>
                </div>
                <div class="qingchu"></div>
            </div>
        </div>

        <div class="pingtai">
            <ul>
                <li>网红平台:</li>
                <li><a href="#">全部</a></li>
                <li><a href="#">爱奇异</a></li>
                <li><a href="#">一直播</a></li>
                <li><a href="#">虎牙</a></li>
                <li><a href="#">斗鱼</a></li>
                <li><a href="#">映客</a></li>
                <li><a href="#">一起秀</a></li>
                <li><a href="#">花椒</a></li>
                <li><a href="#">美拍</a></li>
                <li><a href="#">秒拍</a></li>
                <li><a href="#">更多>></a></li>
            </ul>
        </div>
        <div class="liang">
            <ul>
                <li>粉丝量级：</li>
                <li><a href="#">1万以下</a></li>
                <li><a href="#">1—5万</a></li>
                <li><a href="#">5—10万</a></li>
                <li><a href="#">10—30万</a></li>
                <li><a href="#">30—50万</a></li>
                <li><a href="#">50—100万</a></li>
                <li><a href="#">100万以上</a></li>
            </ul>
        </div>
    </div>
    <div class="qingchu"></div>
</div>
<!--Emain-->
<div class="tiantupian">
    <div class="juzhong">
        <div class="fenkai">
            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu1.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou1.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu2.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou2.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu3.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou3.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu2">
                <div class="tupian"><img src="/assets/home/images/tu4.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou4.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>
            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu5.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou1.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu6.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou2.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu7.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou3.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu2">
                <div class="tupian"><img src="/assets/home/images/tu8.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou4.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>
            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu1.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou1.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu2.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou2.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu3.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou3.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu2">
                <div class="tupian"><img src="/assets/home/images/tu4.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou4.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu5.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou1.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu6.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou2.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu">
                <div class="tupian"><img src="/assets/home/images/tu7.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou3.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>

            <div class="tu2">
                <div class="tupian"><img src="/assets/home/images/tu8.jpg" width="261"; height="328"/></div>
                <div class="order"><span>赖美慧</span> <a href="#"><img src="/assets/home/images/anniu.png" onMouseOver="this.src='/assets/home/images/anniu.png'" onMouseOut="this.src='/assets/home/images/anniu.png'" width="69"; height="28"/></a></div>
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
                        <li><img src="/assets/home/images/tou4.jpg" width="36"; height="36"/></li>
                    </ul>
                </div>
            </div>
            <div class="qingchu"></div>
        </div>
    </div>
    <div id="showpage">
          <span class="cpage"><a href="#" >1</a>
          <a href="#" >2</a>  <a href="#">3</a>
          <span>…</span> <a href="#">18</a> <a href="#"><img src="/assets/home/images/sanjiao.jpg"/></a>
    </div>
    <!--<div class="shuzi">
        <ul>
            <li><a href="#">1</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">1</a></li>
        </ul>
    </div>-->

</div>
@endsection
