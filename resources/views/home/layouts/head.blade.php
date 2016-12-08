<div class="ding">
    <div class="juzhong">
        <div class="logo">
            <a href="{{ route('home.index.index') }}">
                <img src="{{ asset('assets/home/images/logo.png') }}" width="151"; height="55"/>
            </a>
        </div>
        <div class="topnav">
            <ul>
                @foreach($channels as $channel)
                    <li class="bigh @if(isset($channel_id) && $channel['id'] == $channel_id) active @endif">
                        <a href="{{ route($channel['url']) }}" @if($channel['target']) target="_blank" @endif>
                            {{ $channel['title'] }}
                        </a>
                    </li>
                @endforeach
                <li  class="bigh2"  onmouseover="displaySubMenu(this)" onmouseout="hideSubMenu(this)"><a href="#">登录/注册</a>
                    <div class="xwgkdh" >
                        <div id="wanghong"><a href="{{ route('home.login.form') }}">网红</a></div>
                        <div id="huaxian"><a href="{{ route('home.login.form') }}">广告主</a></div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="phone"><img src="{{ asset('assets/home/images/phone.png') }}" width="20"; height="22"/><span>400-888-666</span></div>
    </div>
</div>



{{--<!--header start-->--}}
{{--<header class="header-frontend">--}}
    {{--<nav class="navbar navbar-inverse" style="min-height: 20px;background: #475268;padding-right: 390px;">--}}
        {{--<div class="nav-collapse">--}}
            {{--<ul id="secondary-menu" class="nav pull-right" >--}}
                {{--@if (auth()->guest())--}}
                    {{--<li style="float: right;position: relative;color: #ffffff">--}}
                        {{--<a href="{{ route('home.register.form') }}">注册</a>--}}
                    {{--</li>--}}
                    {{--<li style="float: right;position: relative;color: #ffffff">--}}
                        {{--<a href="{{ route('home.login.form') }}">登录</a>--}}
                    {{--</li>--}}
                {{--@else--}}
                    {{--<li class="dropdown" style="float: right;position: relative;color: #ffffff">--}}
                        {{--<a href="{{ route('home.login.logout') }}">退出</a>--}}
                    {{--</li>--}}
                    {{--<li class="dropdown" style="float: right;position: relative;color: #ffffff">--}}
                        {{--<a href="{{ route('member.index.index') }}">{{ auth()->user()->nickname }}</a>--}}
                    {{--</li>--}}
                {{--@endif--}}
            {{--</ul>--}}
        {{--</div>--}}
    {{--</nav>--}}
    {{--<div class="navbar navbar-default navbar-static-top">--}}
        {{--<div class="container">--}}
            {{--<div class="navbar-header">--}}
                {{--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">--}}
                    {{--<span class="icon-bar"></span>--}}
                    {{--<span class="icon-bar"></span>--}}
                    {{--<span class="icon-bar"></span>--}}
                {{--</button>--}}
                {{--<a class="navbar-brand" href="index.html">卓杭<span>广告</span></a>--}}
            {{--</div>--}}
            {{--<div class="navbar-collapse collapse ">--}}
                {{--<ul class="nav navbar-nav">--}}
                    {{--@foreach($channels as $channel)--}}
                        {{--<li @if(isset($channel_id) && $channel['id'] == $channel_id) class="active" @endif>--}}
                            {{--<a href="{{ route($channel['url']) }}" @if($channel['target']) target="_blank" @endif>--}}
                                {{--{{ $channel['title'] }}--}}
                            {{--</a>--}}
                        {{--</li>--}}
                    {{--@endforeach--}}
                    {{--<li><input type="text" placeholder=" Search" class="form-control search"></li>--}}
                {{--</ul>--}}
            {{--</div>--}}
        {{--</div>--}}
    {{--</div>--}}
{{--</header>--}}
{{--<!--header end-->--}}