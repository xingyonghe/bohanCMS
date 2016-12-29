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
                            <li class="cur"><a href="{{ route('netred.center.index') }}">基本信息</a></li>
                            <li><a href="{{ route('netred.center.password') }}">修改密码</a></li>
                        </ul>
                    </div>
                    <div class="qingchu"></div>
                </div>
                <form role="form" class="data-form" action="{{ route('netred.center.update') }}" metho="post">
                    {{ csrf_field() }}
                    <div class="formdl">
                        <div class="formzi fl">用户名：</div>
                        <div class="textkuang fl">
                            <input id="tex2" disabled value="{{ $user->username }}" type="text"/>@if($user->is_auth)已认证@else未认证@endif
                        </div>
                        <div class="qingchu"></div>
                    </div>

                    <div class="formdl">
                        <div class="formzi fl">联系人：</div>
                        <div class="textkuang fl">
                            <input  name="nickname" id="nickname" value="{{ $user->nickname }}" type="text"/>
                        </div>
                        <div class="qingchu"></div>
                    </div>
                    <div class="formdl">
                        <div class="formzi fl">微信：</div>
                        <div class="textkuang fl">
                            <input  name="weixin"  id="weixin"  value="{{ $user->weixin }}" type="text"/>
                        </div>
                        <div class="qingchu"></div>
                    </div>
                    <div class="formdl">
                        <div class="formzi fl">邮箱：</div>
                        <div class="textkuang fl">
                            <input  name="email" id="email" value="{{ $user->email }}" type="text"/>
                        </div>
                        <div class="qingchu"></div>
                    </div>

                    <div class="formdl">
                        <div class="formzi fl">QQ：</div>
                        <div class="textkuang fl">
                            <input  name="qq" id="qq" value="{{ $user->qq }}" type="text"/>
                        </div>
                        <div class="qingchu"></div>
                    </div>
                    <div class="sub">
                        <input  class="tijiao ajax-post"  type="submit"  value="修改并保存"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
