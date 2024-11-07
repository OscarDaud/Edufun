@extends('index')

@section('content')
<div class="container pt-5 pb-3 fs-2 fw-bold">Popular</div>
@include('components.course_card', ['courses' => $courses])

<div class="d-flex justify-content-center">
    <div class="pagination-links">
        {{ $courses->links('pagination::bootstrap-4') }}
    </div>
</div>

<style>
    .pagination .page-link {
        padding: 0.5rem 1rem; 
        font-size: 0.900 rem;
    }
</style>
@endsection