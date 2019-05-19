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

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script>

    $(function() {
        $('.like').on('click', function  (e) {
            let postId = e.target.parentNode.parentNode.dataset['id'];
            let isLike = e.target.closest( ".like" ).previousElementSibling == null;
            let userId = {{ \Illuminate\Support\Facades\Auth::id() }}

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
