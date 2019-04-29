@extends('layouts.two-column')

@section('main-area')
    @include($page)
@endsection

@section('path')
    @include('blocks.parts.way')
@endsection

@section('sidebar-area')
    @include('blocks.widgets.links')
    @include('blocks.widgets.categories')
    @include('blocks.widgets.popular-posts')
    @include('blocks.widgets.order-book')
{{--    @include('blocks.widgets.newsletter')--}}
    @include('blocks.widgets.tags')
@endsection