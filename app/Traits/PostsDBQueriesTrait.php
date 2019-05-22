<?php namespace App\Traits;

use Illuminate\Support\Facades\Auth;

trait PostsDBQueriesTrait
{
    private function CountRelations($posts)
    {
        $outputPosts = $posts->withCount(['comments',
                'likes' => function($query) {
                    $query->where('like', '1');
                },
                'likes AS dislikes_count' => function($query) {
                    $query->where('like', '-1');
                },
                'likes AS liked'  => function($query) {
                    $query->where('like', '1')->where('user_id', Auth::id());
                },
                'likes AS disliked'  => function($query) {
                    $query->where('like', '-1')->where('user_id', Auth::id());
                }
            ]);

        return $outputPosts;
    }

    public function ManyPosts($posts)
    {
        $outputPosts = $this->CountRelations($posts)
            ->with('category', 'user')
            ->orderBy('created_at', 'DESC');

        return $outputPosts;
    }

    public function OnePost($post)
    {
        $outputPost = $this->CountRelations($post)
            ->with('category', 'user', 'tags');

        return $outputPost;
    }
}