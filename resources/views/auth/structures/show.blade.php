@extends('adminlte::page')

@section ('title_prefix', 'Structure - ')

@section('content')
    <div class="row">
        <div class="card card-mini">
            <div class="card-header">
                <h1 class="m0 text-dark card-title text-xl">
                    {{$item->name}}
                </h1>
                <div class="card-action">
                    <a href="{{ route('structures.edit',$item->id_code) }}">
                        <i class="fas fa-pencil-alt fa-3x fa-fw" aria-hidden="true"></i>
                    </a>
                    <a href="{{ route('structures.index') }}">
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
                                <label class="control-label">Name En:</label> {{ $item->name }}
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
                                <label class="control-label">Address:</label> {{ $item->address }}
                                <br/>
                                <label class="control-label">City:</label> {{ $item->town->name }}
                                <br/>
                                <label class="control-label">Telephone:</label> {{ $item->telephone }}
                                <br/>
                                <label class="control-label">Email:</label> {{ $item->email }}
                                <br/>
                                <label class="control-label">Website:</label> {{ $item->website }}
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Social</h3></div>
                            <div class="section-body">
                                <label class="control-label">Tripadvisor ID:</label> {{ $item->tripadvisor }}
                                <br>
                                <label class="control-label">Facebook ID:</label> {{ $item->facebook }}
                                <br>
                                <label class="control-label">Facebook Album:</label> {{ $item->facebook_album }}
                                <br>
                                <label class="control-label">Instagram ID:</label> {{ $item->instagram }}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Categories</h3></div>
                            <div class="section-body">
                                <label class="control-label">Main Category:</label> {{ $item->category->name_it }}
                                <br>
                                <label class="control-label">Sub Categories:</label>
                                @if ($subcategories[0]!="")
                                    @foreach ($subcategories as $cat)
                                        <span>{{ $cat->name_it }} </span>
                                        @if(!$loop->last)
                                            -
                                        @endif
                                    @endforeach

                                @else
                                    Nessuna
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>Extra</h3></div>
                            <div class="section-body">
                                <label class="control-label">Visible:</label> {{ $item->visible ? "Yes" : "No"}}
                                <br>
                                <label class="control-label">Sponsored:</label> {{ $item->sponsored ? "Yes" : "No"}}
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
