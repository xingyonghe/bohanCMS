@extends('admin.layouts.base')
@section('style')
@stop
@section('script')
    <script type="text/javascript">
        $(function () {
            highlight_subnav("{{ route('admin.channel.index') }}");
        })
    </script>
@stop
@section('body')
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    导航管理
                </header>
                <div class="panel-body">
                    <div class="clearfix">
                        <div class="btn-group">
                            <a href="javascript:void(0)" url="{{ route('admin.channel.create') }}" class="btn btn-primary ajax-update">
                                新增 <i class="fa icon-plus"></i>
                            </a>
                        </div>
                        <div class="btn-group">
                            <a href="javascript:void(0)" url="{{ route('admin.channel.sort') }}" class="btn btn-primary ajax-sort">
                                排序 <i class="fa icon-resize-vertical"></i>
                            </a>
                        </div>
                        <div class="btn-group pull-right">
                            {!! Form::open(['url' => route('admin.channel.index'),'method'=>'get']) !!}
                            <div class="dataTables_filter">
                                <button class="btn btn-primary" type="submit"><i class="fa  icon-zoom-in"></i>搜索</button>
                            </div>
                            <div class="dataTables_filter">
                                导航名称：<input type="text" name="title" aria-controls="sample_1" value="{{ $params['title'] }}" class="form-controls">
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
                            <th>ID</th>
                            <th class="hidden-phone">名称</th>
                            <th class="hidden-phone">URL</th>
                            <th class="hidden-phone">备注</th>
                            <th class="hidden-phone">排序</th>
                            <th class="hidden-phone">状态</th>
                            <th class="hidden-phone">新窗口</th>
                            <th class="hidden-phone">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($lists as $data)
                            <tr class="odd gradeX">
                                <td><input type="checkbox" class="checkboxes" value="{{ $data->id }}"/></td>
                                <td>{{ $data->id }}</td>
                                <td>{{ $data->title }}</td>
                                <td class="hidden-phone">{{ $data->url }}</td>
                                <td class="hidden-phone">{{ $data->remark }}</td>
                                <td class="hidden-phone">{{ $data->sort }}</td>
                                <td class="center hidden-phone">{{ $data->status_text }}</td>
                                <td class="hidden-phone">{{ $data->target_text }}</td>
                                <td class="hidden-phone">
                                    <a class="btn btn-primary btn-xs ajax-update" href="javascript:void(0)" url="{{ route('admin.channel.edit',[$data->id]) }}"><i class="icon-pencil"></i> 修改</a>
                                    <a class="btn btn-danger btn-xs ajax-confirm destroy" href="{{ route('admin.channel.destroy',[$data->id]) }}"><i class="icon-trash "></i> 删除</a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </section>
        </div>
    </div>
    <!-- page end-->
@stop