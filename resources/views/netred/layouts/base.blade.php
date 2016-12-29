<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {!! SEO::generate() !!}
    <link rel="shortcut icon" href="{{ asset('assets/home/images/logo.png') }}">
    <link href="{{ asset('assets/member/netred/index.css') }}" rel="stylesheet">
    @yield('style')
</head>
<body>
    @include('netred.layouts.head')
    @yield('body')
    @include('netred.layouts.footer')
    <script type="text/javascript" src="{{ asset('assets/member/js/jquery-1.8.3.min.js') }}"></script>
    <!-- 自定义验证规则 -->
    <script type="text/javascript" src="{{ asset('assets/static/validator/validator.js') }}"></script>
    <!-- 地区 -->
    <script type="text/javascript" src="{{ asset('assets/member/js/region.js') }}"></script>
    <!-- layer插件 -->
    <script type="text/javascript" src="{{ asset('assets/static/layer/layer.js') }}"></script>
    <!-- 自定义js -->
    <script type="text/javascript" src="{{ asset('assets/member/js/common.js') }}"></script>

    @yield('script')
</body>
</html>