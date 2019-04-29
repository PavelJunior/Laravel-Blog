<div class="single-widget-area">
    <!-- Title -->
    <div class="widget-title">
        <h6>Categories</h6>
    </div>
    <ol class="foode-catagories">
        {{--dd($categories)--}}
    @foreach($categories as $category)
            <li><a href="{{ route('main.list.category', $category->name) }}"><span><i class="fa fa-stop" aria-hidden="true"></i> {{ $category->name }}</span> <span>({{ $category->posts_count }})</span></a></li>
        @endforeach
    </ol>
</div>