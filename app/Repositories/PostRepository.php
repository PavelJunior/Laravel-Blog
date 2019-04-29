<?php

namespace App\Repositories;

use App\Models\Post;

class PostRepository
{
    public function getMostViewed()
    {
        return Post::where('is_active', 1)
            ->limit(5)
            ->orderBy('views', 'desc')
            ->get();
    }

    public function getToMain($page)
    {
        return Post::where('is_active', 1)
            ->skip(10*($page-1))
            ->limit(10)
            ->orderBy('created_at', 'desc')
            ->get();
    }
}