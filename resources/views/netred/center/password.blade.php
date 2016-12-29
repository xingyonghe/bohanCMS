@extends('netred.layouts.base')
@section('style')
@endsection
@section('script')
    <script type="text/javascript">
        $(function(){
            $('.ajax-post').click(function(){
                var that = $(this);
                formAjaxPost($('.data-form'),that);
                return false;
            });
        })
    </script>
@endsection
@section('body')
    <div class="inner_c">
        <div class="biao2">
            <div class="addshoukuan">
                <div class="formdl">
                    <div class="main_nav">
                        <ul>
                            <li><a href="{{ route('netred.center.index') }}">基本信息</a></li>
                            <li class="cur"><a href="{{ route('netred.center.password') }}">修改密码</a></li>
                        </ul>
                    </div>
                    <div class="qingchu"></div>
                </div>
                <form role="form" class="data-form" action="{{ route('netred.center.reset') }}" metho="post">
                    {{ csrf_field() }}
                    <div class="formdl">
                        <div class="formzi fl">原始密码：</div>
                        <div class="textkuang fl">
                            <input type="password"  id="password-old" name="password-old" placeholder="请输入旧密码" value="">
                        </div>
                        <div class="qingchu"></div>
                    </div>

                    <div class="formdl">
                        <div class="formzi fl">新的密码：</div>
                        <div class="textkuang fl">
                            <input type="password" id="password"  name="password" placeholder="请输入新密码" value="">
                        </div>
                        <div class="qingchu"></div>
                    </div>
                    <div class="formdl">
                        <div class="formzi fl">确认新的密码：</div>
                        <div class="textkuang fl">
                            <input id="password-confirm"  type="password" name="password_confirmation" placeholder="确认新密码" value="">
                        </div>
                        <div class="qingchu"></div>
                    </div>
                    <div class="sub">
                        <input class="ajax-post" type="submit" value="修改密码">
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection