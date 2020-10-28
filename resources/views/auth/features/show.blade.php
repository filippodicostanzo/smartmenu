@extends('adminlte::page')

@section ('title_prefix', 'Sight - ')

@section('content')
    <div class="row">
        <div class="card card-mini">
            <div class="card-header">
                <h1 class="m0 text-dark card-title text-xl">
                    {{$item->name_it}}
                </h1>
                <div class="card-action">
                    <a href="{{ route('features.edit',$item->id_code) }}">
                        <i class="fas fa-pencil-alt fa-3x fa-fw" aria-hidden="true"></i>
                    </a>
                    <a href="{{ route('features.index') }}">
                        <i class="fas fa-arrow-circle-left fa-3x fa-fw" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
            <div class="card-body">
                <div class="row mb-5">
                    <div class="col-md-6 col-sm-6">
                        @if ($item->cover == "")
                            <div class="bg-cover" style="background-image: url({{ asset('img/no_image.jpg') }})"></div>
                        @else
                            <div class="bg-cover" style="background-image: url({{ $item->cover }})"></div>
                        @endif
                    </div>
                    <div class="col-md-6 col-sm-6">
                        @if ($item->icon == "")
                            <div class="bg-cover" style="background-image: url({{ asset('img/no_image.jpg') }})"></div>
                        @else
                            <div class="bg-cover" style="background-image: url({{ $item->icon }})"></div>
                        @endif
                    </div>
                </div>


                <div class="row mb-3">
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Information</h3></div>
                            <div class="section-body">
                                <label class="control-label">ID:</label> {{ $item->id }}
                                <br/>
                                <label class="control-label">Name En:</label> {{ $item->name_en }}
                                <br/>
                                <label class="control-label">Name It:</label> {{ $item->name_it }}
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Extra</h3></div>
                            <div class="section-body">
                                <label class="control-label">Icon Map:</label> <img src="{{$item->map}}" width="50">
                                <br/>
                                <label class="control-label">Visible:</label>  {{ $item->visible ? "Yes" : "No"}}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Description EN</h3></div>
                            <div class="section-body">
                                {!! $item->description_en !!}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Description IT</h3></div>
                            <div class="section-body">
                                {!! $item->description_it !!}
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>

    </div>
@endsection
