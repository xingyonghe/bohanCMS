<?php

use Illuminate\Database\Seeder;

class DatabaseAuthGroup extends Seeder{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(){
        DB::table('sys_auth_group')->insert([
            'id'          => 1,
            'title'       => '超级管理员',
            'description' => '拥有网站所有权限',
            'status'      => 1,
            'rules'       => ''
        ]);
    }
}
