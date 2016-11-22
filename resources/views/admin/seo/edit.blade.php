<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <div class="panel-body">
                <div class=" form">
                    {!! Form::open(['url' => route('admin.seo.update'),'class'=>'cmxform form-horizontal tasi-form form-datas']) !!}
                    @if(isset($info))
                        <input  type="hidden" name="id" value="{{ $info->id }}"/>
                    @endif
                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-2">名称</label>
                        <div class="col-lg-10">
                            <input class=" form-control" placeholder="用于说明SEO" name="name" type="text" value="{{ $info->name ?? '' }}" />
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="cemail" class="control-label col-lg-2">标识</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="用于调用该SEO的唯一标识"  type="text" name="key" value="{{ $info->key ?? '' }}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">Title</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="网页Title" type="text" name="title" value="{{ $info->title ?? '' }}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">Keywords</label>
                        <div class="col-lg-10">
                            <input class="form-control " placeholder="网页Keywords" type="text" name="keywords" value="{{ $info->keywords ?? '' }}"/>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="curl" class="control-label col-lg-2">Description</label>
                        <div class="col-lg-10">
                            <textarea class="form-control " rows="6" placeholder="网页Description" type="text" name="description">{{ $info->description ?? '' }}</textarea>
                        </div>
                    </div>
                    {!!Form::close()!!}
                </div>
            </div>
        </section>
    </div>
</div>