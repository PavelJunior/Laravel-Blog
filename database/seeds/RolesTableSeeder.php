<?php

use Illuminate\Database\Seeder;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Role::create([
            'name' => 'admin',
            'can_create_post' => 1,
            'can_edit_own_post' => 1,
            'can_delete_own_post' => 1,
            'can_delete_other_posts' => 1,
            'can_write_comment' => 1,
            'can_delete_own_comments' => 1,
            'can_delete_other_comments' => 1,
            'can_delete_users' => 1,
            'can_delete_moderators' => 1,
        ]);

        \App\Models\Role::create([
            'name' => 'moderator',
            'can_create_post' => 1,
            'can_edit_own_post' => 1,
            'can_delete_own_post' => 1,
            'can_delete_other_posts' => 1,
            'can_write_comment' => 1,
            'can_delete_own_comments' => 1,
            'can_delete_other_comments' => 1,
            'can_delete_users' => 1,
            'can_delete_moderators' => 0,
        ]);

        \App\Models\Role::create([
            'name' => 'user',
            'can_create_post' => 1,
            'can_edit_own_post' => 1,
            'can_delete_own_post' => 1,
            'can_delete_other_posts' => 0,
            'can_write_comment' => 1,
            'can_delete_own_comments' => 1,
            'can_delete_other_comments' => 0,
            'can_delete_users' => 0,
            'can_delete_moderators' => 0,
        ]);

        \App\Models\Role::create([
            'name' => 'not_verified_user',
            'can_create_post' => 0,
            'can_edit_own_post' => 0,
            'can_delete_own_post' => 0,
            'can_delete_other_posts' => 0,
            'can_write_comment' => 1,
            'can_delete_own_comments' => 1,
            'can_delete_other_comments' => 0,
            'can_delete_users' => 0,
            'can_delete_moderators' => 0,
        ]);
    }
}
