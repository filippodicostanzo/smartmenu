@extends('adminlte::page')

@section ('title_prefix', 'Sights - ')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card card-mini">
                <div class="card-header">
                    <h1 class="m0 text-dark card-title text-xl">
                        Create New Role
                    </h1>
                    <div class="card-action">
                        <a href="{{ route('structure_users.index') }}">
                            <i class="fas fa-arrow-circle-left fa-3x fa-fw" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <div class="card-body">

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> There were some problems with your input.<br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    {!! Form::open(array('route' => 'structure_users.store','method'=>'POST', 'enctype' => 'multipart/form-data')) !!}

                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="name">User</label>
                                <select class="form-control" name="user_id">
                                    <option value="">--- Scegli ---</option>
                                    @foreach($users as $user)
                                        <option value="{{$user->id}}">{{$user->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="name">Structure</label>
                                <select class="form-control" name="structure_id">
                                    <option value="">--- Scegli ---</option>
                                    @foreach($structures as $structure)
                                        <option value="{{$structure->id_code}}">{{$structure->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>



                    </div>


                </div>


                <div class="row padding">
                    <div class="col-md-12 col-xs-12 center">
                        <div class="form-group">
                            <!--
                            <input type="submit" value="Save" class="submit" name="submit" id="btn-structures" />
                            -->
                            <button type="submit" class="btn btn-primary btn-lg btn-block">
                                <i class="fa fa-floppy-o" aria-hidden="true"></i> Save
                            </button>
                        </div>
                    </div>
                </div>

                {!! Form::close() !!}
            </div>
        </div>
    </div>
    </div>

@endsection










