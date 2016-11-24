<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserAdsTasksTable extends Migration{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(){
        Schema::create('user_ads_task', function (Blueprint $table) {
            $table->engine = 'InnoDB COMMENT="广告主任务"';
            $table->increments('id');
            $table->integer('userid')->default(0)->comment('广告主用户ID');
            $table->string('title')->default('')->comment('活动名称');
            $table->decimal('money',12)->default('0.00')->comment('总预算');
            $table->tinyInteger('num')->default(0)->comment('需要自媒体的个数');
            $table->timestamp('start_time')->nullable()->comment('开始执行时间');
            $table->timestamp('end_time')->nullable()->comment('结束执行时间');
            $table->timestamp('dead_time')->nullable()->comment('需求截至时间');
            $table->string('name')->default('')->comment('联系人');
            $table->string('mobile')->default('')->comment('联系电话');
            $table->string('company')->default('')->comment('公司名称');
            $table->string('email')->default('')->comment('邮箱');
            $table->string('shape')->default('')->comment('广告形式');
            $table->string('demand',2000)->default('')->comment('广告需求');
            $table->tinyInteger('status')->default(0)->comment('状态:-1删除、1正常、2等待审核、3审核未通过、4任务过期');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down(){
        Schema::dropIfExists('user_ads_task');
    }
}
