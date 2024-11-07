@extends('index')

@section('content')

    <div class="">
        <img src="{{ asset('img/home_image.jpg') }}" alt="hero" style="width: 100%; object-fit: cover;" height="400">
    </div>

    @include('components.course_card', ['courses' => $courses])

@endsection