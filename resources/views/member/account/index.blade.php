@extends('member.layouts.base')
@section('style')
@endsection
@section('script')
    <script type="text/javascript">
        $(function(){
            highlight_subnav("{{ route('member.account.index') }}");
        })
    </script>
@endsection
@section('body')
    <!--container start-->
    <div class="container">
        <div class="row">
            @include('member.layouts.nav')
            <div class="col-lg-10 col-sm-10">
                <h5 class="member-title">我的账户</h5>
                <div class="contact-form">
                    <form role="form">
                        <br/><br/>
                        <br/>
                        <div class="form-group">
                            <label class="control-label">账户余额：</label>
                            {{ auth()->user()->balance }}
                        </div>
                        <br/><br/>
                        <br/><br/>
                        <br/><br/>
                        <div class="form-group" style="padding-left: 150px">
                            <a class="btn btn-danger"  href="{{ route('member.account.recharge') }}">充 值</a>
                            <a class="btn btn-danger"  href="{{ route('member.account.cash') }}">提 现</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--container end-->
@endsection
