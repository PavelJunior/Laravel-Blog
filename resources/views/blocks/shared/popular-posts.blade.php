<div class="single-widget-area">
    <!-- Title -->
    <div class="widget-title">
        <h6>Popular Posts</h6>
    </div>

    <!-- Single Latest Posts -->


    @foreach($mostViewedPosts as $mostViewedPost)
        <div class="single-latest-post d-flex">
            <div class="post-thumb">
                <img src="{{ asset('uploads/cover_images/' . $mostViewedPost->cover_image) }}" alt="">
            </div>
            <div class="post-content">
                <a href="{{ url("/post/{$mostViewedPost->id}") }}" class="post-title">
                    <h6>{{ $mostViewedPost->title }}</h6>
                </a>
                <a href="#" class="post-author"><span>by</span> {{ $mostViewedPost->user->name }}</a>
            </div>
        </div>
    @endforeach


</div>
