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
                        <a href="{{ route('towns.create') }}">
                            <i class="fa fa-plus-circle fa-3x fa-fw" aria-hidden="true"></i>
                        </a>
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
                                <th>Website</th>
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
                                    <td>{{ $item->website }}</td>
                                    <td align="right">
                                        <div class="btn-group">
                                            <a class="btn btn-default btn-xs"
                                               href="{{ route('towns.show',$item->id_code) }}">
                                                <i class="fa fa-eye fa-1x fa-lg" aria-hidden="true"></i>
                                            </a>
                                            <a class="btn btn-default btn-xs"
                                               href="{{ route('towns.edit',$item->id_code) }}">
                                                <i class="fas fa-pencil-alt fa-1x fa-lg" aria-hidden="true"></i>
                                            </a>
                                            {!! Form::open(['method' => 'DELETE','route' => ['towns.destroy', $item->id_code],'style'=>'display:inline']) !!}

                                            {{-- {!! Form::button('<span class="fa fa-minus-circle fa-1x fa-lg"></span>', ['id' => '', 'class' => 'btn btn-danger btn-xs buttonDelete']) !!} --}}

                                            <button type="submit" class="btn btn-xs btn-outline-danger buttonDelete"
                                                    onclick="return confirm('Are you sure to delete this item?')">
                                                <span class="fa fa-minus-circle fa-1x fa-lg"></span>
                                            </button>
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

    {!! $items->render() !!}
@stop
