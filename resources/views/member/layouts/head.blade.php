<!--header start-->
<header class="header-frontend">
    <nav class="navbar navbar-inverse" style="min-height: 20px;background: #475268;padding-right: 390px;">
        <div class="nav-collapse">
            <ul id="secondary-menu" class="nav pull-right" >
                @if (auth()->guest())
                    <li style="float: right;position: relative;color: #ffffff">
                        <a href="{{ route('home.register.form') }}">注册</a>
                    </li>
                    <li style="float: right;position: relative;color: #ffffff">
                        <a href="{{ route('home.login.form') }}">登录</a>
                    </li>
                @else
                    <li class="dropdown" style="float: right;position: relative;color: #ffffff">
                        <a href="{{ route('home.login.logout') }}">退出</a>
                    </li>
                    <li class="dropdown" style="float: right;position: relative;color: #ffffff">
                        <a href="{{ route('member.index.index') }}">{{ auth()->user()->nickname }}</a>
                    </li>
                @endif
            </ul>
        </div>
    </nav>
    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{ route('home.index.index') }}">卓杭<span>广告</span></a>
            </div>
            <div class="navbar-collapse collapse ">
                <ul class="nav navbar-nav">
                    @foreach($topnav as $key=>$nav)
                        <li @if(isset($navkey) && $navkey == $key) class="active" @endif>
                            <a href="{{ route($nav['url']) }}">
                                {{ $nav['name'] }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</header>
<!--header end-->