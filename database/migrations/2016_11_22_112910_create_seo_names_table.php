<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSeoNamesTable extends Migration{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(){
        Schema::create('sys_seo_name', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT="SEO变量"';
            $table->increments('id');
            $table->string('name', 100)->comment('名称');
            $table->string('variable', 100)->comment('变量');
            $table->string('confines', 255)->comment('应用范围');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
        Schema::dropIfExists('sys_seo_name');
    }
}
