@extends('adminlte::page')

@section ('title_prefix', __('titles.'.$title) .' -')

@section('content')

    <div class="notification">

        @if(session()->has('message'))
            <div class="alert alert-success">
                {{session()->get('message')}}
            </div>
        @endif
    </div>

    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card">
                <div class="card-header">
                    <h1 class="m0 text-dark card-title text-xl">
                        {{ __('titles.'.$title) }}
                    </h1>
                    <div class="card-action">
                        <a href="{{ route('structures.create') }}">
                            <i class="fa fa-plus-circle fa-3x fa-fw" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>

                <div class="card-header">
                    <h4 class="card-title">
                        Filtra per paese:
                    </h4>
                    <div class="card-action">
                        <select class="form-control" name="towns" id="towns" onchange="filter(this.value,'structures')">
                            <option value="">--- Scegli ---</option>
                            @foreach($towns as $town)
                                <option value="{{$town->id}}" {{ $town == $town->id ? 'selected="selected"' : '' }}>
                                    {{$town->name}}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="card-body no-padding">
                    <div class="table-responsive">
                        <table class="table card-table table-striped">
                            <thead>
                            <tr>
                                <th>Cover</th>
                                <th>Id</th>
                                <th>Name</th>
                                <th>City</th>
                                <th>Category</th>
                                <th>Visibile</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>

                            @foreach ($items as $key => $item)
                                <tr class="@if ($key > 0 && $key % 2) odd @else even @endif">
                                    <td>

                                        @if ($item->cover == "")

                                            <div class="cover-thumbnail"
                                                 style="background-image: url({{ asset('img/no_image.jpg') }});"></div>
                                        @else
                                            <div class="cover-thumbnail"
                                                 style="background-image: url({{$item->cover}})"></div>
                                        @endif
                                    </td>
                                    <td>{{ $item->id }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->town->name }}</td>
                                    <td>{{ $item->category->name_it }}</td>
                                    <td><i class="fas {{$item->visible == 1 ? 'fa-check': 'fa-times'}} fa-1x fa-lg" aria-hidden="true"></i></td>
                                    <td align="right">
                                        <div class="btn-group">
                                            <a class="btn btn-default btn-xs"
                                               href="{{ route('orders.edit',$item->id_code) }}">
                                                <i class="fa fa-pencil-alt fa-1x fa-lg" aria-hidden="true"></i>
                                            </a>
                                            {!! Form::close() !!}
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection

