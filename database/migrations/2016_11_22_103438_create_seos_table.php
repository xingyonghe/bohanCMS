<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSeosTable extends Migration{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(){
        Schema::create('sys_seo', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT"SEO设置"';
            $table->increments('id');
            $table->string('name',100)->default('')->comment('名称');
            $table->string('key',50)->default('')->comment('标识');
            $table->string('title',200)->default('')->comment('网站title');
            $table->string('keywords',500)->default('')->comment('网站keywords');
            $table->string('description',1000)->default('')->comment('网站description');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
        Schema::dropIfExists('sys_seo');
    }
}
