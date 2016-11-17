<!--sidebar start-->
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
            @if(isset($menus['child']))
            @foreach($menus['child'] as $key=>$menu)
                @php($group = explode(':',$key))
                <li class="sub-menu">
                    <a href="javascript:void(0);" class="">
                        <i class="{{ $group[1] ?? '' }}"></i>
                        <span>{{ $group[0] }}</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">

                        @foreach($menu as $m)
                        <li>
                            <a  href="{{ route($m['url']) }}"><span style="width: 18px"><i class="{{ $m['icon'] }}"></i></span> {{ $m['title'] }}</a>
                        </li>
                        @endforeach
                    </ul>
                </li>
            @endforeach
            @endif
        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
