@extends('admin.layouts.base')
@section('style')
@stop
@section('script')
    <script type="text/javascript">
        $(function () {
            highlight_subnav("{{ route('admin.netred.index') }}");
        })
    </script>
@stop
@section('body')
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    网红列表
                </header>
                <div class="panel-body">
                    <div class="clearfix">
                        {{--<div class="btn-group">--}}
                            {{--<a href="" class="btn btn-primary ajax-update">--}}
                                {{--新增 <i class="fa icon-plus"></i>--}}
                            {{--</a>--}}
                        {{--</div>--}}
                        <div class="btn-group pull-right">
                            {!! Form::open(['url' => route('admin.netred.index'),'method'=>'get']) !!}
                            <div class="dataTables_filter">
                                <button class="btn btn-primary" type="submit"><i class="fa  icon-zoom-in"></i>搜索</button>
                            </div>
                            <div class="dataTables_filter">
                                用户名：<input type="text" name="username"  value="{{ $params['username'] ?? '' }}" class="form-controls">
                            </div>
                            {!!Form::close()!!}
                        </div>
                    </div>
                </div>
                <div id="sample_1_wrapper" class="dataTables_wrapper form-inline" role="grid">
                    <table class="table table-striped border-top" id="sample_1">
                        <thead>
                        <tr>
                            <th style="width:8px;">
                                <input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes"/></th>
                            <th>UID</th>
                            <th class="hidden-phone">用户名</th>
                            <th class="hidden-phone">联系人</th>
                            <th class="hidden-phone">QQ号码</th>
                            <th class="hidden-phone">余额</th>
                            <th class="hidden-phone">所属客服</th>
                            <th class="hidden-phone">状态</th>
                            <th class="hidden-phone">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($lists as $data)
                            <tr class="odd gradeX">
                                <td><input type="checkbox" class="checkboxes" value="{{ $data->id }}"/></td>
                                <td>{{ $data->id }}</td>
                                <td>{{ $data->username }}</td>
                                <td>{{ $data->nickname }}</td>
                                <td>{{ $data->qq }}</td>
                                <td>{{ $data->balance }} </td>
                                <td>{{ $data->custom_name }}</td>
                                <td class="hidden-phone">{!!  $data->status_text !!} </td>
                                <td class="hidden-phone">
                                    <a class="btn btn-primary btn-xs" href="{{ route('admin.netred.edit',[$data->id]) }}"><i class="icon-pencil"></i> 修改</a>
                                    {{--<a class="btn btn-warning btn-xs ajax-confirm forbid" href="{{ url('admin/personal/forbid',[$data->id]) }}"><i class="icon-info-sign"></i> 禁用</a>--}}
                                    {{--<a class="btn btn-danger btn-xs ajax-confirm destroy" href="{{ url('admin/personal/destroy',[$data->id]) }}"><i class="icon-trash "></i> 删除</a>--}}
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="dataTables_info" id="sample_1_info">共 {{ $lists->total() }} 条记录</div>
                        </div>
                        <div class="col-sm-6" style="text-align: right;position: relative;top:-25px;height: 39px">
                            {!! $lists->appends($params)->render() !!}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- page end-->
@stop