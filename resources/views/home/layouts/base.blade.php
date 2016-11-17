<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keyword" content="">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="{{ asset('assets/home/css/app.css') }}" rel="stylesheet">
    @yield('style')
</head>
<body>
    @include('home.layouts.head')
    @yield('content')
    @include('home.layouts.footer')
    @yield('script')
</body>
</html>
