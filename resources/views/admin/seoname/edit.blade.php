<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <div class="panel-body">
                <div class=" form">
                    {!! Form::open(['url' => route('admin.seoname.update'),'class'=>'cmxform form-horizontal tasi-form form-datas']) !!}
                    @if(isset($info))
                        <input  type="hidden" name="id" value="{{ $info->id }}"/>
                    @endif
                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-2">名称</label>
                        <div class="col-lg-10">
                            <input class=" form-control" placeholder="SEO变量名称" name="name" type="text" value="{{ $info->name ?? '' }}" />
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="cemail" class="control-label col-lg-2">变量</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="SEO变量名称唯一标识"  type="text" name="variable" value="{{ $info->variable ?? '' }}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">应用范围</label>
                        <div class="col-lg-10">
                            <textarea class="form-control " rows="6" placeholder="SEO变量应用范围" type="text" name="confines">{{ $info->confines ?? '' }}</textarea>
                        </div>
                    </div>
                    {!!Form::close()!!}
                </div>
            </div>
        </section>
    </div>
</div>