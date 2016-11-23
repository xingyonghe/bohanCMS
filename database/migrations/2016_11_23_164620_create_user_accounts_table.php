<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserAccountsTable extends Migration{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(){
        Schema::create('user_account', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT="用户账户信息记录"';
            $table->increments('id');
            $table->integer('userid')->default(0)->comment('用户ID');
            $table->string('order_id',20)->default('')->comment('流水号');
            $table->decimal('money',12)->default('0.00')->comment('金额');
            $table->tinyInteger('type')->default(1)->comment('状态:1收入、2支出');
            $table->ipAddress('ip')->default('')->comment('IP地址');
            $table->tinyInteger('status')->default(0)->comment('状态:0初始值、1成功');
            $table->timestamp('crteated_at')->nullable()->comment('记录时间');
            $table->string('mark')->default('')->comment('备注');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
        Schema::dropIfExists('user_account');
    }
}
