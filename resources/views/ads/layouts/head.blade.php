<div class="header_top">
    <div class="fl">
        <a href="{{ route('home.index.index') }}">
            <img src="{{ asset('assets/member/images/logo.png') }}" width="151"; height="55"/>
        </a>
    </div>
    <div class="kefuqq fr"><p>专属客服QQ<a href="{{ get_custom_qq(auth()->user()->custom_id) }}"><img src="{{ asset('assets/member/images/qq.png') }}"/></a></p></div>
</div>
<div class="nav_bg">
    <div class="nav">
        <ul>
            @foreach($topnav as $key=>$nav)
                <li @if(isset($navkey) && $navkey == $key) class="cur" @endif>
                    <a href="{{ route($nav['url']) }}">
                        {{ $nav['name'] }}
                    </a>
                </li>
            @endforeach
        </ul>
    </div>
</div>
<div class="qingchu"></div>