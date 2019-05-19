<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-site-verification" content="uhPO8RIgtlOcH_2a3nZv-QP7ITB53GbjRiSnMtVc6Fs" />
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title> {{ $title }} </title>

    <!-- Favicon -->
    <link rel="icon" href="{{ asset("img/core-img/favicon.ico") }}">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="{{ asset("style.css") }}">

    @yield('head_styles')

    @yield('head_scripts')

</head>
<body>

@include('blocks.parts.preloader')

@include('blocks.parts.flash-message')

@include('blocks.parts.header')

@yield('path')

@yield('additional-block')

@yield('content')

@if($withInstagramFooter)
    @include('blocks.parts.footer-instagram')
@endif

@include('blocks.parts.footer')

<!-- js scripts -->
<script src="{{ asset("js/jquery/jquery-2.2.4.min.js") }}"></script>
<script src="{{ asset("js/bootstrap/popper.min.js") }}"></script>
<script src="{{ asset("js/bootstrap/bootstrap.min.js") }}"></script>
<script src="{{ asset("js/plugins/plugins.js") }}"></script>
<script src="{{ asset("js/active.js") }}"></script>

</body>
</html>