<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - {{ $title }}</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="{{ asset('blog') }}/assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="{{ asset('admin') }}/css/styles.css" rel="stylesheet" />
        {{-- Font Awesome --}}
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        {{-- ckeditor --}}
        <script src="https://cdn.ckeditor.com/ckeditor5/38.1.1/classic/ckeditor.js"></script>
        {{-- Datatables --}}
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
        <!-- jQuery UI CSS -->
        <link href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css" type="text/css" rel="stylesheet">
        {{-- Token Field --}}
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tokenfield/0.12.0/css/bootstrap-tokenfield.css">
        {{-- my css --}}
        <link rel="stylesheet" href="{{ asset('mystyle.css') }}">

        <style>
            .ck-editor__editable{
                min-height: 150px;
            }
        </style>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
             <!-- Sidebar-->
            @include('dashboard.layout.sidebar')
            <!-- Page content wrapper-->
            <div id="page-content-wrapper" style="background-color: #ECECEC">
                <!-- Top navigation-->
                @include('dashboard.layout.navbar')
                <!-- Page content-->
                @yield('content')
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="{{ asset('admin') }}/js/scripts.js"></script>
        {{-- JQuery --}}
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        {{-- datatables --}}
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
        {{-- tokenfield js --}}
        <script type="text/javascript" src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tokenfield/0.12.0/bootstrap-tokenfield.js"></script>

        <script>
            function tampilGambar(){
                let gambar = document.getElementById('gambar');
                let tampilGambar = document.querySelector('.tampil-gambar');

                tampilGambar.style.display = 'block';

                const oFReader = new FileReader();
                oFReader.readAsDataURL(gambar.files[0]);

                oFReader.onload = function(oFREvent) {
                    tampilGambar.src = oFREvent.target.result;
                }
            }

            ClassicEditor
            .create( document.querySelector( '#editor' ) )
            .catch( error => {
                console.error( error );
            } );

            new DataTable('#myTable');
        </script>

        @if ($title == 'About' || $title == 'Article')
            <script>
                $('#tokenfield').tokenfield({
                autocomplete: {
                    source: [{!! $source !!}],
                    delay: 100
                },
                showAutocompleteOnFocus: true
                })
            </script>
        @endif

    </body>
</html>
