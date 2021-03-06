<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSysAdminsTable extends Migration{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(){
        Schema::create('sys_admin', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT="管理员表"';
            $table->increments('id');
            $table->string('username',100)->default('')->unique()->comment('用户名');
            $table->string('password')->default('')->comment('密码');
            $table->string('nickname',100)->default('')->comment('昵称');
            $table->tinyInteger('role_id')->default('0')->comment('用户组ID');
            $table->tinyInteger('status')->default('1')->comment('状态：-1删除，0禁用，1正常');
            $table->rememberToken()->comment('记住我标识');
            $table->timestamp('reg_time')->nullable()->comment('注册时间');
            $table->timestamp('login_time')->nullable()->comment('最后登录时间');
            $table->ipAddress('login_ip')->comment('最后登录ID');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
        Schema::dropIfExists('sys_admin');
    }
}
