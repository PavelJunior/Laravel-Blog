<div class="single-blog-post d-flex flex-wrap mt-50">
    <!-- Thumbnail -->
    <div class="post-thumbnail mb-50">
        <a href="{{ url("/post/{$post->id}") }}"><img src="{{ asset('uploads/cover_images/' . $post->cover_image) }}" alt=""></a>
    </div>
    <!-- Content -->
    <div class="post-content mb-50">
        <p class="post-date"> {{ date('F d, Y', strtotime($post->created_at)) }} / {{ $post->category->name }}</p>
        <a href="{{ url("/post/{$post->id}") }}" class="post-title">
            <h4>{{ $post->title }}</h4>
        </a>
        @if(isset($postStatus) && $postStatus == true)
            @if($post->is_active == 0)
                <p style="text-transform: uppercase; font-size: 15px; color: #f07386;"><b>Not active</b></p>
            @elseif($post->is_active == 1)
                <p style="text-transform: uppercase; font-size: 15px; color: #82e17e;"><b>Active</b></p>
            @endif
        @endif
        <div class="post-meta">
            <a href="#"><span>by</span> {{ $post->user->name }}</a>
            <a href="#"><i class="fa fa-eye"></i> {{ $post->views }}</a>
            <a href="#"><i class="fa fa-comments"></i> {{ $post->comments_count ?? $post->comments_count }}</a>
        </div>
        <p class="post-excerpt">{{ $post->preview }}</p>
        <a href="{{ url("/post/{$post->id}") }}" class="read-more-btn">Continue Reading <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
        <div class="d-flex">
        @can('edit_own', $post)
            <a href="{{ url("/post/edit/{$post->id}") }}" class="read-more-btn">Edit <i class="fa m-0 p-0" aria-hidden="true"></i></a>
        @endcan
        @can('delete_own', $post)
            <a onclick="return confirm('Are you sure?')" href="{{ route('post.delete', $post->id) }}" class="read-more-btn ml-30">Delete <i class="fa" aria-hidden="true"></i></a>
        @endcan
            @if((\Illuminate\Support\Facades\Auth::id()) != null && $post->user_id != \Illuminate\Support\Facades\Auth::id())
            <div class="like-area" data-id="{{ $post->id }}">
                <a class="like i-l {{ Auth::user()->likes()->where('post_id', $post->id)->first() ? Auth::user()->likes()->where('post_id', $post->id)->first()->like == 1 ? 'green' : '' : ''}} " href="#"><i class="fa fa-thumbs-up"></i> <span class="like-number">{{ $post->likes_count }}</span></a>
                <a class="like i-d {{ Auth::user()->likes()->where('post_id', $post->id)->first() ? Auth::user()->likes()->where('post_id', $post->id)->first()->like == -1 ? 'red' : '' : ''}}" href="#"><i class="fa fa-thumbs-down"></i> <span class="like-number">{{ $post->dislikes_count }}</span></a>
            </div>
            @endif
        </div>
    </div>
    <!-- Post Curve Line -->
    <img class="post-curve-line" src="{{ asset('img/core-img/post-curve-line.png') }}" alt="">
</div>
