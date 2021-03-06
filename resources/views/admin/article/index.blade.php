@extends('admin.layouts.base')
@section('style')
@stop
@section('script')
    <script type="text/javascript">
        $(function () {
            highlight_subnav("{{ route('admin.article.index') }}");
        })
    </script>
@stop
@section('body')
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    文章管理
                </header>
                <div class="panel-body">
                    <div class="clearfix">
                        <div class="btn-group">
                            <a href="{{ route('admin.article.create') }}" class="btn btn-primary">
                                新增 <i class="fa icon-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div id="sample_1_wrapper" class="dataTables_wrapper form-inline" role="grid">
                    <div class="row">
                        <div class="col-sm-12">
                            {!! Form::open(['url' => route('admin.article.index'),'method'=>'get']) !!}
                            <div class="dataTables_filter" id="sample_1_filter">
                                <button class="btn btn-primary" type="submit"><i class="fa icon-search"></i>搜索</button>
                            </div>
                            <div class="dataTables_filter" id="sample_1_filter">
                                <label>
                                    文章标题：<input type="text" name="title" aria-controls="sample_1" value="{{ $params['title'] }}" class="form-control">
                                </label>
                            </div>
                            {!!Form::close()!!}
                        </div>
                    </div>
                    <table class="table table-striped border-top" id="sample_1">
                        <thead>
                        <tr>
                            <th style="width:8px;">
                                <input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes"/></th>
                            <th>ID</th>
                            <th class="hidden-phone">分类</th>
                            <th class="hidden-phone">标题</th>
                            <th class="hidden-phone">作者</th>
                            <th class="hidden-phone">来源</th>
                            <th class="hidden-phone">发布时间</th>
                            <th class="hidden-phone">更新时间</th>
                            <th class="hidden-phone">浏览量</th>
                            <th class="hidden-phone">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($lists as $data)
                            <tr class="odd gradeX">
                                <td><input type="checkbox" class="checkboxes" value="{{ $data->id }}"/></td>
                                <td>{{ $data->id }}</td>
                                <td>{{ $data->catid_text }}</td>
                                <td>{{ $data->title }}</td>
                                <td class="hidden-phone">{{ $data->author }}</td>
                                <td class="hidden-phone">{{ $data->quote }}</td>
                                <td class="hidden-phone">{{ $data->created_at->format('Y-m-d H:i') }}</td>
                                <td class="center hidden-phone">{{ $data->updated_at->format('Y-m-d H:i') }}</td>
                                <td class="hidden-phone">{{ $data->view }}</td>
                                <td class="hidden-phone">
                                    <a class="btn btn-primary btn-xs" href="{{ route('admin.article.edit',[$data->id]) }}"><i class="icon-pencil"></i> 修改</a>
                                    <a class="btn btn-danger btn-xs ajax-confirm destroy" href="javascript:void(0)" url="{{ route('admin.article.destroy',[$data->id]) }}"><i class="icon-trash "></i> 删除</a>
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