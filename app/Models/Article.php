<?php

namespace App\Models;

class Article extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | Article Model
    | @author xingyonghe
    | @date 2016-11-18
    |--------------------------------------------------------------------------
    |
    | 内容模型
    |
    */
    //删除状态
    const STATUS_DELETE = -1;
    //正常状态
    const STATUS_NORMAL = 1;
    protected $table = 'article';
    protected $fillable = [
        'title','catid', 'descrition', 'author', 'quote', 'content'
    ];
    protected $guarded = [
        'id', 'view', 'status', 'created_at', 'updated_at'
    ];
    


}
