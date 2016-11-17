<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(){
        Schema::create('user', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT="用户基本信息"';
            $table->increments('id');
            $table->string('username',100)->comment('用户名:手机号');
            $table->string('password')->default('')->comment('密码');
            $table->rememberToken()->comment('记住我');
            $table->string('nickname',100)->default('')->comment('联系人');
            $table->tinyInteger('is_auth')->default(0)->comment('手机号是否认证通过:1已认证，0未认证');
            $table->tinyInteger('type')->default(1)->comment('用户类型:1普通2广告主');
            $table->string('qq',20)->default('')->comment('QQ');
            $table->string('weixin',150)->default('')->comment('微信');
            $table->decimal('freeze',12)->default('0.00')->comment('冻结金额');
            $table->decimal('balance',12)->default('0.00')->comment('余额');
            $table->string('company')->default(0)->comment('公司名称');
            $table->integer('custom_id')->default(0)->comment('客服ID');
            $table->string('custom_name',150)->default('')->comment('客服名称');
            $table->tinyInteger('status')->default(2)->comment('状态:-1删除、0锁定、1正常、2待审核');
            $table->string('email')->default('')->comment('邮箱');
            $table->timestamp('reg_time')->nullable()->comment('注册时间');
            $table->ipAddress('reg_ip')->default('')->comment('注册IP');
            $table->timestamp('login_time')->nullable()->comment('最后登录时间');
            $table->ipAddress('login_ip')->default('')->comment('最后登录IP');
        });
        Schema::create('user_media', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT="自媒体用户扩展信息"';
            $table->integer('user_id')->default(0)->comment('用户ID');
            $table->integer('medias')->default(0)->comment('媒体资源数量');
            $table->decimal('wait_account',10)->default('0.00')->comment('待结算金额');
            $table->decimal('finish_account',10)->default('0.00')->comment('已结算金额');
        });
        Schema::create('user_ads', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT="广告主用户扩展信息"';
            $table->integer('user_id')->default(0)->comment('用户ID');
            $table->decimal('wait_account',12)->default('0.00')->comment('待结算金额');
            $table->decimal('finish_account',12)->default('0.00')->comment('已结算金额');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
        Schema::drop('user');
        Schema::drop('user_media');
        Schema::drop('user_ads');
    }
}
