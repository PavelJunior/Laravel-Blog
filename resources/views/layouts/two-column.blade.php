@extends('layouts.base')

@section('content')
    <section class="section-padding-0-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="blog-posts-area">
                        @yield('main-area')
                    </div>
                </div>
                <div class="col-12 col-sm-9 col-md-6 col-lg-4">
                    <div class="post-sidebar-area">
                        @yield('sidebar-area')
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
