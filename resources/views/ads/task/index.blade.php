@extends('ads.layouts.base')
@section('style')
@endsection
@section('script')
    <script type="text/javascript">
        $(function(){


        })
    </script>
@endsection
@section('body')
    <div class="juzhong">
        <div class="detail">
            <div class="query fr">
                <a href="{{ route('ads.task.create') }}" class="search">发布推广活动</a>
            </div>
        </div>
        <div class="jilu"><p>共计：{{ $lists->total() }}个活动</p></div>
        <div class="xijie">
            <div class="biaoti">
                <table width="1008" >
                    <tr>
                        <td width="90">活动ID</td>
                        <td width="110">发布日期</td>
                        <td width="110">活动名称</td>
                        <td width="110">投放类型</td>
                        <td width="110">活动要求</td>
                        <td width="110">网红要求</td>
                        <td width="110">预算</td>
                        <td width="100">需求人数</td>
                        <td width="100">投标数量</td>
                        <td width="100">操作</td>
                    </tr>
                </table>
            </div>
            @if($lists->total())
                @foreach($lists as $data)
                    <div class="xiangqing">
                        <table width="1008" >
                            <tr>
                                <td width="90">{{ $data->id }}</td>
                                <td width="110">{{ $data->created_at->format('Y-m-d') }}</td>
                                <td width="110">{{ $data->title }}</td>
                                <td width="110">{{ $data->id }}</td>
                                <td width="110">{{ $data->id }}</td>
                                <td width="110">{{ $data->id }}</td>
                                <td width="110">{{ $data->money }}</td>
                                <td width="110">{{ $data->money }}</td>
                                <td width="110">{{ $data->money }}</td>
                                <td width="100">
                                    @if($data->status == 1 || $data->status == 3)
                                        <a href="{{ route('ads.task.edit',[$data->id]) }}">编辑</a>
                                        <a class="ajax-confirm destroy" href="javascript:void(0)" url="{{ route('ads.task.destroy',[$data->id]) }}">删除</a>
                                    @endif
                                </td>
                            </tr>
                        </table>
                    </div>
                @endforeach
            @else
                <div class="xiangqing">
                    <table width="1008" >
                        <tr>
                            <td colspan="10">抱歉，您还没有任何活动信息</td>
                        </tr>
                    </table>
                </div>
            @endif
        </div>
        <div id="showpage" class="cpage">
            {!! $lists->render() !!}
        </div>
    </div>
@endsection
