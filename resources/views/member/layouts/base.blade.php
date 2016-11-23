<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {!! SEO::generate() !!}
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/member/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/member/css/theme.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/member/css/bootstrap-reset.css') }}" rel="stylesheet">
    <!--external css-->
    <link href="{{ asset('assets/member/fontawesome/css/font-awesome.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/member/css/flexslider.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/member/assets/bxslider/jquery.bxslider.css') }}" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/member/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/member/css/style-responsive.css') }}" rel="stylesheet" />
    @yield('style')
</head>
<body>
@include('member.layouts.head')
@yield('body')
@include('member.layouts.footer')
<!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
<!--[if lt IE 9]>
<script type="text/javascript" src="{{ asset('assets/member/js/html5shiv.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/member/js/respond.min.js') }}"></script>
<![endif]-->
<!-- js placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="{{ asset('assets/member/js/jquery.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/member/js/jquery-1.8.3.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/member/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/member/js/hover-dropdown.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/member/js/jquery.flexslider.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/member/assets/bxslider/jquery.bxslider.js') }}"></script>
<!--common script for all pages-->
<script type="text/javascript" src="{{ asset('assets/member/js/common-scripts.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/member/js/revulation-slide.js') }}"></script>
<!-- layer插件 -->
<script type="text/javascript" src="{{ asset('assets/static/layer/layer.js') }}"></script>
<!-- 自定义js -->
<script type="text/javascript" src="{{ asset('assets/member/js/common.js') }}"></script>
@yield('script')
</body>
</html>