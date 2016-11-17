<?php

use Illuminate\Database\Seeder;

class DatabaseAdmin extends Seeder{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(){
        DB::table('sys_admin')->insert([
            'id'       => 1,
            'username' => 'admin',
            'password' => bcrypt('admin'),
            'nickname' => '超管',
            'role_id'  => 1,
            'reg_time' => \Carbon\Carbon::now(),
            'login_time' => \Carbon\Carbon::now(),
       ]);
    }
}
