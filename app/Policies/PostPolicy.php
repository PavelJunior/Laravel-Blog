<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Post;
use Illuminate\Auth\Access\HandlesAuthorization;

class PostPolicy
{
    use HandlesAuthorization;

    public function create(User $user)
    {
        return $user->role->can_create_post;
    }

    public function edit_own(User $user, Post $post)
    {
        return ($user->role->can_edit_own_post) && ($user->id == $post->user_id);
    }

    public function delete_own(User $user, Post $post)
    {
        return ($user->role->can_delete_own_post) && ($user->id == $post->user_id) || $user->role->can_delete_other_posts;
    }
}
