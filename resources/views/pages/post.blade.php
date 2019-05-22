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

    @auth
        <div class="like-area" data-id="{{ $post->id }}">
            <a class="like likestyle i-l {{ $post->liked == '1' ? 'green' : '' }} " href="#"><i class="fa fa-thumbs-up"></i> <span class="like-number">{{ $post->likes_count }}</span></a>
            <a class="like likestyle i-d {{ $post->disliked == '1' ? 'red' : '' }}" href="#"><i class="fa fa-thumbs-down"></i> <span class="like-number">{{ $post->dislikes_count }}</span></a>
        </div>
    @endauth
    @guest
        <div class="like-area" data-id="{{ $post->id }}">
            <a class="likestyle i-l like-disabled" href="#"><i class="fa fa-thumbs-up"></i> <span class="like-number">{{ $post->likes_count }}</span></a>
            <a class="likestyle i-d like-disabled" href="#"><i class="fa fa-thumbs-down"></i> <span class="like-number">{{ $post->dislikes_count }}</span></a>
        </div>
    @endguest

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

    @auth
        <div class="leave-comment-area clearfix">
            <div class="comment-form">
                <h4 class="headline">Leave A Comment</h4>

                <!-- Comment Form -->
                <form action="" method="post" class="leave-comment">
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
        <h4 class="headline">
            <a href="{{ route('Auth.signUp.Get') }}" style="font-size: 25px" >
                <b>Register</b>
            </a>
            or
            <a href="{{ route('Auth.logIn.Get') }}" style="font-size: 25px" >
                <b>login</b>
            </a>  to leave a comment
        </h4>
