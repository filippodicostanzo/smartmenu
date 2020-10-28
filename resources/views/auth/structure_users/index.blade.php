@extends('adminlte::page')

@section ('title_prefix', 'User Link - ')

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
                        User Link
                    </h1>
                    <div class="card-action">
                        <a href="{{ route('structure_users.create') }}">
                            <i class="fa fa-plus-circle fa-3x fa-fw" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>


                <div class="card-body no-padding">
                    <div class="table-responsive">
                        <table class="table card-table table-striped">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>User</th>
                                <th>Structure</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>


                            @foreach ($items as $key => $item)


                                <tr class="@if ($key > 0 && $key % 2) odd @else even @endif">
                                    <td>{{ $item->id }}</td>
                                    <td> {{ $item->user->name }}</td>
                                    <td>{{ $item->structure->name }}</td>

                                    <td align="right">
                                        <div class="btn-group">
                                            <a class="btn btn-default btn-xs"
                                               href="{{ route('structure_users.show',$item->id) }}">
                                                <i class="fa fa-eye fa-1x fa-lg" aria-hidden="true"></i>
                                            </a>
                                            <a class="btn btn-default btn-xs"
                                               href="{{ route('structure_users.edit',$item->id) }}">
                                                <i class="fas fa-pencil-alt fa-1x fa-lg" aria-hidden="true"></i>
                                            </a>
                                            {!! Form::open(['method' => 'DELETE','route' => ['structure_users.destroy', $item->id],'style'=>'display:inline']) !!}

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


@endsection

