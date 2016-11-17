@extends('admin.layouts.base')
@section('style')
@stop
@section('script')
    <script type="text/javascript">
        $(function () {
            highlight_subnav("{{ route('admin.group.index') }}");
        })
    </script>
@stop
@section('body')
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    用户组管理
                </header>
                <div class="panel-body">
                    <div class="clearfix">
                        <div class="btn-group">
                            <a href="javascript:void(0)" url="{{ route('admin.group.create') }}" class="btn btn-primary ajax-update">
                                新增 <i class="fa icon-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div id="sample_1_wrapper" class="dataTables_wrapper form-inline" role="grid">
                    <table class="table table-striped border-top" id="sample_1">
                        <thead>
                        <tr>
                            <th style="width:8px;">
                                <input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes"/>
                            </th>
                            <th class="hidden-phone">用户组</th>
                            <th class="hidden-phone">描述</th>
                            <th class="hidden-phone">状态</th>
                            <th class="hidden-phone">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($lists as $data)
                            <tr class="odd gradeX">
                                <td><input type="checkbox" class="checkboxes" value="{{ $data->id }}"/></td>
                                <td>{{ $data->title }}</td>
                                <td class="hidden-phone">{{ $data->description }}</td>
                                <td class="hidden-phone">{!! $data->status_text !!}</td>
                                <td class="hidden-phone">
                                    @if($data->id>1)
                                        <a class="btn btn-primary btn-xs" href="{{ route('admin.group.access',[$data->id]) }}"><i class="icon-pencil"></i> 授权</a>
                                        <a class="btn btn-primary btn-xs ajax-update" href="javascript:void(0)" url="{{ route('admin.group.edit',[$data->id]) }}"><i class="icon-pencil"></i> 修改</a>
                                        <a class="btn btn-danger btn-xs ajax-confirm" href="javascript:void(0)" url="{{ route('admin.group.destroy',[$data->id]) }}"><i class="icon-trash "></i> 删除</a>
                                    @endif
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
                            {!! $lists->render() !!}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- page end-->
@stop