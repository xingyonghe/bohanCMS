@extends('home.layouts.base')
@section('style')

@endsection
@section('script')
    <script type="text/javascript">

        $(function() {

        });



    </script>
@endsection
@section('body')
    <!--container start-->
    <div class="container">
        <div class="row">
            <div class="blog-item">
                <div id="sample_1_wrapper" class="dataTables_wrapper form-inline" role="grid">
                    <table class="table  border-top" id="sample_1">
                        <thead>
                        <tr>
                            <th class="hidden-phone">名称</th>
                            <th class="hidden-phone">联系人</th>
                            <th class="hidden-phone">联系电话</th>
                            <th class="hidden-phone">预算金额</th>
                            <th class="hidden-phone">执行时间</th>
                            <th class="hidden-phone">截至时间</th>
                            <th class="hidden-phone">状态</th>
                            <th class="hidden-phone">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($lists as $data)
                            <tr class="odd gradeX">
                                <td>{{ $data->title }}</td>
                                <td class="hidden-phone">{{ $data->name }}</td>
                                <td class="hidden-phone">{{ $data->mobile }}</td>
                                <td class="hidden-phone">{{ $data->money }}</td>
                                <td>{{ $data->start_time->format('Y-m-d H:i') }}--{{ $data->end_time->format('Y-m-d H:i') }}</td>
                                <td>{{ $data->dead_time->format('Y-m-d H:i') }}</td>
                                <td>{{ $data->status_text }}</td>
                                <td class="hidden-phone">
                                    <a class="btn btn-danger btn-xs" href="{{ route('home.task.show',[$data->id]) }}">查看详情</a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="text-center">
                {!! $lists->render() !!}
            </div>
            <!--blog end-->
        </div>

    </div>
    <!--container end-->
@endsection
