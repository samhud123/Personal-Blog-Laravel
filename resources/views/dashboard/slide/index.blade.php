@extends('dashboard.layout.main')

@section('content')

    <div class="container-fluid px-4">
        <div class="card mt-3">
            <div class="card-body px4">
                <h1 class="mt-2 mb-4">Slide</h1>

                @if (Session::get('info'))
                    <div class="alert alert-info">{{ Session::get('info') }}</div>                        
                @endif

                <a href="/dashboard/slide/create" class="btn btn-sm btn-outline-primary mb-2" title="tambah slide"><i class="fa-solid fa-plus"></i> Slide Baru</a>

                <table class="table table-hover table-sm mt-3">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Gambar</th>
                            <th>Headline</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php($no = 1)
                        @foreach ($slides as $slide)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>
                                    <img src="{{ asset('images/' . $slide->gambar) }}" width="150px" alt="slide">
                                </td>
                                <td class="col-7">{{ $slide->judul }}</td>
                                <td class="col-1">
                                    <a href="/dashboard/slide/{{ $slide->id }}/edit" class="btn btn-warning btn-sm" title="edit slide"><i class="fa-solid fa-pen-to-square"></i></a>
                                    <form action="/dashboard/slide/{{ $slide->id }}" method="post" class="d-inline" onsubmit="return confirm('Anda yakin ingin menghapus slide ini?')">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger" title="hapus slide"><i class="fa-solid fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
@endsection