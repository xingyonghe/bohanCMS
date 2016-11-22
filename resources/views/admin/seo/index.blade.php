@extends('admin.layouts.base')
@section('style')
@stop
@section('script')
    <script type="text/javascript">
        $(function () {
            highlight_subnav("{{ route('admin.seo.index') }}");
        })
    </script>
@stop
@section('body')
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    SEO管理
                </header>
                <div class="panel-body">
                    <div class="clearfix">
                        <div class="btn-group">
                            <a href="javascript:void(0)" url="{{ route('admin.seo.create') }}" class="btn btn-primary ajax-update">
                                新增 <i class="fa icon-plus"></i>
                            </a>
                        </div>
                        <div class="btn-group pull-right">
                            {!! Form::open(['url' => route('admin.seo.index'),'method'=>'get']) !!}
                            <div class="dataTables_filter" id="sample_1_filter">
                                <button class="btn btn-primary" type="submit"><i class="fa  icon-zoom-in"></i>搜索</button>
                            </div>
                            <div class="dataTables_filter" id="sample_1_filter">
                                名称：<input type="text" name="name" aria-controls="sample_1" value="{{ $params['name'] }}" class="form-controls">
                                标识：<input type="text" name="key" aria-controls="sample_1" value="{{ $params['key'] }}" class="form-controls">
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
                            <th class="hidden-phone">标识</th>
                            <th class="hidden-phone">Title</th>
                            <th class="hidden-phone">Keywords</th>
                            <th class="hidden-phone">Description</th>
                            <th class="hidden-phone">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($lists as $data)
                            <tr class="odd gradeX">
                                <td><input type="checkbox" class="checkboxes" value="{{ $data->id }}"/></td>
                                <td>{{ $data->id }}</td>
                                <td>{{ $data->name }}</td>
                                <td class="hidden-phone">{{ $data->key }}</td>
                                <td class="hidden-phone">{{ $data->title }}</td>
                                <td class="hidden-phone">{{ $data->keywords }}</td>
                                <td class="center hidden-phone">{{ $data->description }}</td>
                                <td class="hidden-phone">
                                    <a class="btn btn-primary btn-xs ajax-update" href="javascript:void(0)" url="{{ route('admin.seo.edit',[$data->id]) }}"><i class="icon-pencil"></i> 修改</a>
                                    <a class="btn btn-danger btn-xs ajax-confirm destroy" href="javascript:void(0)" url="{{ route('admin.seo.destroy',[$data->id]) }}"><i class="icon-trash "></i> 删除</a>
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