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
    <div class="juzhong">
        <div class="neirong">
            <div class="main_nav">
                <ul>
                    <li><a href="{{ route('netred.center.index') }}">基本信息</a></li>
                    <li class="cur"><a href="{{ route('netred.center.password') }}">修改密码</a></li>
                </ul>
            </div>
            <form role="form" class="data-form" action="{{ route('netred.center.reset') }}" metho="post">
                {{ csrf_field() }}
                <div class="form1">
                    <p>原始密码：<input type="password"  id="password-old" name="password-old" placeholder="请输入旧密码" value=""></p>
                    <p>新的密码：<input type="password" id="password"  name="password" placeholder="请输入新密码" value=""></p>
                    <p>确认新的密码：<input id="password-confirm"  type="password" name="password_confirmation" placeholder="确认新密码" value=""></p>
                </div>
                <div class="quren">
                    <input class="tijiao2 ajax-post" type="submit" value="修改并保存">
                </div>
            </form>
        </div>
    </div>
@endsection