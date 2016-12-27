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
    <div class="juzhong">
        <div class="tou">
            <div class="tou_nav fl">
                <ul>
                    <li class="end"><a href="#">最新活动</a></li>
                    <li><a href="#">已参加活动</a></li>
                    <li><a href="#">邀请我参加的活动</a></li>
                </ul>
            </div>
            <div class="tou_nav fr">
                <ul>
                    <li><a href="#">排序：最新</a></li>
                    <li><a href="#">产品类型：全部</a></li>
                    <li><a href="#">投放类型：直播</a></li>
                </ul>
            </div>
        </div>
        @foreach($lists as $key=>$item)
            <div class="project">

                <div class="tg">
                    <div class="fl">
                        <h5><span>{{ $item['title'] }}</span></h5>
                    </div>
                    <div class="fr">
                        <img src="{{ asset('assets/member/images/clock.png') }}"/>起始日期：{{ $item['start_time']->format('Y年m月d日') }}
                        <b>一</b>
                        <img src="{{ asset('assets/member/images/clock.png') }}"/>结束日期：{{ $item['end_time']->format('Y年m月d日') }}
                    </div>
                </div>
                <div class="tupian fl">
                    <img src="{{ $item['logo'] }}" width="235" height="204"/>
                    <p><input type="button" value="我要参加" style="background-color:#ff6476" /></p>
                </div>
                <div class="introduce fl">
                    <table>
                        <tr>
                            <td width="300"><label>赏金：</label>{{ $item['money'] }}元</td>
                            <td width="300"><label>投放类型：</label>{{ $task_type_arr[$item['type']] }}</td>
                            <td width="300"><label>投放平台：</label>{{ $item['id'] }}</td>
                        </tr>
                        <tr>
                            <td width="300"><label>产品类型：</label>{{ $item['id'] }}</td>
                            <td width="300"><label>需要人数：</label>{{ $item['num'] }}人</td>
                            <td width="300"><label>广告形式：</label>{{ $item['id'] }}</td>
                        </tr>
                    </table>
                    <div class="duanluo">
                        <p><span>网红要求：</span>{{ $item['demand'] }}</p>
                        <p><span>活动要求：</span>{{ $item['notes'] }}</p>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <div id="showpage" class="cpage">
        {!! $lists->render() !!}
    </div>
@endsection
