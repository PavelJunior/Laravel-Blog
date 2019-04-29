@extends('layouts.one-column')

@section('path')
    @include('blocks.parts.way')
@endsection

@section('main-page')
    @include($page)
@endsection
