@extends('adminlte::page')

@section ('title_prefix', $title.' -')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card card-mini">
                <div class="card-header">
                    <h1 class="m0 text-dark card-title text-xl">
                        Create New {{$title}}
                    </h1>
                    <div class="card-action">
                        <a href="{{ route('qr_code.index') }}">
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

                    {!! Form::open(array('route' => 'qr_code.store','method'=>'POST', 'enctype' => 'multipart/form-data')) !!}


                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="id">Id</label>
                                {!! Form::text('id', null, array('placeholder' => 'id','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="structure">Struttura</label>
                                <select class="form-control" name="structure_id" id="structure-id-menu">
                                    <option value="">--- Scegli ---</option>
                                    @foreach($structures as $structure)
                                        <option value="{{$structure->id_code}}">{{$structure->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Visible</label>
                                <input type="hidden" name="visible" value="0">
                                {!! Form::checkbox('visible',1, false, array('class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Password Enable</label>
                                <input type="hidden" name="password_enable" value="0">
                                {!! Form::checkbox('password_enable',1, false, array('class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Set Password</label>
                                {!! Form::password('password', array('placeholder' => 'Password','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Daily Password</label>
                                <input type="hidden" name="password_daily" value="0">
                                {!! Form::checkbox('password_daily',1, false, array('class' => 'form-control')) !!}
                            </div>
                        </div>


                    </div>
                    @role('superadministrator')
                    <div class="row">
                        <div class="col-xs-4 col-md-4">
                            <div class="form-group">
                                <label for="name">Attivo</label>
                                <input type="hidden" name="active" value="0">
                                {!! Form::checkbox('active',1, false, array('class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-4 col-md-4">
                            <div class="form-group">
                                <label for="id">Inizio Attivazione</label>
                                {!! Form::text('activation_start', null, array('placeholder' => 'id','class' => 'form-control', 'id'=>'datepicker-start')) !!}
                            </div>
                        </div>

                        <div class="col-xs-4 col-md-4">
                            <div class="form-group">
                                <label for="id">Fine Attivazione</label>
                                {!! Form::text('activation_end', null, array('placeholder' => 'id','class' => 'form-control', 'id'=>'datepicker-end')) !!}
                            </div>
                        </div>

                    </div>
                    @endrole

                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <div class="form-group">
                                <label for="name">Menu</label>
                                <div class="menus-container">

                                    <select id="menus-selected" multiple="multiple" name="menus[]">
                                        {{-- @foreach($items as $item)
                                             <option value="{{$item->id_code}}" data-type="{{$item->category_id}}">{{$item->name_it}}</option>
                                         @endforeach--}}
                                    </select>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <div class="form-group">
                                <label for="name">Template</label>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-12">
                            <div class="form-group">

                                @foreach($templates as $template)
                                    <label class="m-3">
                                        <input type="radio" name="template_id"
                                               value="{{$template->id_code}}" {{$loop->iteration==1?'checked':'' }}>
                                        <img src="{{$template->image}}">
                                    </label>
                                @endforeach
                            </div>
                        </div>
                    </div>

                        <div class="row">
                            <div class="col-md-6 col-xs-12">
                                <div class="form-group">
                                    <label for="desc">Note En:</label>
                                    {!! Form::textarea('notes_en', null, array('placeholder' => 'Note En','class' => 'form-control', 'id' => 'notes_en')) !!}
                                </div>
                            </div>

                            <div class="col-md-6 col-xs-12">
                                <div class="form-group">
                                    <label for="desc">Note It:</label>
                                    {!! Form::textarea('notes_it', null, array('placeholder' => 'Note It','class' => 'form-control', 'id' => 'notes_it')) !!}
                                </div>
                            </div>
                        </div>


                    <div class="row padding">
                        <div class="col-md-12 col-xs-12 center">
                            <div class="form-group">
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

