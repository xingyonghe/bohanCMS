@extends('member.layouts.base')
@section('style')
    <link href="{{ asset('assets/static/datetimepicker/datetimepicker.css') }}" rel="stylesheet">
@endsection
@section('script')
    <script src="{{ asset('assets/static/datetimepicker/jquery.datetimepicker.full.js') }}"></script>
    <script type="text/javascript">
        $(function(){
            highlight_subnav("{{ route('member.task.create') }}");

            $.datetimepicker.setLocale('ch');
            $('#dead_time').datetimepicker({
                format:"Y-m-d H:i",      //格式化日期
                todayButton:false,    //关闭选择今天按钮
                minDate:true,
                todayButton:true
            });
            $('#start_time').datetimepicker({
                format:"Y-m-d H:i",      //格式化日期
                todayButton:false,    //关闭选择今天按钮
                minDate:true,
                todayButton:true
            });
            $('#end_time').datetimepicker({
                format:"Y-m-d H:i",      //格式化日期
                todayButton:false,    //关闭选择今天按钮
                minDate:true,
                todayButton:true
            });
        })
    </script>
@endsection
@section('body')
    <!--container start-->
    <div class="container">
        <div class="row">
            @include('member.layouts.nav')
            <div class="col-lg-10 col-sm-10">
                <h5 class="member-title">@if(isset($info))修改派单@else新增派单@endif</h5>
                <div class="contact-form">
                    <form role="form" class=" data-form" action="{{ route('member.task.update') }}" metho="post">
                        {{ csrf_field() }}
                        @if(isset($info))
                            <input  type="hidden" name="id" value="{{ $info->id }}"/>
                        @endif
                        <div class="form-group">
                            <label class="control-label">活动名称：</label>
                            <input type="text" name="title" placeholder="请填写活动名称" id="title" value="{{ $info->title ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">预算金额：</label>
                            <input type="text" name="money" style="width:308px" placeholder="请填写预算金额"  id="money" value="{{ $info->money ?? '' }}" class="form-control"/>元
                        </div>
                        <div class="form-group">
                            <label class="control-label">执行时间：</label>
                            <input type="text" style="width:308px" placeholder="请选择执行开始时间" name="start_time" id="start_time" value="{{ $info->start_time ?? '' }}" class="form-control datetimepicker"/>--
                            <input type="text" style="width:308px" placeholder="请选择执行结束时间" name="end_time" id="end_time" value="{{ $info->end_time ?? '' }}" class="form-control datetimepicker"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">需要媒体数量：</label>
                            <input type="text" style="width:308px" placeholder="请填写活动需要媒体数量" name="num" id="num" value="{{ $info->num ?? '' }}" class="form-control"/>个
                        </div>
                        <div class="form-group">
                            <label class="control-label">联系人：</label>
                            <input type="text" name="name" placeholder="请填写联系人名称" id="name" value="{{ $info->name ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">联系电话：</label>
                            <input type="text" name="mobile" placeholder="请填写联系电话" id="mobile" value="{{ $info->mobile ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">公司名称：</label>
                            <input type="text" name="company" placeholder="请填写主办公司名称" id="company" value="{{ $info->company ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label  class="control-label">E-mail：</label>
                            <input type="text" name="email" placeholder="请填写联系E-mail" id="email" value="{{ $info->email ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">广告形式：</label>
                            <input type="text" name="shape" placeholder="请填写活动广告形式" id="shape" value="{{ $info->shape ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">广告要求：</label>
                            <textarea name="demand" id="demand" placeholder="请填写活动广告要求" class="form-control" rows="5">{{ $info->demand ?? '' }}</textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">截至时间：</label>
                            <input type="text" style="width:308px" placeholder="请选择活动截至时间" name="dead_time" id="dead_time" value="{{ $info->dead_time ?? '' }}" class="form-control datetimepicker"/>
                        </div>
                        <div class="form-group" style="padding-left: 150px">
                            <button class="btn btn-danger ajax-post" type="submit">提 交</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--container end-->
@endsection
