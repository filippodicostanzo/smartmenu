@extends('adminlte::page', ['search' => true])

@section ('title_prefix', __('titles.'.$title) .' -')

@section('adminlte_css')
    @parent

@stop

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
                        <a href="{{ route('ingredients.create') }}">
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
                                <th>Nome</th>
                                <th>Allergeni</th>
                                <th>Utente</th>
                                <th>Visibile</th>
                                <th class="text-right">Opzioni</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach ($items as $key => $item)
                                <tr class="@if ($key > 0 && $key % 2) odd @else even @endif">

                                    <td>{{ $item->id_code }}</td>
                                    <td>{{ $item->name_it }}</td>
                                    <td>
                                        @foreach(explode(',', $item->allergens) as $allergen)
                                            {{$alg = App\Models\Allergen::where('id_code',$allergen)->value('initials_it')}}
                                            @if(!$loop->last) - @endif
                                        @endforeach

                                    </td>
                                    <td>{{ $item->user->name}}</td>
                                    <td><i class="fas {{$item->visible == 1 ? 'fa-check': 'fa-times'}} fa-1x fa-lg" aria-hidden="true"></i></td>
                                    <td align="right">
                                        <div class="btn-group">
                                            <a class="btn btn-default btn-xs"
                                               href="{{ route('ingredients.show',$item->id_code) }}">
                                                <i class="fas fa-eye fa-1x fa-lg" aria-hidden="true"></i>
                                            </a>
                                            @if($item->user_id == Auth::user()->id || Auth::user()->hasRole('superadministrator'))
                                            <a class="btn btn-default btn-xs"
                                               href="{{ route('ingredients.edit', $item->id_code) }}">
                                                <i class="fas fa-pencil-alt fa-1x fa-lg" aria-hidden="true"></i>
                                            </a>

                                            {!! Form::open(['method' => 'DELETE','route' => ['ingredients.destroy', $item->id_code],'style'=>'display:inline']) !!}

                                            {{-- {!! Form::button('<span class="fa fa-minus-circle fa-1x fa-lg"></span>', ['id' => '', 'class' => 'btn btn-danger btn-xs buttonDelete']) !!} --}}

                                            <button type="submit" class="btn btn-xs btn-outline-danger buttonDelete"
                                                    onclick="return confirm('Are you sure to delete this item?')">
                                                <span class="fa fa-minus-circle fa-1x fa-lg"></span>
                                            </button>
                                            {!! Form::close() !!}
                                            @endif
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

@endsection
