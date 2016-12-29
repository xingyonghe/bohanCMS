<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="keyword" content="">
    <title>网红后台管理系统</title>
    <!-- Bootstrap core CSS -->
    <link href="{{ asset('assets/admin/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/css/bootstrap-reset.css') }}" rel="stylesheet">
    <!--external css-->
    <link href="{{ asset('assets/admin/fontawesome/css/font-awesome.css') }}" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="{{ asset('assets/admin/css/style.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/admin/css/style-responsive.css') }}" rel="stylesheet" />
    <!-- Custom styles for this template -->
    @yield('style')
</head>
<body>
<section id="container" class="">
@include('admin.layouts.head')
    <section class="wrapper">
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
        @if($errors->has('status'))
            <div class="panel-body">
                <div class="alert-msg alert alert-block alert-danger fade in" style="position: fixed;width:89.11%;z-index: 555">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="icon-remove"></i>
                    </button>
                    <strong>Oh Warning!</strong> {{$errors->first('error')}}
                </div>
            </div>
        @endif
        <div class="row">
            <div class="col-lg-4">
                <section class="panel post-wrap">
                    <aside>
                        <div class="post-info">
                            <span class="arrow-pro right"></span>
                            <div class="panel-body">
                                <h1><strong>状态</strong> <br> <br> </h1>
                                <div class="desk yellow">
                                    <span class="label label-default">禁用</span>
                                    <span class="label label-success">正常</span>
                                    <span class="label label-info">待审核</span>
                                    <span class="label label-inverse">未通过</span>
                                    <span class="label label-warning">已过期</span>
                                    <span class="label label-danger">已删除</span>
                                    <pre style="margin-top: 15px">
&lt;span class="label label-default"&gt;禁用 &lt;/span&gt;
&lt;span class="label label-success"&gt;正常 &lt;/span&gt;
&lt;span class="label label-info"&gt;待审核 &lt;/span&gt;
&lt;span class="label label-inverse"&gt;未通过 &lt;/span&gt;
&lt;span class="label label-warning"&gt;已过期 &lt;/span&gt;
&lt;span class="label label-danger"&gt;已删除 &lt;/span&gt;</pre>
                                </div>
                            </div>
                        </div>
                    </aside>
                </section>
            </div>
            <div class="col-lg-4">
                <section class="panel post-wrap">
                    <aside>
                        <div class="post-info">
                            <span class="arrow-pro right"></span>
                            <div class="panel-body">
                                <h1><strong>按钮</strong> <br> <br> </h1>
                                <div class="desk yellow">
                                    <a class="btn btn-primary btn-xs"><i class="icon-pencil"></i> 修改</a>
                                    <a class="btn btn-danger btn-xs"><i class="icon-trash"></i> 删除</a>
                                    <a class="btn btn-success btn-xs"><i class="icon-ok-circle"></i> 启用</a>
                                    <a class="btn btn-default btn-xs"><i class="icon-off"></i> 禁用</a>
                                    <a class="btn btn-info btn-xs"><i class="icon-eye-open"></i> 详情</a><br><br>
                                    <button class="btn btn-primary"><i class="icon-download"></i> 下载</button>
                                    <button class="btn btn-primary"><i class="icon-cloud-upload"></i> 上传</button>
                                    <button class="btn btn-primary"><i class="icon-print"></i> 打印</button>
                                    <button class="btn btn-primary"><i class="icon-plus"></i> 新增</button>
                                    <button class="btn btn-primary"><i class="icon-search"></i>搜索</button>
                                    <pre style="margin-top: 15px">
