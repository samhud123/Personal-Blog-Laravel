@extends('blog.layout.main')


@section('content')

    <!-- Blog entries-->
    <div class="col-lg-8">
        @foreach ($users as $user)
            <header class="mb-4">
                <h1 class="fw-bolder mb-1">{{ $user->name }}</h1>
                
            </header>

            <figure class="mb-4 mt-3">
                <img src="{{ asset('images/' . $user->foto) }}" alt="" class="img-fluid">
            </figure>
            
            <section class="mb-4">
                {!! $user->words !!}
            </section>

            <h1 class="mt-5 mb-4 fw-bold">Keahlian</h1>
            @foreach (explode(', ', $user->keahlian) as $lang)
                <span class="text-secondary me-3 h3"><i class="devicon-{{ strtolower($lang) }}-plain"></i></span>
            @endforeach

            <h1 class="mt-5 mb-4 fw-bold">Kontak</h1>
            <h5 class="text-secondary mb-3"><i class="fa-solid fa-location-dot"></i><span class="ms-2">{{ $user->alamat }}</span></h5>
            <h5 class="text-secondary mb-3"><i class="fa-solid fa-envelope"></i><span class="ms-2">{{ $user->email }}</span></h5>
            <h5 class="text-secondary mb-3"><i class="fa-solid fa-phone"></i><span class="ms-2">{{ $user->telpon }}</span></h5>
        @endforeach
    </div>
    
@endsection