<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'phone' => '79999999999',
            'password' => bcrypt('12345678'),
            'role_id' => 1
        ]);

        for($i = 1; $i <= 3; $i++) {
            \App\Models\User::create([
                'name' => 'user' . $i,
                'email' => 'user' . $i . '@gmail.com',
                'phone' => '7999999999' . $i,
                'password' => bcrypt('12345678'),
                'role_id' => 3
            ]);
        }
    }
}
