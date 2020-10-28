@extends('adminlte::page')

@section ('title_prefix', 'Towns - ')

@section('content')
    <div class="row">
        <div class="card card-mini">
            <div class="card-header">
                <h1 class="m0 text-dark card-title text-xl">
                    {{$item->name}}
                </h1>
                <div class="card-action">
                    <a href="{{ route('towns.edit',$item->id_code) }}">
                        <i class="fas fa-pencil-alt fa-3x fa-fw" aria-hidden="true"></i>
                    </a>
                    <a href="{{ route('towns.index') }}">
                        <i class="fas fa-arrow-circle-left fa-3x fa-fw" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
            <div class="card-body">
                <div class="row mb-5">
                    <div class="col-md-12 col-sm-12">
                        @if ($item->cover == "")
                            <div class="bg-cover" style="background-image: url({{ asset('img/no_image.jpg') }})"></div>
                        @else
                            <div class="bg-cover" style="background-image: url({{ $item->cover }})"></div>
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
                                <label class="control-label">Name:</label> {{ $item->name }}
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Geo</h3></div>
                            <div class="section-body">
                                <label class="control-label">Latitude:</label> {{ $item->latitude }}
                                <br/>
                                <label class="control-label">Longitude:</label> {{ $item->longitude }}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Contacts</h3></div>
                            <div class="section-body">
                                <label class="control-label">Telephone:</label> {!! $item->telephone !!}
                                <br/>
                                <label class="control-label">Web:</label> {!! $item->website !!}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Social</h3></div>
                            <div class="section-body">
                                <label class="control-label">Instagram ID:</label> {{ $item->instagram_id }}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Resume EN</h3></div>
                            <div class="section-body">
                                {!! $item->resume_en !!}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Resume IT</h3></div>
                            <div class="section-body">
                                {!! $item->resume_it !!}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-12 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Description EN</h3></div>
                            <div class="section-body">
                                {!! $item->description_en !!}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-12 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Description IT</h3></div>
                            <div class="section-body">
                                {!! $item->description_it !!}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="section-title text-center"><h3>Images</h3></div>
                        <ul id="holder" style="margin-top:15px">
                            @foreach(explode(',',$item->images) as $row)
                                <li><img src="{{ $row }}"></li>
                            @endforeach
                        </ul>
                    </div>
                </div>

            </div>
        </div>

    </div>
@endsection
