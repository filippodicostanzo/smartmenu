@extends('adminlte::page')

@section ('title_prefix', $title.' -')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card card-mini">
                <div class="card-header">
                    <h1 class="m0 text-dark card-title text-xl">
                        Create New {{ __('titles.'.$title) }}
                    </h1>
                    <div class="card-action">
                        <a href="{{ route('formats.index') }}">
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

                    {!! Form::open(array('route' => 'formats.store','method'=>'POST', 'enctype' => 'multipart/form-data')) !!}

                    <div class="row">
                        <div class="col-xs-6 col-md-4">
                            <div class="form-group">
                                <label for="id">Id</label>
                                {!! Form::text('id', null, array('placeholder' => 'id','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-4">
                            <div class="form-group">
                                <label for="name">Name En</label>
                                {!! Form::text('name_en', null, array('placeholder' => 'Name En','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-4">
                            <div class="form-group">
                                <label for="name">Name It</label>
                                {!! Form::text('name_it', null, array('placeholder' => 'Name It','class' => 'form-control')) !!}
                            </div>
                        </div>



                    </div>
                    <div class="row">

                        <div class="col-xs-6 col-md-6">
                            <div class="form-group imageUpload">
                                <label for="image">Icon</label>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <a id="icon" data-input="icon_thumbnail" data-preview="icon_preview"
                                           class="btn btn-secondary">
                                            <i class="fa fa-picture-o"></i> Choose
                                        </a>
                                        </span>
                                    {!! Form::text('icon', null, array('placeholder' => 'Image','class' => 'form-control file-src','id' => 'icon_thumbnail')) !!}
                                </div>
                                <img id="icon_preview" style="max-height:100px;">
                                <script>$('#icon').filemanager('image', '', false);</script>
                            </div>
                        </div>


                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="name">Visible</label>
                                <input type="hidden" name="visible" value="0">
                                {!! Form::checkbox('visible',1, false, array('class' => 'form-control')) !!}
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

<script
    src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
    crossorigin="anonymous"></script>
<script
    src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
    integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E="
    crossorigin="anonymous"></script>
<script src="/vendor/laravel-filemanager/js/stand-alone-button.js"></script>
