<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {!! SEO::generate() !!}
    <link rel="shortcut icon" href="{{ asset('assets/home/images/logo.png') }}">
    <link href="{{ asset('assets/member/index.css') }}" rel="stylesheet">
    @yield('style')
</head>
<body>
    <div class="top">
        <div class="zhong">
            <div class="fl">欢迎您！ 用户名：{{ auth()->user()->username }}</div>
            <div class="fr"><a href="{{ route('netred.login.logout') }}">退出登录</a></div>
        </div>
    </div>
    <div class="header">
    @include('netred.layouts.head')
    @yield('body')
    </div>
    @include('netred.layouts.footer')
    <script type="text/javascript" src="{{ asset('assets/member/js/jquery-1.8.3.min.js') }}"></script>
    <!-- layer插件 -->
    <script type="text/javascript" src="{{ asset('assets/static/layer/layer.js') }}"></script>
    <!-- 自定义js -->
    <script type="text/javascript" src="{{ asset('assets/member/js/common.js') }}"></script>
    @yield('script')
</body>
</html>