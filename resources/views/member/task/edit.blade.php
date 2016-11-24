@extends('member.layouts.base')
@section('style')
    <link href="{{ asset('assets/static/datetimepicker/datetimepicker.css') }}" rel="stylesheet">
@endsection
@section('script')
    <script src="{{ asset('assets/static/datetimepicker/jquery.datetimepicker.full.js') }}"></script>
    <script type="text/javascript">
        $(function(){
            highlight_subnav("{{ route('member.task.create') }}");
            //日期
//            laydate({
//                elem: '#dead_time',
//                event: 'focus', //响应事件。如果没有传入event，则按照默认的click
//                min: laydate.now(), //设定最小日期为当前日期
//                istime: true,
//                format: 'YYYY-MM-DD hh:mm:ss', //日期格式
//                choose: function (dates) { //选择好日期的回调
//                    $('.ui_radio.radio2').find('i').removeClass('on');
//                    $('.ui_radio.radio2').find('input').prop('checked', false);
//                }
//            });
            $.datetimepicker.setLocale('ch');
            $('#dead_time').datetimepicker({
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
                <h5 class="member-title">修改资料</h5>
                <div class="contact-form">
                    <form role="form" class=" data-form" action="{{ route('member.task.update') }}" metho="post">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label class="control-label">活动名称：</label>
                            <input type="text" name="title" id="title" value="{{ $info->title ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">预算金额：</label>
                            <input type="text" name="money"  id="money" value="{{ $info->money ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">执行时间：</label>
                            <input type="text" name="start_time" id="start_time" value="{{ $info->start_time ?? '' }}" class="form-control"/>--
                            <input type="text" name="end_time" id="end_time" value="{{ $info->end_time ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">需要媒体数量：</label>
                            <input type="text" name="num" id="num" value="{{ $info->num ?? '' }}" class="form-control"/>个
                        </div>
                        <div class="form-group">
                            <label class="control-label">联系人：</label>
                            <input type="text" name="name" id="name" value="{{ $info->name ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">联系电话：</label>
                            <input type="text" name="mobile" id="mobile" value="{{ $info->mobile ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">公司名称：</label>
                            <input type="text" name="company" id="company" value="{{ $info->company ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label  class="control-label">E-mail：</label>
                            <input type="text" name="email" id="email" value="{{ $info->email ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">广告形式：</label>
                            <input type="text" name="shape" id="shape" value="{{ $info->shape ?? '' }}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label">广告要求：</label>
                            <textarea name="demand" id="demand" class="form-control" rows="5">
                                {{ $info->demand ?? '' }}
                            </textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label">截至时间：</label>
                            <input type="text" name="dead_time" id="dead_time" value="{{ $info->dead_time ?? '' }}" class="form-control"/>
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
