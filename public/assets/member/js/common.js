$(function(){
    /**
     * 前台公用JS
     */
    //自定义弹出层样式
    layer.config({
        extend:'../../static/layer/skin/member/style.css'
    });

    //ajax post请求
    $('body').on('click','.ajax-post',function(){
        var form,that,target,query;
        form = $('.data-form');
        target = form.get(0).action;
        that = this;
        query = form.serialize();
        $(that).addClass('disabled').attr('autocomplete','off').prop('disabled',true);
        $.post(target,query).success(function(data){
            if (data.status==1){
                $(that).removeClass('disabled').prop('disabled',false);
                layer.open({
                    type    : 1,
                    skin    : 'layer-ext-member',
                    closeBtn: 1,
                    title   : '消息提醒',
                    area    : ['600px'],
                    btn     : ['确定', '取消'],
                    content : data.info,
                    time    : 3000,
                    yes     : function (index) {
                        window.location = data.url;
                    },
                    end     : function (index) {
                        window.location = data.url;
                    }
                });
            }else{
                $(that).removeClass('disabled').prop('disabled',false);
                alertTips(data.info,data.id);
            }
        });
        return false;
    });

    //删除确认
    $('body').on('click','.ajax-confirm',function(){
        layer.closeAll();
        var target = $(this).attr('href');
        if($(this).hasClass('destroy')){
            confirmDialog('确认要删除该信息吗?',target);
        }
        if($(this).hasClass('forbid')){
            confirmDialog('确认要禁用该信息吗?',target);
        }
        if($(this).hasClass('resume')){
            confirmDialog('确认要启用该信息吗?',target);
        }

        return false;
    });




    /**
     * 确认提示弹出层(上下架信息)
     * @author xingyonghe
     * @param msg 提示语
     * @param url 交互跳转地址
     */
    window.confirmDialog = function(msg,url){
        layer.open({
            type    : 1,
            skin    : 'layer-ext-admin',
            closeBtn: 1,
            title   : '消息提醒',
            area    : ['450px'],
            btn     : ['确定', '取消'],
            shade   : false,
            content : msg,
            time    : 20000,
            yes     : function(){
                window.location = url;
            }
        });
    }

    /**
     * tips层提示错误
     * @author xingyonghe
     * @date 2016-11-23
     * @param msg 错误信息
     * @param id tips吸附元素选择器
     * @param scroll 是否执行滚动,默认滚动
     * @param color tips颜色
     */
    window.alertTips = function(msg,obj,scroll,color){
        var Obj;
        color  = color ? color : '#F77B6F';
        scroll = scroll ? scroll : 1;
        if(typeof id=="object"){
            var Obj = $(obj);//提示该对象
        }else{
            var Obj = $('#'+obj);//提示html对象
        }

        if(Obj.get(0).nodeName == 'INPUT' || Obj.get(0).nodeName == 'TEXTAREA'){
            if(Obj.hasClass('datetimepicker')){

            }else{
                Obj.focus();
            }
        }else{
            if(scroll == 1){
                //页面自动滚动到提示错误的对象的偏移量的top处
                $('body,html').animate({scrollTop: Obj.offset().top},500,'swing');
            }
        }
        layer.tips(msg, Obj , {
            tips: [3, color] //配置颜色
        });
    }

    //导航高亮
    window.highlight_subnav = function(url){
        $('.date-wrap').find('a[href="'+url+'"]').parent('span').addClass('active');
    }


})