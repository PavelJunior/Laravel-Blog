<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactRequest;
use App\Models\Comment;
use App\Models\Like;
use Illuminate\Http\Request;
use App\Mail\ContactMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;


class ApiController extends Controller
{
    public function contact(ContactRequest $request)
    {
        Mail::to('laravelblog92@gmail.com')
            ->send(new ContactMail($request->all()));
    }

    public function like(Request $request){
        $post_id = $request->input('post_id');
        $user_id = $request->input('user_id');
        $liked = $request->input('like') == 'true' ? 1 : -1;

        $like = Like::where('user_id', $user_id)
            ->where('post_id', $post_id)
            ->first();

        if($like != null){
            if($like->like == $liked) {
                $like->delete();
            } else {
                $like->like = $liked;
                $like->save();
            }
        } else {
            $like = new Like();

            $like->post_id = $post_id;
            $like->user_id = $user_id;
            $like->like = $liked;

            $like->save();
        }
    }

    public function comment(Request $request)
    {
        $request->validate([
            'message' => 'required|max:2000'
        ]);

        $comment = new Comment();

        $comment->body = $request->input('message');
        $comment->user_id = $request->input('user_id');
        $comment->post_id = $request->input('post_id');
        $comment->parent_id = $request->input('parent_id');

        $comment->save();
    }
}
