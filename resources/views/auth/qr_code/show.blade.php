@extends('adminlte::page')

@section ('title_prefix', $title.' -')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card card-mini">
                <div class="card-header">
                    <h1 class="m0 text-dark card-title text-xl">
                        {{$title}}
                    </h1>
                    <div class="card-action">
                        <a href="{{ route('qr_code.index') }}">
                            <i class="fas fa-arrow-circle-left fa-3x fa-fw" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <div class="card-body">


                    <div class="row">
                        <div class="col-xs-12 col-md-12">

                            <div class="visible-print text-center">
                                {!! QrCode::size(250)->generate($qr_code_url); !!}
                            </div>

                        </div>
                    </div>


                    <div class="row padding pt-5">
                        <div class="col-md-12 col-xs-12 center">
                            <div class="form-group">
                                <a href="{!! route('printQR', ['qr_code_url'=>$qr_code_url]) !!}">
                                    <button class="btn btn-primary btn-lg btn-block">
                                        <i class="fa fa-download" aria-hidden="true"></i> Download
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection

