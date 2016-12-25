<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <div class="panel-body">
                <div class=" form">
                    {!! Form::open(['url' => route('admin.adform.update'),'class'=>'cmxform form-horizontal tasi-form form-datas']) !!}
                    <input  type="hidden" name="id" value="{{ $info->id ?? ''}}"/>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">形式类型</label>
                        <div class="col-lg-10 radios has-js">
                            {!!Form::adminRadios('category',[1=>'直播',2=>'短视频'],$info->category ?? 1)!!}
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-2">形式名称</label>
                        <div class="col-lg-10">
                            <input class=" form-control" placeholder="请填写广告形式名称" name="name" type="text" value="{{ $info->name ?? '' }}" />
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="cemail" class="control-label col-lg-2">排序</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="广告形式显示的顺序"  type="text" name="sort" value="{{ $info->sort ?? 0 }}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">形式说明</label>
                        <div class="col-lg-10">
                            <textarea  class="form-control " rows="6" name="explain" />{{ $info['explain'] ?? '' }}</textarea>
                        </div>
                    </div>
                    {!!Form::close()!!}
                </div>
            </div>
        </section>
    </div>
</div>