&lt;a class="btn btn-primary btn-xs"&gt;&lt;i class="icon-pencil"&gt;&lt;/i&gt;修改&lt;/a&gt;
&lt;a class="btn btn-danger btn-xs"&gt;&lt;i class="icon-trash"&gt;&lt;/i&gt;删除&lt;/a&gt;
&lt;a class="btn btn-success btn-xs"&gt;&lt;i class="icon-ok-circle"&gt;&lt;/i&gt;启用&lt;/a&gt;
&lt;a class="btn btn-default btn-xs"&gt;&lt;i class="icon-off"&gt;&lt;/i&gt;禁用&lt;/a&gt;
&lt;a class="btn btn-info btn-xs"&gt;&lt;i class="icon-eye-open"&gt;&lt;/i&gt;详情&lt;/a&gt;
&lt;button class="btn btn-primary"&gt;&lt;i class="icon-download"&gt;&lt;/i&gt;下载&lt;/button&gt;
&lt;button class="btn btn-primary"&gt;&lt;i class="icon-cloud-upload"&gt;&lt;/i&gt;上传&lt;/button&gt;
&lt;button class="btn btn-primary"&gt;&lt;i class="icon-print"&gt;&lt;/i&gt;打印&lt;/button&gt;
&lt;button class="btn btn-primary"&gt;&lt;i class="icon-plus"&gt;&lt;/i&gt;新增&lt;/button&gt;
&lt;button class="btn btn-primary"&gt;&lt;i class="icon-search"&gt;&lt;/i&gt;搜索&lt;/button&gt;</pre>
                                </div>
                            </div>
                        </div>
                    </aside>
                </section>
            </div>
            <div class="col-lg-4">
                <section class="panel post-wrap">
                    <aside>
                        <div class="post-info">
                            <span class="arrow-pro right"></span>
                            <div class="panel-body">
                                <h1><strong>标签</strong> <br> <br> </h1>
                                <div class="desk yellow">
                                    <span class="label label-default">禁用</span>
                                    <span class="label label-success">正常</span>
                                    <span class="label label-info">待审核</span>
                                    <span class="label label-inverse">未通过</span>
                                    <span class="label label-warning">已过期</span>
                                    <span class="label label-danger">已删除</span>
                                    <pre style="margin-top: 15px">
&lt;span class="label label-default"&gt;禁用 &lt;/span&gt;
&lt;span class="label label-success"&gt;正常 &lt;/span&gt;
&lt;span class="label label-info"&gt;待审核 &lt;/span&gt;
&lt;span class="label label-inverse"&gt;未通过 &lt;/span&gt;
&lt;span class="label label-warning"&gt;已过期 &lt;/span&gt;
&lt;span class="label label-danger"&gt;已删除 &lt;/span&gt;</pre>
                                </div>
                            </div>
                        </div>
                    </aside>
                </section>
            </div>
            <div class="col-lg-4">
                <section class="panel post-wrap">
                    <aside>
                        <div class="post-info">
                            <span class="arrow-pro right"></span>
                            <div class="panel-body">
                                <h1><strong>状态</strong> <br> <br> </h1>
                                <div class="desk yellow">
                                    <span class="label label-default">禁用</span>
                                    <span class="label label-success">正常</span>
                                    <span class="label label-info">待审核</span>
                                    <span class="label label-inverse">未通过</span>
                                    <span class="label label-warning">已过期</span>
                                    <span class="label label-danger">已删除</span>
                                    <pre style="margin-top: 15px">
&lt;span class="label label-default"&gt;禁用 &lt;/span&gt;
&lt;span class="label label-success"&gt;正常 &lt;/span&gt;
&lt;span class="label label-info"&gt;待审核 &lt;/span&gt;
&lt;span class="label label-inverse"&gt;未通过 &lt;/span&gt;
&lt;span class="label label-warning"&gt;已过期 &lt;/span&gt;
&lt;span class="label label-danger"&gt;已删除 &lt;/span&gt;</pre>
                                </div>
                            </div>
                        </div>
                    </aside>
                </section>
            </div>
            {{--<div class="border-head">--}}
                {{--<h3>提示</h3>--}}
            {{--</div>--}}
            {{--<div class="border-head">--}}
                {{--<h3>插件</h3>--}}
            {{--</div>--}}
            {{--<div class="border-head">--}}
                {{--<h3>弹窗</h3>--}}
            {{--</div>--}}
            {{--<div class="border-head">--}}
                {{--<h3>标签</h3>--}}
            {{--</div>--}}

        </div>
    </section>
    @include('admin.layouts.footer')
</section>
<!-- js placed at the end of the document so the pages load faster -->
<script src="{{ asset('assets/admin/js/jquery.js') }}"></script>
<script src="{{ asset('assets/admin/js/jquery-1.8.3.min.js') }}"></script>
<script src="{{ asset('assets/admin/js/bootstrap.min.js') }}"></script>
<!--common script for all pages-->
<script src="{{ asset('assets/admin/js/common-scripts.js') }}"></script>
<!-- 自定义js -->
<script src="{{ asset('assets/admin/js/common.js') }}"></script>

<script src="{{ asset('assets/static/layer/layer.js') }}"></script>
@yield('script')
</body>
</html>