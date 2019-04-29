@forelse ($posts as $post)
    @include('blocks.parts.post')
@empty
    <p>No posts</p>
@endforelse

<ol class="foode-pager mt-50">
    @if($posts->currentPage() == 1 && $posts->currentPage() == $posts->lastPage())
        <li></li>
        <li></li>
    @elseif($posts->currentPage() == $posts->lastPage())
        <li><a href="{{ $posts->previousPageUrl() }}"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> Newer</a></li>
        <li></li>
    @elseif($posts->currentPage() == 1)
        <li></li>
        <li><a href="{{ $posts->nextPageUrl() }}">Older <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></li>
    @else
        <li><a href="{{ $posts->previousPageUrl() }}"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> Newer</a></li>
        <li><a href="{{ $posts->nextPageUrl() }}">Older <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></li>
    @endif
</ol>

@if(isset($headerCarusel) && $headerCarusel == true)

    @section('additional-block')
        @include('blocks.widgets.head-carusel')
    @endsection

@endif
