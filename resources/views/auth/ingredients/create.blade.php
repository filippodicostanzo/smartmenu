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
                        <a href="{{ route('ingredients.index') }}">
                            <i class="fas fa-arrow-circle-left fa-3x fa-fw" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <div class="card-body">

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> C'è un problema con l'inserimento dei dati.<br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    {!! Form::open(array('route' => 'ingredients.store','method'=>'POST', 'enctype' => 'multipart/form-data')) !!}

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
                                {!! Form::checkbox('visible',1, true, array('class' => 'form-control')) !!}
                            </div>
                        </div>

                    </div>

<!--
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <div class="form-group">
                                <label for="name">Allergeni</label>

                                <select id="allergens-selected" multiple="multiple" name="allergens[]">
                                    @foreach($allergens as $allergen)
                                        <option value="{{$allergen->id_code}}">{{$allergen->name_it}}</option>
                                    @endforeach
                                </select>

                            </div>
                        </div>

                    </div>
-->
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
<script src='https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=hohsbo3zqb8d3y3c1i7323r4ite25f3mnjzg4imjf7zknhxa'></script>

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
