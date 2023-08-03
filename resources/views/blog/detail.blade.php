@extends('blog.layout.main')


@section('content')

    <!-- Blog entries-->
    <div class="col-lg-8">
        <header class="mb-4">
            <h1 class="fw-bolder mb-1">{{ $article->judul }}</h1>
            <div class="text-muted fst-italic mb-1">
                Diposting {{ $article->created_at->format('d F Y') }} - Kategori <a href="/artikel?kategori={{ $article->category->slug }}" class="text-decoration-none">{{ $article->category->nama }}</a>
            </div>
            <div class="text-muted fst-italic mb-2">
                By : {{ $article->user->name }}
            </div>
            @foreach ($article->tags as $tag)
                <a href="/artikel?tag={{ $tag->slug }}" class="badge bg-secondary text-decoration-none link-light">{{ $tag->name }}</a>
            @endforeach 
        </header>

        <figure class="mb-4 mt-3">
            <img src="{{ asset('images/' . $article->gambar) }}" alt="" class="img-fluid">
        </figure>
        
        <section class="mb-4">
            {!! $article->isi !!}
        </section>

        <a href="/artikel" class="text-decoration-none mb-5"><i class="fa-solid fa-arrow-left"></i> Kembali...</a>
    </div>
    
@endsection