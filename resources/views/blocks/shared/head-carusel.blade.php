<section class="hero-area">
    <div class="hero-post-slides owl-carousel">

    @foreach($postsForCarusel as $post)
        <!-- Single Hero Post -->
            <div class="single-hero-post">
                <!-- Post Image -->
                <div class="slide-img bg-img" style="background-image: url({{ asset('uploads/cover_images/' . $post->cover_image) }});"></div>
                <!-- Post Content -->
                <div class="hero-slides-content">
                    <p>{{ date('F d, Y', strtotime($post->created_at))}} / {{ $post->category->name }}</p>
                    <a href="{{ url("/post/{$post->id}") }}" class="post-title">
                        <h4>{{ $post->title }}</h4>
                    </a>
                </div>
            </div>
    @endforeach
</section>