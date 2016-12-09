<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {!! SEO::generate() !!}
    <link rel="shortcut icon" href="{{ asset('assets/home/images/logo.png') }}">
    <link href="{{ asset('assets/home/css.css') }}" rel="stylesheet" type="text/css"/>
    <script type='text/javascript' src='{{ asset('assets/home/js/jquery-1.7.2.min.js') }}'></script>
    @yield('style')
    <script type=text/javascript>
        function displaySubMenu(li) {
            var subMenu = li.getElementsByTagName("div")[0];
            subMenu.style.display = "block";
        }

        function hideSubMenu(li) {
            var subMenu = li.getElementsByTagName("div")[0];
            subMenu.style.display = "none";
        }
    </script>
</head>
<body>
@yield('body')
@include('home.layouts.footer')
<<<<<<< HEAD
<script type="text/javascript" src="{{ asset('assets/static/layer/layer.js') }}"></script>
=======
<!-- layer插件 -->
<script type="text/javascript" src="{{ asset('assets/static/layer/layer.js') }}"></script>
<!-- 自定义js -->
>>>>>>> 902e3fbc731b36e3c9d75047a9b96e779166b12b
<script type='text/javascript' src='{{ asset('assets/home/js/public.js') }}'></script>
@yield('script')
</body>
</html>