<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\View;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct()
    {
        $this->renderSheredViews();
    }

    protected function renderSheredViews()
    {
        View::share('categoryList', Cache::remember('categoryList', env('CACHE_TIME', 0), function() {
            return view('blocks.shared.categories', [
                'categories' => Category::withCount(['posts' => function($query){
                    $query->where('is_active', '1');
                }])->orderBy('posts_count', 'desc')
                    ->get()
            ])->render();
        }));

        View::share('mostViewedPosts', Cache::remember('mostViewedPosts', env('CACHE_TIME', 0), function() {
            return view('blocks.shared.popular-posts', [
                'mostViewedPosts' => Post::where('is_active', 1)
                    ->limit(5)
                    ->orderBy('views', 'desc')
                    ->get()
            ])->render();
        }));

        View::share('tagList', Cache::remember('tagList', env('CACHE_TIME', 0), function() {
            return view('blocks.shared.tags', [
                'tags' => Tag::withCount(['posts' => function($query){
                    $query->where('is_active', '1');
                }])->orderBy('posts_count', 'desc')
                    ->limit(12)
                    ->get()
            ])->render();
        }));

        View::share('postsForCarusel', Cache::remember('postsForCarusel', env('CACHE_TIME', 0), function() {
            return view('blocks.shared.head-carusel', [
                'postsForCarusel' => Post::where('is_active', 1)
                    ->with('category')
                    ->inRandomOrder()
                    ->limit(5)
                    ->get()
            ])->render();
        }));

        View::share('categoriesForHeader', Cache::remember('categoriesForHeader', env('CACHE_TIME', 0), function() {
            return view('blocks.shared.categories-header', [
                'categories' => Category::all()
            ])->render();
        }));
    }
}
