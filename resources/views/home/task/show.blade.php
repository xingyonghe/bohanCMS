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
            <div class="col-lg-10 col-sm-10">
                <h1>{{ $info['title'] }}</h1>
                <blockquote>
                    联系人： {{ $info['name'] }}
                </blockquote>
                <blockquote>
                    联系方式： {{ $info['mobile'] }}
                </blockquote>
                <blockquote>
                    预算金额： {{ $info['money'] }}
                </blockquote>
                <blockquote>
                    执行时间： {{ $info['start_time']->format('Y-m-d H:i') }} -- {{ $info['end_time']->format('Y-m-d H:i') }}
                </blockquote>
                <blockquote>
                    截至时间： {{ $info['dead_time']->format('Y-m-d H:i') }}
                </blockquote>
                <blockquote>
                    主办公司： {{ $info['company'] }}
                </blockquote>
                <blockquote>
                    联系邮箱： {{ $info['email'] }}
                </blockquote>
                <blockquote>
                    广告形式： {{ $info['shape'] }}
                </blockquote>
                <blockquote>
                    广告要求： {{ $info['demand'] }}
                </blockquote>
                @if($info['status'] == 1)
                    <button type="submit" class="btn btn-danger">我需要</button>
                @else
                    <blockquote>
                        该需求已过期
                    </blockquote>
                @endif
            </div>
        </div>

    </div>
    <!--container end-->
@endsection
