<div class="blog-posts-area">

    <!-- Post Details Area -->
    <div class="single-post-details-area">
        <div class="post-thumbnail mb-30">
            <img src="{{ asset('uploads/cover_images/' . $post->cover_image) }}" alt="">
        </div>
        <div class="post-content">
            <div class="d-flex justify-content-between">
                <p class="post-date"> {{ date('F d, Y', strtotime($post->created_at))}} / {{ $post->category->name }}</p>
                <span class="d-flex flex-row-reverse">
                    @can('delete_own', $post)
                        <a onclick="return confirm('Are you sure?')" href="{{ route('post.delete', $post->id) }}" class="post-date">Delete <i class="fa" aria-hidden="true"></i></a>
                    @endcan
                    @can('edit_own', $post)
                        <a style="float:right; margin-right: 15px;" href="{{ url("/post/edit/{$post->id}") }}" class="post-date">Edit <i class="fa" aria-hidden="true"></i></a>
                    @endcan
                </span>
            </div>
            <h4 class="post-title">{{ $post->title }}</h4>
            <div class="post-meta">
                <a href="#"><span>by</span> {{ $post->user->name }}</a>
                <a href="#"><i class="fa fa-eye"></i> {{ $post->views }}</a>
                <a href="#"><i class="fa fa-comments"></i> {{ $post->comments_count }}</a>
            </div>
            {!! $post->body !!}
        </div>
    </div>

    <!-- Post Tags & Share -->
    <div class="post-tags-share d-flex justify-content-between align-items-center">
        <!-- Tags -->
        <ol class="popular-tags d-flex flex-wrap">
            @foreach($post->tags as $tag)
                <li><a href="{{ route('main.list.tag', $tag->name) }}">{{ $tag->name }}</a></li>
            @endforeach
        </ol>
        <!-- Share -->
        <div class="post-share d-flex flex-nowrap">
            <span>Share:</span>
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a>
        </div>
    </div>

    <!-- Related Post Area -->
    <div class="related-posts clearfix">
        <!-- Line -->
        <div class="curve-line bg-img mb-50" style="background-image: url({{ asset('img/core-img/breadcrumb-line.png') }});"></div>

        <!-- Headline -->
        <h4 class="headline">Relatest Posts</h4>

        <div class="row">

            <!-- Single Blog Post -->
            @foreach($samePosts as $samePost)
                <div class="col-12 col-md-6">
                    <div class="single-blog-post related-post">
                        <!-- Thumbnail -->
                        <div class="post-thumbnail mb-50">
                            <a href="{{ url("/post/{$samePost->id}") }}"><img style="height: 300px" src="{{ asset('uploads/cover_images/' . $samePost->cover_image) }}" alt=""></a>
                        </div>
                        <!-- Content -->
                        <div class="post-content mb-50">
                            <p class="post-date">{{ date('F d, Y', strtotime($samePost->created_at))}} / {{ $samePost->category->name }}</p>
                            <a href="#" class="post-title">
                                <a href="{{ url("/post/{$samePost->id}") }}"><h4>{{ $samePost->title }}</h4></a>
                            </a>
                            <div class="post-meta">
                                <a href="#"><span>by</span> {{ $samePost->user->name }}</a>
                                <a href="#"><i class="fa fa-eye"></i> {{ $samePost->views }}</a>
                                <a href="#"><i class="fa fa-comments"></i> {{ $samePost->comments_count }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach

            <!-- Single Blog Post -->


        </div>

        <!-- Line -->
        <div class="curve-line bg-img" style="background-image: url(img/core-img/breadcrumb-line.png);"></div>
    </div>

    <!-- Comment Area Start -->
    <div class="comment_area clearfix">
        @if($post->comments_count != 0)
            <h4 class="headline">{{ $post->comments_count }} Comments</h4>
        @else
            <h4 class="headline">There is no comments</h4>
        @endif
            <ol>
            @foreach($post->comments as $comment)
                <li class="single_comment_area">
                    <div class="comment-wrapper d-flex">
                        <!-- Comment Meta -->
                        <div class="comment-author">
                            <img src="{{ asset('img/blog-img/photo.png') }}" alt="">
                        </div>
                        <!-- Comment Content -->
                        <div class="comment-content">
                            <span class="comment-date">{{ date('d F Y - G:i', strtotime($comment->created_at)) }}</span>
                            <h5>{{ $comment->user->name }}</h5>
                            <p>{{ $comment->body }}</p>
{{--                            <a href="#">Like</a>--}}
{{--                            <a class="active" href="#">Reply</a>--}}
                        </div>
                    </div>
                </li>
            @endforeach
        </ol>
    </div>



    @auth
        <div class="leave-comment-area clearfix">
            <div class="comment-form">
                <h4 class="headline">Leave A Comment</h4>

                <!-- Comment Form -->
                <form action="" method="post">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Comment"></textarea>
                            </div>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn foode-btn">Post Comment</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    @endauth

    @guest
        <h4 class="headline"><a href="{{ route('Auth.signUp.Get') }}" style="font-size: 25px" ><b>Register</b></a> or <a href="{{ route('Auth.logIn.Get') }}" style="font-size: 25px" ><b>login</b></a>  to leave a comment</h4>
    @endguest
</div>
