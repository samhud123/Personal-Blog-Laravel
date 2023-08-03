@extends('blog.layout.main')


@section('content')

    <!-- Blog entries-->
    <div class="col-lg-8">
        <!-- Featured blog post-->
        <div class="card mb-4 border-0">
            <a href="/artikel/{{ $articles[0]->slug }}"><img class="card-img-top" src="{{ asset('images/' . $articles[0]->gambar) }}" alt="gambar article" /></a>
            <div class="card-body px-0">
                <div class="small text-muted">Diposting {{ $articles[0]->created_at->format('d F Y') }} - Kategori <a href="/artikel?kategori={{ $articles[0]->category->slug }}" class="text-decoration-none">{{ $articles[0]->category->nama }}</a></div>
                <h2 class="card-title">{{ $articles[0]->judul }}</h2>
                <p class="card-text">{{ $articles[0]->kutipan }}</p>
                <a class="text-decoration-none" href="/artikel/{{ $articles[0]->slug }}">Lanjut baca →</a>
                <div class="mt-3">
                    @foreach ($articles[0]->tags as $tag)
                        <a href="/artikel?tag={{ $tag->slug }}" class="badge bg-secondary text-decoration-none link-light">{{ $tag->name }}</a>
                    @endforeach 
                </div>
            </div>
        </div>
        <!-- Nested row for non-featured blog posts-->
        <div class="row">
            @foreach ($articles->skip(1) as $article)
                {{-- Blog Post --}}
                <div class="col-lg-6">
                    <div class="card mb-4 border-0">
                        <a href="/artikel/{{ $article->slug }}"><img class="card-img-top" src="{{ asset('images/' . $article->gambar) }}" alt="gambar article" /></a>
                        <div class="card-body px-0">
                            <div class="small text-muted">Diposting {{ $article->created_at->format('d F Y') }} - Kategori <a href="/artikel?kategori={{ $article->category->slug }}" class="text-decoration-none">{{ $article->category->nama }}</a></div>
                            <h2 class="card-title">{{ $article->judul }}</h2>
                            <p class="card-text">{{ $article->kutipan }}</p>
                            <a class="text-decoration-none" href="/artikel/{{ $article->slug }}">Lanjut baca →</a>
                            <div class="mt-3">
                                @foreach ($article->tags as $tag)
                                    <a href="/artikel?tag={{ $tag->slug }}" class="badge bg-secondary text-decoration-none link-light">{{ $tag->name }}</a>
                                @endforeach 
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <!-- Pagination-->
        <hr>
        {{ $articles->links() }}
    </div>
    
@endsection