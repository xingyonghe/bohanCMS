<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <div class="panel-body">
                <div class=" form">
                    {!! Form::open(['url' => route('admin.channel.update'),'class'=>'cmxform form-horizontal tasi-form form-datas']) !!}
                    <input  type="hidden" name="id" value="{{ $info->id ?? 0}}"/>
                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-2">标题</label>
                        <div class="col-lg-10">
                            <input class=" form-control" placeholder="用于后台显示的配置标题" name="title" type="text" value="{{ $info->title ?? '' }}" />
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="cemail" class="control-label col-lg-2">排序</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="用户分组显示的顺序"  type="text" name="sort" value="{{ $info->sort ?? 0 }}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">链接</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="url函数解析的URL或者外链" type="text" name="url" value="{{ $info->url ?? '' }}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">状态</label>
                        <div class="col-lg-10 radios has-js">
                            {!!Form::adminRadios('hide',[0=>'显示',1=>'隐藏'],$info->hide ?? 0)!!}
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">新窗口打开</label>
                        <div class="col-lg-10 radios has-js">
                            {!!Form::adminRadios('target',[0=>'否',1=>'是'],$info->target ?? 0)!!}
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">备注说明</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="额外的导航备注说明" type="text" name="remark" value="{{ $info->remark ?? '' }}" />
                        </div>
                    </div>
                    {!!Form::close()!!}
                </div>
            </div>
        </section>
    </div>
</div>