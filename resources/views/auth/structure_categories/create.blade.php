@extends('adminlte::page')

@section ('title_prefix', 'Structure Cateogry - ')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card card-mini">
                <div class="card-header">
                    <h1 class="m0 text-dark card-title text-xl">
                        Create New Structure Category
                    </h1>
                    <div class="card-action">
                        <a href="{{ route('structure_categories.index') }}">
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

                    {!! Form::open(array('route' => 'structure_categories.store','method'=>'POST', 'enctype' => 'multipart/form-data')) !!}

                    <div class="row">
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="id">Id</label>
                                {!! Form::text('id', null, array('placeholder' => 'id','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Name En</label>
                                {!! Form::text('name_en', null, array('placeholder' => 'Name En','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Name It</label>
                                {!! Form::text('name_it', null, array('placeholder' => 'Name It','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Visible</label>
                                <input type="hidden" name="visible" value="0">
                                {!! Form::checkbox('visible',1, false, array('class' => 'form-control')) !!}
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group imageUpload">
                                <label for="image">Cover</label>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <a id="cover" data-input="cover_thumbnail" data-preview="cover_preview"
                                           class="btn btn-secondary">
                                            <i class="fa fa-picture-o"></i> Choose
                                        </a>
                                        </span>
                                    {!! Form::text('cover', null, array('placeholder' => 'Image','class' => 'form-control file-src','id' => 'cover_thumbnail')) !!}
                                </div>
                                <img id="cover_preview" style="max-height:100px;">
                                <script>$('#cover').filemanager('image', '', false);</script>
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
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

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Icon SVG</label>
                                {!! Form::text('icon_svg', null, array('placeholder' => 'Icon SVG','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group imageUpload">
                                <label for="image">Map</label>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <a id="map" data-input="map_thumbnail" data-preview="map_preview"
                                           class="btn btn-secondary">
                                            <i class="fa fa-picture-o"></i> Choose
                                        </a>
                                        </span>
                                    {!! Form::text('map', null, array('placeholder' => 'Image','class' => 'form-control file-src','id' => 'map_thumbnail')) !!}
                                </div>
                                <img id="map_preview" style="max-height:100px;">
                                <script>$('#map').filemanager('image', '', false);</script>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="telephone">Description En:</label>
                                {!! Form::textarea('description_en', null, array('placeholder' => 'Description En','class' => 'form-control', 'id' => 'description_en')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-6">
                            <div class="form-group">
                                <label for="website">Description It:</label>
                                {!! Form::textarea('description_it', null, array('placeholder' => 'Description It','class' => 'form-control', 'id' => 'description_it')) !!}
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

<script
    src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
    crossorigin="anonymous"></script>
<script
    src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"
    integrity="sha256-eGE6blurk5sHj+rmkfsGYeKyZx3M4bG+ZlFyA7Kns7E="
    crossorigin="anonymous"></script>
<script src='https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=hohsbo3zqb8d3y3c1i7323r4ite25f3mnjzg4imjf7zknhxa'></script>
<script src="/vendor/laravel-filemanager/js/stand-alone-button.js"></script>
<script>


    document.addEventListener('DOMContentLoaded', function () {

        const plugins = [
            'advlist autolink lists link image charmap print preview hr anchor pagebreak',
            'searchreplace wordcount visualblocks visualchars code fullscreen',
            'insertdatetime media nonbreaking save table contextmenu directionality',
            'emoticons template paste textcolor colorpicker textpattern',
        ];
        const toolbar = 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media';

        const filebr = function file_browser_call(field_name, url, type, win) {
            var x = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName('body')[0].clientWidth;
            var y = window.innerHeight || document.documentElement.clientHeight || document.getElementsByTagName('body')[0].clientHeight;

            var cmsURL = "/" + 'filemanager?field_name=' + field_name;
            if (type == 'image') {
                cmsURL = cmsURL + "&type=Images";
            } else {
                cmsURL = cmsURL + "&type=Files";
            }
            tinyMCE.activeEditor.windowManager.open({
                file: cmsURL,
                title: 'Filemanager',
                width: x * 0.8,
                height: y * 0.8,
                resizable: "yes",
                close_previous: "no"
            });
        }


        tinymce.init({
            selector: '#description_en',
            plugins: plugins,
            toolbar: toolbar,
            relative_urls: false,
            file_browser_callback: filebr
        });

        tinymce.init({
            selector: '#description_it',
            plugins: plugins,
            toolbar: toolbar,
            relative_urls: false,
            file_browser_callback: filebr
        });

    });
</script>
