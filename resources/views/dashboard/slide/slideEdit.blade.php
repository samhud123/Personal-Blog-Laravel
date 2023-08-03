@extends('dashboard.layout.main')

@section('content')

    <div class="container-fluid px-4">
        <div class="card mt-3">
            <div class="card-body px4">
                <div class="d-flex justify-content-between col-lg">
                    <h1 class="mt-2 mb-4">Edit Slide</h1>
                    <div class="mt-3">
                        <a href="/dashboard/slide" class="btn btn-transparent text-primary mb-2"><i class="fa-solid fa-arrow-left"></i> Kembali</a>
                    </div>
                </div>

                <div class="col-lg">
                    @if ($errors->any())
                        <div class="alert alert-danger">{{ 'Update slide gagal!...' }}</div>                        
                    @endif
                    <form action="/dashboard/slide/{{ $data->id }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="judul" class="form-label">Headline</label>
                            <input type="text" class="form-control @error('judul') is-invalid @enderror" name="judul" id="judul" value="{{ old('judul', $data->judul) }}">
                            @error('judul')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="gambar" class="form-label">Gambar</label>
                            <input type="hidden" name="gambarLama" value="{{ $data->gambar }}">
                            @if ($data->gambar)
                                <img src="{{ asset('images/' . $data->gambar) }}" class="tampil-gambar img-fluid mb-3 col-lg-5 d-block">
                            @else 
                                <img class="tampil-gambar img-fluid mb-3 col-lg-5 d-block">
                            @endif
                            <input type="file" class="form-control @error('gambar') is-invalid @enderror" name="gambar" id="gambar" onchange="tampilGambar()">
                            @error('gambar')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="kutipan" class="form-label">Kutipan</label>
                            @error('kutipan')
                                <p class="text-danger">
                                    {{ $message }}
                                </p>
                            @enderror
                            <textarea name="kutipan" id="editor" class="form-control">{{ old('kutipan', $data->kutipan) }}</textarea>
                        </div>

                        <button type="submit" name="simpan" class="btn btn-primary btn-sm"><i class="fa-solid fa-save"></i> Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
@endsection