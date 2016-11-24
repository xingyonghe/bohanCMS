@extends('member.layouts.base')
@section('style')
@endsection
@section('script')
    <script type="text/javascript">
        $(function(){
            highlight_subnav("{{ route('member.task.index') }}");
        })
    </script>
@endsection
@section('body')
    <!--container start-->
    <div class="container">
        <div class="row">
            @include('member.layouts.nav')
            <div class="col-lg-10 col-sm-10">
                <h5 class="member-title">我的派单</h5>
                <div class="contact-form">
                    @if($lists->total())
                        <table class="table table-striped sortable">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>名称</th>
                                <th>联系人</th>
                                <th>联系电话</th>
                                <th>预算金额</th>
                                <th>执行时间</th>
                                <th>截至时间</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($lists as $data)
                                <tr>
                                    <td>{{ $data->id }}</td>
                                    <td>{{ $data->title }}</td>
                                    <td>{{ $data->name }}</td>
                                    <td>{{ $data->mobile }}</td>
                                    <td>{{ $data->money }}</td>
                                    <td>{{ $data->start_time->format('Y-m-d H:i') }}--{{ $data->end_time->format('Y-m-d H:i') }}</td>
                                    <td>{{ $data->dead_time->format('Y-m-d H:i') }}</td>
                                    <td>{{ $data->status_text }}</td>
                                    <td>
                                        @if($data->status == 1 || $data->status == 3)
                                            <a href="{{ route('member.task.edit',[$data->id]) }}">编辑</a>
                                            <a class="ajax-confirm destroy" href="javascript:void(0)" url="{{ route('member.task.destroy',[$data->id]) }}">删除</a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <div class="text-center">
                            {!! $lists->render() !!}
                        </div>
                    @else
                        <table class="table table-striped sortable">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>名称</th>
                                <th>联系人</th>
                                <th>联系电话</th>
                                <th>预算金额</th>
                                <th>执行时间</th>
                                <th>截至时间</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td colspan="9">抱歉，您还没有任何活动信息</td>
                            </tr>
                            </tbody>
                        </table>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <!--container end-->
@endsection
