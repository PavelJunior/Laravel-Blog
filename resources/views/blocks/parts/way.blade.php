@if(isset($ways))
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <img src="{{ asset('img/core-img/breadcrumb-line.png') }}" alt="">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('main.index') }}"><i class="fa fa-home"></i> Home</a></li>
                            @foreach($ways as $way)
                            <li class="breadcrumb-item active" aria-current="page">{{ $way }}</li>
                            @endforeach
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
@endif