@extends('adminlte::page')

@section ('title_prefix', 'Banner Types - ')

@section('content')

    <div class="notification">

        @if(session()->has('message'))
            <div class="alert alert-success">
                {{session()->get('message')}}
            </div>
        @endif
    </div>
    {{-- {!! Form::open(array('route' => 'bannerOrders','method'=>'POST', 'enctype' => 'multipart/form-data')) !!} --}}
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card">
                <div class="card-header">
                    <h1 class="m0 text-dark card-title text-xl">
                        Menu Orders
                    </h1>
                    <div class="card-action">
                        <a href="{{ route('menus.index') }}">
                            <i class="fas fa-arrow-circle-left fa-3x fa-fw" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <div class="card-header">
                    <h4 class="card-title">
                        Filtra per tipo:
                    </h4>

                    <div class="card-action">
                      {{--  <select class="form-control" name="banner_type" id="banner_type"
                                onchange="bannertype(this.value)">
                            @foreach($banner_types as $banner_type)
                                <option
                                    value="{{$banner_type->id}}" {{ $banner_type->id == $banner_type_id ? 'selected="selected"' : '' }}>
                                    {{$banner_type->name}}
                                </option>
                            @endforeach
                        </select> --}}
                    </div>
                </div>


                <div class="card-body no-padding">
                    <div class="table-responsive">
                        <table class="table card-table table-striped">
                            <thead>
                            <tr>
                                <th>Pos</th>
                                <th>Cover</th>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Type</th>
                                <th>Url</th>

                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($items as $key => $item)
                                <tr class="@if ($key > 0 && $key % 2) odd @else even @endif">
                                    <td>

                                        {{$key+1}}
                                    </td>

                                    <td>

                                        @if ($item->image == "")

                                            <div class="cover-thumbnail"
                                                 style="background-image: url({{ asset('img/no_image.jpg') }});"></div>
                                        @else
                                            <div class="cover-thumbnail"
                                                 style="background-image: url({{$item->image}})"></div>
                                        @endif
                                    </td>
                                    <td>{{ $item->id }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->banner_type->name }}</td>
                                    <td>{{ $item->url }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>


                    </div>

                    @if(count($items)>0)
                        <div class="row padding">
                            <div class="col-md-12 col-xs-12 center">
                                <div class="form-group">
                                    <input type="hidden" name="itemsorder" value="" id="itemsorder">
                                    <!--
                                        <input type="submit" value="Save" class="submit" name="submit" id="btn-structures" />
                                        -->
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                                        <i class="fa fa-floppy-o" aria-hidden="true"></i> Save
                                    </button>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>


            </div>
        </div>
    </div>
    {!! Form::close() !!}
    <script>
        var array = [];
        $("table tbody").children().each(function (index) {
            array.push($(this).find('td:nth-child(3)').html());
        })
        $('#itemsorder').val(JSON.stringify(array));

        $("table tbody").sortable({
            update: function (event, ui) {
                var array = [];
                $(this).children().each(function (index) {
                    array.push($(this).find('td:nth-child(3)').html());

                })

                $(this).children().each(function (index) {
                    $(this).find('td').first().html(index + 1)
                });

                $('#itemsorder').val(JSON.stringify(array));
            }
        });


    </script>

@endsection

<script
    src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
    crossorigin="anonymous"></script>
<script
    src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
    integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E="
    crossorigin="anonymous"></script>





