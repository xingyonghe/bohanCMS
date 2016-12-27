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
                    <li class="cur"><a href="{{ route('ads.center.index') }}">基本信息</a></li>
                    <li><a href="{{ route('ads.center.password') }}">修改密码</a></li>
                </ul>
            </div>
            <form role="form" class="data-form" action="{{ route('ads.center.update') }}" metho="post">
                {{ csrf_field() }}
                <div class="form1">
                    <div class="text">
                        <label>用户名：</label><input id="tex2" disabled value="{{ $user->username }}" type="text"/>@if($user->is_auth)已认证@else未认证@endif
                    </div>
                    <div class="text">
                        <label>联系人姓名：</label><input  name="nickname" id="nickname" value="{{ $user->nickname }}" type="text"/>
                    </div>
                    <div class="text">
                        <label>微信：</label><input  name="weixin"  id="weixin"  value="{{ $user->weixin }}" type="text"/>
                    </div>
                    <div class="text">
                        <label>邮箱：</label><input  name="email" id="email" value="{{ $user->email }}" type="text"/>
                    </div>
                    <div class="text">
                        <label>QQ：</label><input  name="qq" id="qq" value="{{ $user->qq }}" type="text"/>
                    </div>
                </div>
                <div class="quren">
                    <input  id="submit1" class="tijiao ajax-post"  type="submit"  value="修改并保存"/>
                </div>
            </form>
        </div>
    </div>
@endsection
