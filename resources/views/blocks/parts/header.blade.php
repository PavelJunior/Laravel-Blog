<header class="header-area">

    <!-- Top Header Area -->
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="top-header-content d-flex align-items-center justify-content-between">
                        <!-- Search Form -->
                        <div class="search-form">
                            <form action="{{ route('main.list.search') }}" method="get">
                                <input type="text" value="{{ request()->input('query') }}" name="query" class="form-control" placeholder="Search and hit enter...">
                                <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>

                        <!-- Social Button -->
                        <div class="top-social-info">
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Logo Area -->
    <div class="logo-area text-center">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Nav brand -->
                    <a href="{{ route('main.index') }}" class="nav-brand"><img src="{{ asset('img/core-img/logo.png') }}" alt=""></a>
                </div>
            </div>
        </div>
    </div>

    <!-- Navbar Area -->
    <div class="foode-main-menu">
        <div class="classy-nav-container breakpoint-off">
            <div class="container">
                <!-- Menu -->
                <nav class="classy-navbar" id="foodeNav">

                    <!-- Nav brand -->
                    <a href="{{ route('main.index') }}" class="nav-brand"><img src="{{ asset('img/core-img/logo.png') }}" alt=""></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">

                        <!-- close btn -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>

                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul>
                                <li><a href="{{ route('main.index') }}">Home</a></li>
                                    @include('blocks.parts.categories-header')
                                <li><a href="{{ route('main.about') }}">About</a></li>
                                <li><a href="{{ route('main.contact') }}">Contact</a></li>
                                @guest
                                    <li><a href="{{ route('Auth.signUp.Get') }}">Registration</a></li>
                                    <li><a href="{{ route('Auth.logIn.Get') }}">Login</a></li>
                                @endguest

                                @can('create', App\Models\Post::class)
                                    <li><a href="{{ route('post.add.get') }}">Add post</a></li>
                                @endcan

                                @can('create', App\Models\Post::class)
                                    <li><a href="{{ route('main.list.my') }}">My posts</a></li>
                                @endcan

                                @auth
                                    <li><a href="{{ route('Auth.logIn.Get') }}">Exit</a></li>
                                @endauth
                            </ul>

                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>