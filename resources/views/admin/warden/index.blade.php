@extends('admin.layouts.base')
@section('style')
@stop
@section('script')
    <script type="text/javascript">
        $(function () {
            highlight_subnav("{{ route('admin.warden.index') }}");
        })
    </script>
@stop
@section('body')
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    管理员管理
                </header>
                <div class="panel-body">
                    <div class="clearfix">
                        <div class="btn-group">
                            <a href="javascript:void(0)" url="{{ route('admin.warden.create') }}" class="btn btn-primary ajax-update">
                                新增 <i class="fa icon-plus"></i>
                            </a>
                        </div>
                        <div class="btn-group pull-right">
                            {!! Form::open(['url' => route('admin.warden.index'),'method'=>'get']) !!}
                            <div class="dataTables_filter">
                                <button class="btn btn-primary" type="submit"><i class="fa  icon-zoom-in"></i>搜索</button>
                            </div>
                            <div class="dataTables_filter">
                                昵称：<input type="text" name="nickname"  value="{{ $params['nickname'] }}" class="form-controls">
                            </div>
                            <div class="dataTables_filter">
                                用户名：<input type="text" name="username"  value="{{ $params['username'] }}" class="form-controls">
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
                            <th class="hidden-phone">昵称</th>
                            <th class="hidden-phone">客服QQ</th>
                            <th class="hidden-phone">分类</th>
                            <th class="hidden-phone">用户组</th>
                            <th class="hidden-phone">注册时间</th>
                            <th class="hidden-phone">最近登录时间</th>
                            <th class="hidden-phone">最近登陆IP</th>
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
                                <td>{{ $data->type_text }}</td>
                                <td>{{ $data->role_id_text }}</td>
                                <td class="hidden-phone">{{ $data->reg_time->format('Y-m-d H:i') }}</td>
                                <td class="hidden-phone">{{ $data->login_time->format('Y-m-d H:i') }}</td>
                                <td class="hidden-phone">{{ $data->login_ip }} </td>
                                <td class="hidden-phone">{!!  $data->status_text !!} </td>
                                <td class="hidden-phone">
                                    <!--正常状态-->
                                    @if($data->status == 1)
                                        <a class="btn btn-primary btn-xs ajax-update" href="javascript:void(0)" url="{{ route('admin.warden.edit',[$data->id]) }}"><i class="icon-pencil"></i> 修改</a>
                                        <a class="btn btn-warning btn-xs ajax-confirm forbid" href="javascript:void(0)" url="{{ route('admin.warden.forbid',[$data->id]) }}"><i class="icon-info-sign"></i> 禁用</a>
                                        <a class="btn btn-danger btn-xs ajax-confirm destroy" href="javascript:void(0)" url="{{ route('admin.warden.destroy',[$data->id]) }}"><i class="icon-trash "></i> 删除</a>
                                    @endif
                                    <!--禁用状态-->
                                    @if($data->status == 0)
                                        <a class="btn btn-primary btn-xs ajax-update" href="javascript:void(0)" url="{{ route('admin.warden.edit',[$data->id]) }}"><i class="icon-pencil"></i> 修改</a>
                                        <a class="btn btn-success btn-xs ajax-confirm resume" href="javascript:void(0)" url="{{ route('admin.warden.resume',[$data->id]) }}"><i class=" icon-ok-circle"></i> 启用</a>
                                        <a class="btn btn-danger btn-xs ajax-confirm destroy" href="javascript:void(0)" url="{{ route('admin.warden.destroy',[$data->id]) }}"><i class="icon-trash "></i> 删除</a>
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
                            {!! $lists->appends($params)->render() !!}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- page end-->
@stop
