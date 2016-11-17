<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.html">

    <title>404 Page</title>
    <link href="{{ asset('assets/admin/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/css/bootstrap-reset.css') }}" rel="stylesheet">
    <!--external css-->
    <link href="{{ asset('assets/admin/assets/font-awesome/css/font-awesome.css') }}" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/admin/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/css/style-responsive.css') }}" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <script src="{{ asset('assets/admin/js/jquery.js') }}"></script>
    <script language="javascript">
        $(function () {
            var codeIntVal = $('#time').text();
            timename = setInterval(function(){
                codeIntVal--;
                $('#time').text(codeIntVal);
                if (codeIntVal < 1) {
                    window.history.go(-1);
                    clearInterval(timename);
                }
            }, "1000");
        });
    </script>
</head>

<body class="body-404">
<div class="container">
    <section class="error-wrapper">
        <i class="icon-404"></i>
        <h1>404</h1>
        <h2>页面不存在</h2>
        <p class="page-404">
            <h3>您要访问的页面不存在</h3>
        <i id="time" style="font-size: 18px;color: red">5</i> 秒后即将返回，直接访问<a href="{{ route('admin.index.index') }}" style="font-size: 25px">首页</a>
        </p>
    </section>

</div>


</body>
</html>
