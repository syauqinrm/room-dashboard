@extends('layouts.auth') @section('content')
<div class="login-box">
    <!-- /.login-logo -->
    @include('includes.error-card')
    <div class="card mt-3">
        <div class="card-body login-card-body">
            <div class="login-logo">
                <a href="/">
                    <img src="{{ url('/logo.png') }}" alt="Logo" width="120" />
                    {{-- <h1 class="font-weight-bold text-success">Logo</h1> --}}
                </a>
            </div>
            <h6 class="text-center font-weight-bold">Aplikasi Peminjaman Tempat</h6>
            <p class="login-box-msg">Masuk untuk memulai sesi Anda</p>
            <form action="/login" method="post">
                @csrf
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Username / Email" name="useremail">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" class="form-control" placeholder="Password" name="password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-end">
                    <!-- /.col -->
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button type="submit" class="btn btn-success btn-block d-grid gap-2">Masuk</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

        </div>
        <!-- /.login-card-body -->
    </div>

</div>
@endsection
