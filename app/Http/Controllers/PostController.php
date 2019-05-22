<?php

namespace App\Http\Controllers;


use App\Http\Requests\PostRequest;
use App\Http\Requests\PostEditRequest;
use App\Models\Category;
use App\Models\Post;
use App\Models\Post_tag;
use App\Models\Tag;
use App\Traits\PostsDBQueriesTrait;
use DB;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    use PostsDBQueriesTrait;

    public function Main()
    {
//        dd(Post::all()->where('is_active', '1'));
        $posts = $this->ManyPosts(
            Post::where('is_active', '1')
        )->paginate(6);

        return view('layouts.primary',[
            'page' => 'pages.main',
            'title' => 'Home',
            'withInstagramFooter' => true,
            'headerCarusel' => true,
            'posts' => $posts,
        ]);
    }

    public function listByCategory($category)
    {
        $category = Category::where('name', $category)
            ->firstOrFail();

        $posts = $this->ManyPosts(
            Post::where('category_id', $category->id)
        )->where('is_active', '1')
            ->paginate(6);

        return view('layouts.primary',[
            'page' => 'pages.main',
            'title' => $category->name,
            'withInstagramFooter' => true,
            'ways' => ['Category', $category->name],
            'posts' => $posts,
        ]);
    }

    public function listByTag($tag)
    {
        $tag = Tag::where('name', $tag)
            ->firstOrFail();

        $posts = $this->ManyPosts(
            $tag->posts()
        )->where('is_active', '1')
        ->paginate(6);

        return view('layouts.primary',[
            'page' => 'pages.main',
            'title' => $tag->name,
            'withInstagramFooter' => true,
            'ways' => ['Tag', $tag->name],
            'posts' => $posts,
        ]);
    }

    public function listBySearch(Request $request)
    {
        $search = $request->input('query');

        $posts = $this->ManyPosts(
            Post::where('title', 'LIKE', '%' . $search . '%')
                ->orwhere('preview', 'LIKE', '%' . $search . '%')
                ->orwhere('body', 'LIKE', '%' . $search . '%'),
            true
        )->paginate(6);

        return view('layouts.primary',[
            'page' => 'pages.main',
            'title' => $search,
            'withInstagramFooter' => true,
            'ways' => ['Search', $search],
            'posts' => $posts,
        ]);
    }

    public function myPosts()
    {
        $user = Auth::id();

        $posts = $this->ManyPosts(
            Post::where('user_id', '=', $user)
        )->paginate(6);

        return view('layouts.primary',[
            'page' => 'pages.main',
            'title' => 'My Posts',
            'withInstagramFooter' => true,
            'ways' => ['My Posts'],
            'posts' => $posts,
            'postStatus' => true,
        ]);
    }

    public function OneGet($id)
    {
        $post = $this->OnePost(
            Post::where('is_active', '!=', '-1')
        )->findOrFail($id);

        if($post->is_active != 1){
            $user = Auth::user();
            if($user){
                if($user->cant('edit_own', $post)) {
                    abort(403);
                }
            } else {
                abort(403);
            }
        }

//        dd(Post::all());

        $comments = $post->comments()
            ->where('parent_id', NULL)
            ->with('replies')
            ->orderBy('created_at', 'DESC')
            ->paginate(10);

        $samePosts = Post::where('category_id', $post->category->id)
            ->where('is_active', '1')
            ->where('id', '!=', $post->id)
            ->inRandomOrder()
            ->limit(2)
            ->with('user', 'category')
            ->withCount('comments')
            ->get();

//        dd($samePosts);

        $viewed = Session::get('viewed_post', []);
        if (!in_array($post->id, $viewed)) {
            $post->increment('views');
            Session::push('viewed_post', $post->id);
        }

        return view('layouts.primary',[
            'page' => 'pages.post',
            'title' => $post->title,
            'withInstagramFooter' => true,
            'ways' => ['Post', $post->title],
            'post' => $post,
            'samePosts' => $samePosts,
            'comments' => $comments,
        ]);
    }

    public function Delete($id)
    {
        $post = Post::findOrFail($id);

        $user = Auth::user();

        if($user->cant('delete_own', $post)) {
            abort(403);
        }

        $post->delete();

        return redirect()->route('main.index')
            ->with('success','Post deleted successfully!');
    }


    public function AddGet()
    {
        $user = Auth::user();

        if($user->cant('create', Post::class)) {
            abort(403);
        }

        return view('layouts.secondary', [
            'page' => 'pages.add-post',
            'title' => 'Add post',
            'withInstagramFooter' => true,
            'ways' => ['Add Post'],
            'categories' => Category::all(),
        ]);
    }

    public function AddPost(PostRequest $request)
    {
        if($request->hasFile('cover_image')) {
            $filenameWithExt = $request->file('cover_image')->getClientOriginalName();
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('cover_image')->getClientOriginalExtension();
            $filenameToStore = $filename . '_' . time() . '.' . $extension;
            Image::make($request->file('cover_image'))
                ->fit(600,600)
                ->save('uploads/cover_images/' . $filenameToStore);
        }

        $user = Auth::user();

        if($user->cant('create', Post::class)) {
            abort(403);
        }

        $post = new Post();

        $post->title = $request->input('title');
        $post->cover_image = $filenameToStore;
        $post->preview = $request->input('preview');
        $post->body = $request->input('body');
        $post->category_id = $request->input('category');
        $post->user_id = $user->id;
        $post->save();

        $tags = explode(',', $request->input('tags'));
        foreach ($tags as $tag) {
            $tag = trim($tag);
            if(Tag::where('name', $tag)->get()->count() == 0) {
                $newTag = new Tag();
                $newTag->name = $tag;
                $newTag->save();
            }
            $post->tags()->attach(Tag::where('name', $tag)->first()->id);
        }

        return redirect()->route('main.index')
            ->with('success','Post created successfully! Your post will be checked and uploaded in 24 hours.');
    }

    public function EditGet($id)
    {
        $post = Post::findOrFail($id);
        $user = Auth::user();

        if(!$user || $user->cant('edit_own', $post)) {
            abort(403);
        }

        $tagList = "";
        $tags = $post->find($id)->tags()->get();
        foreach ($tags as $tag) {
            $tagList = $tagList . $tag->name . ', ';
        }
        $tagList = substr($tagList, 0, -2);


        return view('layouts.secondary', [
            'page' => 'pages.add-post',
            'title' => 'Edit post',
            'withInstagramFooter' => true,
            'ways' => ['Edit Post', $post->title ],
            'categories' => Category::all(),
            'post' => $post,
            'tagList' => $tagList,
        ]);
    }

    public function EditPost(PostEditRequest $request, $id)
    {
        if($request->hasFile('cover_image')) {
            $filenameWithExt = $request->file('cover_image')->getClientOriginalName();
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('cover_image')->getClientOriginalExtension();
            $filenameToStore = $filename . '_' . time() . '.' . $extension;
            Image::make($request->file('cover_image'))
                ->fit(600,600)
                ->save('uploads/cover_images/' . $filenameToStore);
        }

        $post = Post::findOrFail($id);

        $post->title = $request->input('title');
        $post->cover_image = $filenameToStore ?? $post->cover_image;
        $post->preview = $request->input('preview');
        $post->category_id = $request->input('category');
        $post->body = $request->input('body');
        $post->save();

        $tags = explode(',', $request->input('tags'));
        foreach ($tags as $tag) {
            $tag = trim($tag);
            if(Tag::where('name', $tag)->get()->count() == 0) {
                $newTag = new Tag();
                $newTag->name = $tag;
                $newTag->save();
            }
            $searchTag = Tag::where('name', $tag)->first()->id;
            if(Post_tag::where('tag_id', '=', $searchTag, 'AND', 'post_id', '=', $id)->count() == 0) {
                $post->tags()->attach(Tag::where('name', $tag)->first()->id);
            }
        }

        return redirect()->route('main.index')->with('success','Post updated successfully!');
    }
}
