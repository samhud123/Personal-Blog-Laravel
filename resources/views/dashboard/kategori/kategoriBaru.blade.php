@extends('dashboard.layout.main')

@section('content')

    <div class="container-fluid px-4">
        <div class="card mt-3">
            <div class="card-body px4">
                <div class="d-flex justify-content-between col-lg">
                    <h1 class="mt-2 mb-4">Kategori Baru</h1>
                    <div class="mt-3">
                        <a href="/dashboard/kategori" class="btn btn-transparent text-primary mb-2"><i class="fa-solid fa-arrow-left"></i> Kembali</a>
                    </div>
                </div>

                <div class="col-lg">
                    @if (Session::get('info'))
                        <div class="alert alert-info">{{ Session::get('info') }}</div>
                    @elseif($errors->any())
                        <div class="alert alert-danger">{{ 'Input Kategoi Gagal!...' }}</div>
                    @endif

                    <form action="/dashboard/kategori" method="post">
                        @csrf
                        <div class="mb-3">
                            <label for="nama" class="form-label">Nama Kategori</label>
                            <input type="text" class="form-control @error('nama') is-invalid @enderror" name="nama" id="nama" value="{{ old('nama') }}" onkeyup="getSlug()">
                            @error('nama')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="slug" class="form-label">Slug</label>
                            <input type="text" class="form-control @error('slug') is-invalid @enderror" name="slug" id="slug" value="{{ old('slug') }}" readonly>
                            @error('slug')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="deskripsi" class="form-label">Deskripsi</label>
                            @error('deskripsi')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                            <textarea name="deskripsi" id="deskripsi" class="form-control">{{ old('deskripsi') }}</textarea>
                        </div>

                        <button type="reset" class="btn btn-sm btn-danger"><i class="fa-solid fa-xmark"></i> Reset</button>
                        <button type="submit" class="btn btn-sm btn-primary"><i class="fa-solid fa-save"></i> Simpan</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        function getSlug(){
            $.get('{{ url('/slug-kategori') }}', {'kategori' : $('#nama').val()},
                function (data){
                    $('#slug').val(data.slug)
                }
            )
        }
    </script>
    
@endsection