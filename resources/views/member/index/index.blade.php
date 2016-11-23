@extends('member.layouts.base')
@section('style')
@endsection
@section('script')
    <script type="text/javascript">
        $(function(){
            highlight_subnav("{{ route('member.index.index') }}");
        })
    </script>
@endsection
@section('body')
    <!--container start-->
    <div class="container">
        <div class="row">
            @include('member.layouts.nav')
            <div class="col-lg-10 col-sm-10">
                <h5 class="member-title">基本信息</h5>
                <div class="contact-form">
                    <form role="form">
                        <div class="form-group">
                            <label class="control-label">认证手机：</label>
                            {{ $user->username }}
                            @if($user->is_auth)已认证@else未认证@endif
                        </div>
                        <div class="form-group">
                            <label class="control-label">联系人：</label>
                            {{ $user->nickname }}
                        </div>
                        @if($user->type == 2)
                            <div class="form-group">
                                <label class="control-label">公司名称：</label>
                                {{ $user->company }}
                            </div>
                        @endif
                        <div class="form-group">
                            <label class="control-label">QQ号码：</label>
                            {{ $user->qq }}
                        </div>
                        <div class="form-group">
                            <label class="control-label">微信账号：</label>
                            {{ $user->weixin }}
                        </div>
                        <div class="form-group">
                            <label  class="control-label">我的客服：</label>
                            {{ $user->custom_name }}
                        </div>
                        <div class="form-group">
                            <label  class="control-label">E-mail：</label>
                            {{ $user->email }}
                        </div>
                        <div class="form-group" style="padding-left: 150px">
                            <a class="btn btn-danger"  href="{{ route('member.index.edit') }}">修改资料</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--container end-->
@endsection
