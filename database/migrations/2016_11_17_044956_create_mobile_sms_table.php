<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMobileSmsTable extends Migration{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(){
        Schema::create('mobile_sms', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT="短信"';
            $table->increments('id');
            $table->string('mobile',20)->default('')->comment('手机');
            $table->string('code',20)->default('')->comment('手机验证码');
            $table->tinyInteger('status')->default(0)->comment('状态');
            $table->tinyInteger('category')->default(0)->comment('分类');
            $table->string('content')->default('')->comment('短信内容');
            $table->timestamp('created_at')->nullable()->comment('发送时间');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
        Schema::dropIfExists('mobile_sms');
    }
}
