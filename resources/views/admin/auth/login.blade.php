<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keyword" content="">
    <title>BoHan后台管理系统</title>
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/admin/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/css/bootstrap-reset.css') }}" rel="stylesheet">
    <!--external css-->
    <link href="{{ asset('assets/admin/assets/font-awesome/css/font-awesome.css') }}" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/admin/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/css/style-responsive.css') }}" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <script src="{{ asset('assets/admin/js/jquery.js') }}"></script>
    <script src="{{ asset('assets/admin/js/jquery-1.8.3.min.js') }}"></script>
    <script src="{{ asset('assets/static/layer/layer.js') }}"></script>
    <script type="text/javascript">
        $(function () {
            $('body').on('click','.btn-login',function(){
                var form  = $('.form-datas');
                var url   = form.get(0).action;
                var query = form.serialize();
                var that  = this;
//                $(that).addClass('disabled').prop('disabled',true);
                $.post(url,query,function(datas){
                    if(datas.status == 1){
//                        $(that).removeClass('disabled').prop('disabled',false);
                        setTimeout(function(){
                            location.href = datas.url;
                        },1500);
                    }else{
//                        $(that).removeClass('disabled').prop('disabled',false);
                        layer.msg(datas.info,{
                            time:3000,icon:2,
                        });
                    }
                },'json');
                return false;
            });
        })
    </script>
</head>

<body class="login-body">

<div class="container" style="margin-top: 150px">
    {!! Form::open(['url' => route('admin.login.post'),'class'=>'form-signin form-datas']) !!}
        <h2 class="form-signin-heading">BoHan后台管理系统</h2>
        <div class="login-wrap">
            <input type="text" class="form-control" placeholder="请输入管理员账号" name="username">
            <input type="password" class="form-control" placeholder="请输入密码" name="password">
            <button class="btn btn-lg btn-login btn-block" autocomplete="off">登 录</button>
        </div>
    {!!Form::close()!!}
</div>


</body>
</html>
