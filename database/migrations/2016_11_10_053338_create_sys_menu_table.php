<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSysMenuTable extends Migration{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(){
        Schema::create('sys_menu', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT="系统菜单"';
            $table->increments('id');
            $table->string('title',50)->default('')->comment('标题');
            $table->unsignedTinyInteger('pid')->default(0)->comment('上级分类ID');
            $table->unsignedTinyInteger('sort')->default(0)->comment('排序（同级有效）');
            $table->string('url',50)->default('')->comment('链接名称');
            $table->unsignedTinyInteger('hide')->default(0)->comment('是否隐藏:0显示，1隐藏');
            $table->string('icon',50)->default('')->comment('class样式名称');
            $table->string('group',50)->default('')->comment('分组');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
        Schema::dropIfExists('sys_menu');
    }
}
