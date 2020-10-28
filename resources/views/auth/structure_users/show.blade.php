@extends('adminlte::page')

@section ('title_prefix', 'User Link')

@section('content')
    <div class="row">
        <div class="card card-mini">
            <div class="card-header">
                <h1 class="m0 text-dark card-title text-xl">
                    {{$item->id}}
                </h1>
                <div class="card-action">
                    <a href="{{ route('structure_users.edit',$item->id) }}">
                        <i class="fas fa-pencil-alt fa-3x fa-fw" aria-hidden="true"></i>
                    </a>
                    <a href="{{ route('structure_users.index') }}">
                        <i class="fas fa-arrow-circle-left fa-3x fa-fw" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
            <div class="card-body">
                <div class="row mb-5">


                    <div class="col-md-6 col-sm-12">
                        <div class="section">
                            <div class="section-title"><h3>User</h3></div>
                            <div class="section-body">
                                <label class="control-label">ID:</label> {{ $item->user->id }}
                                <br/>
                                <label class="control-label">Name</label> {{ $item->user->name }}

                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6">
                        <div class="section-title"><h3>Structure</h3></div>
                        <div class="section-body">
                            <label class="control-label">ID:</label> {{ $item->structure->id }}
                            <br/>
                            <label class="control-label">Name</label> {{ $item->structure->name }}

                        </div>
                    </div>

                </div>


            </div>
        </div>

    </div>
@endsection