@endguest

    <!-- Comment Area Start -->
    <div class="comment_area clearfix">
        @if($post->comments_count != 0)
            <h4 class="headline">{{ $post->comments_count }} Comments</h4>
        @else
            <h4 class="headline">There is no comments</h4>
        @endif
            <ol id="comments-place">
            @foreach($comments as $comment)
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
                            @auth
                                <a class="active replay-btn" href="#">Reply</a>
                                <div class="leave-comment-area leave-comment-area-child clearfix mt-30" style="display: none" data-parent="{{ $comment->id }}"></div>
                            @endauth
                        </div>
                    </div>
                    <ol class="children">
                    @foreach($comment->replies as $replay)
                            <li class="single_comment_area">
                                <div class="comment-wrapper d-flex">
                                    <div class="comment-author">
                                        <img src="{{ asset('img/blog-img/photo.png') }}" alt="">
                                    </div>
                                    <!-- Comment Content -->
                                    <div class="comment-content">
                                        <span class="comment-date">{{ date('d F Y - G:i', strtotime($replay->created_at)) }}</span>
                                        <h5>{{ $replay->user->name }}</h5>
                                        <p>{{ $replay->body }}</p>
                                        @auth
                                            <a class="active replay-btn" href="#">Reply</a>
                                            <div class="leave-comment-area leave-comment-area-child clearfix mt-30" style="display: none" data-parent="{{ $comment->id }}"></div>
                                        @endauth
                                    </div>
                                </div>
                            </li>
                    @endforeach
                    </ol>
                </li>
            @endforeach
            </ol>
    </div>

    <ol class="foode-pager">
        @if($comments->currentPage() == 1 && $comments->currentPage() == $comments->lastPage())
            <li></li>
            <li></li>
        @elseif($comments->currentPage() == $comments->lastPage())
            <li><a href="{{ $comments->previousPageUrl("#leave-comment") . "#leave-comment" }}"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> Newer</a></li>
            <li></li>
        @elseif($comments->currentPage() == 1)
            <li></li>
            <li><a href="{{ $comments->nextPageUrl('leave-comment') . "#leave-comment" }}">Older <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></li>
        @else
            <li><a href="{{ $comments->previousPageUrl() . "#leave-comment"}}"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> Newer</a></li>
            <li><a href="{{ $comments->nextPageUrl() . "#leave-comment"}}">Older <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></li>
        @endif
    </ol>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script>

    $(function() {

        let replayField = "<form action=\"\" method=\"post\" class=\"leave-comment child\"> <input type=\"hidden\" name=\"_token\" value=\"{{ csrf_token() }}\"> <div class=\"row\"> <div class=\"col-12\"> <div class=\"form-group\"> <textarea class=\"form-control\" name=\"message\" id=\"message\" cols=\"30\" rows=\"10\" placeholder=\"Comment\"></textarea> </div> </div> <div class=\"col-12\"> <button type=\"submit\" class=\"btn foode-btn\">Post Comment</button> </div> </div> </form>\n";
        $('.leave-comment-area-child').append(replayField);


        $('.replay-btn').on('click', function(e){
            let ar = $(this).next();
            ar.slideToggle();
        });


        $('.leave-comment').on('submit', function  (e) {
            e.stopPropagation();
            e.preventDefault();

            let field = this;
            let message = $(this).find('textarea').val();
            let userId = "{{ Auth::id() }}";
            let parent = null;
            if($(this).hasClass('child')){
                parent = this.parentNode.dataset['parent'];
            }

            let postPromise = $.post( "{{ route('api.comment') }}", {
                message: message,
                user_id: userId,
                post_id: "{{ $post->id }}",
                parent_id: parent
            });
            postPromise.then(function (data) {
                console.log('good');
                if(parent == null){
                    // $('[name="message"]').val('');
                    let el = "<li class=\"single_comment_area\"> <div class=\"comment-wrapper d-flex\"> <div class=\"comment-author\"> <img src=\"{{ asset('img/blog-img/photo.png') }}\"> </div> <div class=\"comment-content\"><span class=\"comment-date\">{{ date('d F Y - G:i')}}</span><h5>@auth{{ Auth::user()->name }}@endauth</h5><p>" + message + "</p><a class=\"active replay-btn\" href=\"{{ Request::url() }}\">Reply</a>\n</div></div><ol class=\"children\"> </ol></li>";
                    $('#comments-place').prepend(el);
                } else {
                    let childerComment = "<li class=\"single_comment_area\">\n<div class=\"comment-wrapper d-flex\"> <div class=\"comment-author\"> <img src=\"{{ asset('img/blog-img/photo.png') }}\" alt=\"\"> </div> <div class=\"comment-content\"> <span class=\"comment-date\">{{ date('d F Y - G:i')}}</span> <h5>@auth{{ Auth::user()->name }}@endauth</h5> <p>" + message + "</p>@auth<a class=\"active replay-btn\" href=\"{{ Request::url() }}\">Reply</a> <div class=\"leave-comment-area clearfix mt-30\" style=\"display: none\"> <form action=\"\" method=\"post\" class=\"leave-comment child\" data-parent=\"" + parent + "\"> <input type=\"hidden\" name=\"_token\" value=\"{{ csrf_token() }}\"> <div class=\"row\"> <div class=\"col-12\"> <div class=\"form-group\"> <textarea class=\"form-control\" name=\"message\" id=\"message\" cols=\"30\" rows=\"10\" placeholder=\"Comment\"></textarea> </div> </div> <div class=\"col-12\"> <button type=\"submit\" class=\"btn foode-btn\">Post Comment</button> </div> </div> </form> </div>@endauth</div> </div> </li>"
                    let rightPlace = $(field).parents('.single_comment_area').find('.children');
                    let b = rightPlace.append(childerComment);
                    $(field).parents('.leave-comment-area').slideUp();
                }
                $(field).find('textarea').val('');
                let commentarea = $('.comment_area .headline');
                console.log(parseInt(commentarea.text()));
                if(isNaN(parseInt(commentarea.text()))){
                    commentarea.text("1 Comments");
                } else {
                    commentarea.text(parseInt(commentarea.text())+1 + " Comments");
                }
            }, function (errorData) {
                console.log('bad');
            });
        });


        $('.like').on('click', function  (e) {
            let postId = e.target.parentNode.parentNode.dataset['id'];
            let isLike = e.target.closest( ".like" ).previousElementSibling == null;
            let userId = {{ Auth::id() }}

            e.stopPropagation();
            e.preventDefault();

            var postPromise = $.post( "{{ route('api.like') }}", {
                post_id: postId,
                user_id: userId,
                like: isLike,
            });
            postPromise.then(function (data) {

                let likeArea = $(e.target).closest( ".like-area" );

                let objLike = likeArea.find('.i-l');
                let objDis = likeArea.find('.i-d');
                let likeNumber = objLike.find('.like-number');
                let dislikeNumber = objDis.find('.like-number');

                if(isLike == 1){
                    if(objLike.hasClass('green')){
                        objLike.removeClass('green');
                        likeNumber.text(parseInt(likeNumber.text())-1);
                    } else {
                        objLike.addClass('green');
                        likeNumber.text(parseInt(likeNumber.text())+1);
                        if(objDis.hasClass('red')){
                            dislikeNumber.text(parseInt(dislikeNumber.text())-1);
                        }
                        objDis.removeClass('red');
                    }
                } else {
                    if(objDis.hasClass('red')){
                        objDis.removeClass('red');
                        dislikeNumber.text(parseInt(dislikeNumber.text())-1);
                    } else {
                        objDis.addClass('red');
                        dislikeNumber.text(parseInt(dislikeNumber.text())+1);
                        if(objLike.hasClass('green')){
                            likeNumber.text(parseInt(likeNumber.text())-1);
                        }
                        objLike.removeClass('green');
                    }
                }
            }, function (errorData) {
                console.log('bad');
            });
        });
    });

</script>
