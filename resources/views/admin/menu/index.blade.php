@extends('admin.layouts.base')
@section('style')
@stop
@section('script')
    <script type="text/javascript">
        $(function () {
            highlight_subnav("{{ route('admin.menu.index') }}");
        })
    </script>
@stop
@section('body')
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    菜单管理
                </header>
                <div class="panel-body">
                    <div class="clearfix">
                        <div class="btn-group">
                            <a href="javascript:void(0)" url="{{ route('admin.menu.create',[$pid]) }}" class="btn btn-primary ajax-update">
                                新增 <i class="fa icon-plus"></i>
                            </a>
                        </div>
                        <div class="btn-group">
                            <a href="javascript:void(0)" url="{{ route('admin.menu.batch',[$pid]) }}" class="btn btn-info ajax-update">
                                批量 <i class="fa icon-location-arrow"></i>
                            </a>
                        </div>
                        <div class="btn-group">
                            <a href="javascript:void(0)" url="{{ route('admin.menu.sort',[$pid]) }}" class="btn btn-primary ajax-sort">
                                排序 <i class="fa icon-resize-vertical"></i>
                            </a>
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
                            <th class="hidden-phone">上级菜单</th>
                            <th class="hidden-phone">分组</th>
                            <th class="hidden-phone">URL</th>
                            <th class="hidden-phone">排序</th>
                            <th class="hidden-phone">隐藏</th>
                            <th class="hidden-phone">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($lists as $item)
                            <tr class="odd gradeX">
                                <td><input type="checkbox" class="checkboxes" value="{{ $item['id'] }}"/></td>
                                <td>{{ $item['id'] }}</td>
                                <td><a href="{{ url('admin/menu/index?pid='. $item['id']) }}">{{ $item['title'] }}</a></td>
                                <td class="hidden-phone">{{ $item['up_title'] }}</td>
                                <td class="hidden-phone">{{ $item['group'] }}</td>
                                <td class="center hidden-phone">{{ $item['url'] }}</td>
                                <td class="hidden-phone">{{ $item['sort'] }}</td>
                                <td class="hidden-phone">{{ $item['hide_text'] }}</td>
                                <td class="hidden-phone">
                                    <a class="btn btn-primary btn-xs ajax-update" href="javascript:void(0)" url="{{ url('admin/menu/edit',[$item['id']]) }}"><i class="icon-pencil"></i> 修改</a>
                                    <a class="btn btn-danger btn-xs ajax-confirm destroy" href="javascript:void(0)" url="{{ url('admin/menu/destroy',[$item['id']]) }}"><i class="icon-trash "></i> 删除</a>
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
