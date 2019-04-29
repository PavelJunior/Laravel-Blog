<?php

use Illuminate\Database\Seeder;

class Post_tagTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i = 1; $i <= 100; $i++) {
            \App\Models\Post_tag::create([
                'post_id' => $i%29+1,
                'tag_id' => rand(1,10)

            ]);
        }

    }
}
