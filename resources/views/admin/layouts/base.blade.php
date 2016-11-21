<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="keyword" content="">
    <title>BoHanCMS管理系统</title>
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/admin/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/css/bootstrap-reset.css') }}" rel="stylesheet">
    <!--external css-->
    <link href="{{ asset('assets/admin/fontawesome/css/font-awesome.css') }}" rel="stylesheet" />
    {{--<link href="{{ asset('assets/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css') }}" rel="stylesheet" type="text/css" media="screen"/>--}}
    {{--<link href="{{ asset('assets/admin/css/owl.carousel.css') }}" rel="stylesheet" type="text/css" />--}}
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/admin/css/style.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/admin/css/style-responsive.css') }}" rel="stylesheet" />
    <!-- Custom styles for this template -->
    @yield('style')
</head>
<body>
<section id="container" class="">
    @include('admin.layouts.head')
    @include('admin.layouts.menu')
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            {{--<div class="row">--}}
                {{--<div class="col-lg-12">--}}
                    {{--<!--breadcrumbs start -->--}}
                    {{--<ul class="breadcrumb">--}}
                        {{--<li><a href="#"><i class="icon-home"></i> Home</a></li>--}}
                        {{--<li><a href="#">Library</a></li>--}}
                        {{--<li class="active">Data</li>--}}
                    {{--</ul>--}}
                    {{--<!--breadcrumbs end -->--}}
                {{--</div>--}}
            {{--</div>--}}
            <div id="top-alert" class="alert alert-block alert-danger fade in" style="display:none;position: fixed;width:89.11%;z-index: 555">
                <button data-dismiss="alert" class="close close-sm" type="button">
                    <i class="icon-remove"></i>
                </button>
                <strong class="msg" style="margin-right: 25px">Oh Warning !</strong><span class="message"></span>
            </div>
            @if(Session::has('success'))
                <div class="alert-msg alert alert-success fade in" style="position: fixed;width:89.11%;z-index: 555">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="icon-remove"></i>
                    </button>
                    <strong>Well Success!</strong> {{Session::get('success')}}
                </div>
            @endif
            @if(Session::has('error'))
                <div class="alert-msg alert alert-block alert-danger fade in" style="position: fixed;width:89.11%;z-index: 555">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="icon-remove"></i>
                    </button>
                    <strong>Oh Warning!</strong> {{Session::get('error')}}
                </div>
            @endif
            {{--@if($errors->has('status'))--}}
                {{--<div class="alert-msg alert alert-block alert-danger fade in" style="position: fixed;width:89.11%;z-index: 555">--}}
                    {{--<button data-dismiss="alert" class="close close-sm" type="button">--}}
                        {{--<i class="icon-remove"></i>--}}
                    {{--</button>--}}
                    {{--<strong>Oh Warning!</strong> {{$errors->first('error')}}--}}
                {{--</div>--}}
            {{--@endif--}}
            @yield('body')
        </section>
        <!--footer section start-->
        @include('admin.layouts.footer')
        <!--footer section end-->
    </section>
    <!--main content end-->
</section>

<!-- js placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="{{ asset('assets/admin/js/jquery.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/admin/js/bootstrap.min.js') }}"></script>
<!--common script for all pages-->
<script type="text/javascript" src="{{ asset('assets/admin/js/jquery.dcjqaccordion.2.7.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/admin/js/jquery.scrollTo.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/admin/js/jquery.nicescroll.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/admin/js/respond.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/admin/js/common-scripts.js') }}"></script>
<!-- layer插件 -->
<script type="text/javascript" src="{{ asset('assets/static/layer/layer.js') }}"></script>
<!-- 自定义js -->
<script type="text/javascript" src="{{ asset('assets/admin/js/common.js') }}"></script>
@yield('script')
</body>
</html>
