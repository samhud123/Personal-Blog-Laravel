@extends('dashboard.layout.main')

@section('content')

    <div class="container-fluid px-4">
        <div class="card mt-3">
            <div class="card-body px4">
                <div class="d-flex justify-content-between col-lg">
                    <h1 class="mt-2 mb-4">Edit Artikel</h1>
                    <div class="mt-3">
                        <a href="/dashboard/artikel" class="btn btn-transparent text-primary mb-2"><i class="fa-solid fa-arrow-left"></i> Kembali</a>
                    </div>
                </div>

                <div class="col-lg">
                    @if (Session::get('info'))
                        <div class="alert alert-info">{{ Session::get('info') }}</div>
                    @elseif($errors->any())
                        <div class="alert alert-danger">{{ 'Edit artikel Gagal!...' }}</div>
                    @endif

                    <form action="/dashboard/artikel/{{ $data->id }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="judul" class="form-label">Judul</label>
                            <input type="text" class="form-control @error('judul') is-invalid @enderror" name="judul" id="judul" value="{{ old('judul', $data->judul) }}" onkeyup="getSlug()">
                            @error('judul')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="slug" class="form-label">Slug</label>
                            <input type="text" class="form-control @error('slug') is-invalid @enderror" name="slug" id="slug" value="{{ old('slug', $data->slug) }}" readonly>
                            @error('slug')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="kategori" class="form-label">Kategori</label>
                            <select name="category_id" id="" class="form-select @error('category_id') is-invalid @enderror">
                                <option value="">-- Pilih Kategori --</option>
                                @foreach ($categories as $category)
                                    @if (old('category_id', $data->category_id) == $category->id)
                                        <option value="{{ $category->id }}" selected>{{ $category->nama }}</option>
                                    @else
                                        <option value="{{ $category->id }}">{{ $category->nama }}</option>

                                    @endif
                                @endforeach
                            </select>
                            @error('category_id')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="gambar" class="form-label">Gambar</label>
                            <input type="hidden" value="{{ $data->gambar }}" name="gambarLama">
                            @if ($data->gambar)
                                <img src="{{ asset('images/' . $data->gambar ) }}" alt="" class="img-fluid tampil-gambar mb-3 d-block" width="500px">
                            @else 
                                <img class="tampil-gambar img-fluid mb-3" width="500px">
                            @endif
                            <input type="file" class="form-control @error('gambar') is-invalid @enderror" name="gambar" id="gambar" onchange="tampilGambar()">
                            @error('gambar')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="tag" class="form-label">Tag (Pisahkan dengan koma)</label>
                            <input type="text" class="form-control @error('tag') is-invalid @enderror" name="tag" id="tokenfield" value="{{ old('tag',  $tags) }}">
                            @error('tag')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="isi" class="form-label">Isi Artikel</label>
                            @error('isi')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                            <textarea name="isi" id="editor" class="form-control">{{ old('isi', $data->isi) }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-sm btn-primary"><i class="fa-solid fa-save"></i> Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        function getSlug(){
            $.get('{{ url('/slug-artikel') }}', {'judul' : $('#judul').val()},
                function (data){
                    $('#slug').val(data.slug)
                }
            )
        }
    </script>
    
@endsection