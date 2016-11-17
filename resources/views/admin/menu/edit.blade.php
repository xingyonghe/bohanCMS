<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <div class="panel-body">
                <div class=" form">
                    {!! Form::open(['url' => route('admin.menu.update'),'class'=>'cmxform form-horizontal tasi-form form-datas']) !!}
                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-2">标题</label>
                        <div class="col-lg-10">
                            <input class=" form-control" placeholder="用于后台显示的配置标题" name="title" type="text" value="{{$info->title ?? ''}}" />
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="cemail" class="control-label col-lg-2">排序</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="用户分组显示的顺序"  type="text" name="sort" value="{{$info->sort ?? 0}}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">链接</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="后台菜单别名" type="text" name="url" value="{{$info->url ?? ''}}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">上级菜单</label>
                        <div class="col-lg-10">
                            <select class="form-control m-bot15" name="pid">
                                @foreach($menus as $menu)
                                    <option value="{{ $menu['id'] }}" @if($pid==$menu['id']) selected @endif>{{$menu['title_show']}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">是否隐藏</label>
                        <div class="col-lg-10 radios has-js">
                            {!!Form::adminRadios('hide',[0=>'显示',1=>'隐藏'],$info->hide ?? 0)!!}
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">样式图标</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="菜单修饰图标" type="text" name="icon" value="{{ $info->icon ?? '' }}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">分组</label>
                        <div class="col-lg-10 radios has-js">
                            <input class="form-control " placeholder="用于左侧分组的二级菜单" type="text" name="group" value="{{$info->group ?? ''}}"/>
                        </div>
                    </div>
                    <input  type="hidden" name="id" value="{{$info->id ?? 0}}"/>
                    {!!Form::close()!!}
                </div>
            </div>
        </section>
    </div>
</div>