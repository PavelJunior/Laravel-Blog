<div class="single-widget-area">
    <!-- Title -->
    <div class="widget-title">
        <h6>popular tags</h6>
    </div>
    <!-- Tags -->
    <ol class="popular-tags d-flex flex-wrap">
        @foreach($tags as $tag)
            <li><a href="{{ route('main.list.tag', $tag->name) }}">{{ $tag->name }}</a></li>
        @endforeach
    </ol>
</div>
