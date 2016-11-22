<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {!! SEO::generate() !!}
    <link rel="shortcut icon" href="img/favicon.png">
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/home/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/home/css/theme.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/home/css/bootstrap-reset.css') }}" rel="stylesheet">
    <!--external css-->
    <link href="{{ asset('assets/home/fontawesome/css/font-awesome.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/home/css/flexslider.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/home/assets/bxslider/jquery.bxslider.css') }}" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/home/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/home/css/style-responsive.css') }}" rel="stylesheet" />
    @yield('style')
</head>
<body>
@include('home.layouts.head')
@yield('body')
@include('home.layouts.footer')
<!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
<!--[if lt IE 9]>
<script src="{{ asset('assets/home/js/html5shiv.js') }}"></script>
<script src="{{ asset('assets/home/js/respond.min.js') }}"></script>
<![endif]-->
<!-- js placed at the end of the document so the pages load faster -->
<script src="{{ asset('assets/home/js/jquery.js') }}"></script>
<script src="{{ asset('assets/home/js/jquery-1.8.3.min.js') }}"></script>
<script src="{{ asset('assets/home/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/home/js/hover-dropdown.js') }}"></script>
<script defer src="{{ asset('assets/home/js/jquery.flexslider.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/home/assets/bxslider/jquery.bxslider.js') }}"></script>
<!--common script for all pages-->
<script src="{{ asset('assets/home/js/common-scripts.js') }}"></script>
<script src="{{ asset('assets/home/js/revulation-slide.js') }}"></script>
<!-- layer插件 -->
<script type="text/javascript" src="{{ asset('assets/static/layer/layer.js') }}"></script>
<!-- 自定义js -->
<script type="text/javascript" src="{{ asset('assets/home/js/common.js') }}"></script>
@yield('script')
</body>
</html>