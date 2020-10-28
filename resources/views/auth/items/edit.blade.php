@extends('adminlte::page')

@section ('title_prefix', $title.' -')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card card-mini">
                <div class="card-header">
                    <h1 class="m0 text-dark card-title text-xl">
                        Edit {{$title}}
                    </h1>
                    <div class="card-action">
                        <a href="{{ url('admin/items?cat='.$select_category) }}">
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

                    {!! Form::model($item, ['method' => 'PATCH','route' => ['items.update', $item->id_code], 'enctype' => 'multipart/form-data'] ) !!}


                    <div class="row">
                        <div class="col-xs-6 col-md-12">
                            <div class="form-group">
                                <label for="structure">Tipologia</label>
                                <select class="form-control" name="category_id" id="item_category">
                                    <option value="">--- Scegli ---</option>
                                    @foreach($item_categories as $item_category)
                                        <option
                                            value="{{$item_category->id_code}}" {{ $item_category->id_code == $item->category_id ? 'selected="selected"' : '' }}>
                                            {{$item_category->name_it}}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="id">Id</label>
                                {!! Form::text('id', null, array('placeholder' => 'id','class' => 'form-control', 'id' => 'id')) !!}
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

                            <div class="form-group imageUpload">
                                <label for="image">Image</label>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <a id="cover" data-input="thumbnail" data-preview="cover_preview"
                                           class="btn btn-secondary">
                                            <i class="fa fa-picture-o"></i> Choose
                                        </a>
                                        </span>
                                    {!! Form::text('cover', null, array('placeholder' => 'Image','class' => 'form-control file-src','id' => 'thumbnail')) !!}

                                </div>

                                <img id="cover_preview" style="max-height:100px;">
                                <script>$('#cover').filemanager('image', '', false);</script>

                            </div>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="structure">Struttura</label>
                                <select class="form-control" name="structure_id">
                                    <option value="">--- Scegli ---</option>
                                    @foreach($structures as $structure)
                                        <option
                                            value="{{$structure->id_code}}" {{ $structure->id_code == $item->structure_id ? 'selected="selected"' : '' }}>
                                            {{$structure->name}}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="town">View</label>
                                <select class="form-control" name="view">
                                    <option value="">--- Scegli ---</option>
                                    <option
                                        value="ingredients" {{ $item->view=='ingredients' ? 'selected="selected"' : '' }}>
                                        Ingredienti
                                    </option>
                                    <option
                                        value="description" {{  $item->view =='description'? 'selected="selected"' : '' }}>
                                        Descrizione
                                    </option>
                                    <option
                                        value="empty" {{  $item->view =='empty'? 'selected="selected"' : '' }}>
                                        Vuoto
                                    </option>
                                </select>
                            </div>
                        </div>


                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Price</label>
                                {!! Form::text('price', null, array('placeholder' => 'Price','class' => 'form-control')) !!}
                            </div>
                        </div>


                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Visible</label>
                                <input type="hidden" name="visible" value="0">
                                {!! Form::checkbox('visible',1, $checkedVisible, array('class' => 'form-control')) !!}
                            </div>
                        </div>
                    </div>

                    <div class="row  ingredients optional">
                        <div class="col-xs-12 col-md-12">
                            <div class="form-group">
                                <label for="name">Ingredienti</label>

                                <select id="ingredients-selected" multiple="multiple" name="ingredients[]">
                                    @foreach($ingredients_selected as $ing)
                                        <option value="{{$ing->id_code}}" {{!isset($ing->selected) ? 'selected="selected"' : '' }}>
                                            {{$ing->name_it}}
                                        </option>
                                    @endforeach
                                </select>

                            </div>
                        </div>

                    </div>

                    <div class="row allergens optional">
                        <div class="col-xs-12 col-md-12">
                            <div class="form-group">
                                <label for="name">Allergeni</label>

                                <select id="allergens-selected" multiple="multiple" name="allergens[]">
                                    @foreach($allergens_selected as $all)
                                        <option
                                            value="{{$all->id_code}}" {{!isset($all->selected) ? 'selected="selected"' : '' }}>
                                            {{$all->name_it}}
                                        </option>
                                    @endforeach
                                </select>

                            </div>
                        </div>

                    </div>

                    <div class="row features optional">
                        <div class="col-xs-12 col-md-12">
                            <div class="form-group">
                                <label for="name">Caratteristiche</label>

                                <select id="features-selected" multiple="multiple" name="features[]">
                                    @foreach($features_selected as $fea)
                                        <option
                                            value="{{$fea->id_code}}" {{!isset($fea->selected) ? 'selected="selected"' : '' }}>
                                            {{$fea->name_it}}
                                        </option>
                                    @endforeach
                                </select>

                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-md-3 winery optional">
                            <div class="form-group">
                                <label for="id">Cantina</label>
                                {!! Form::text('wine_winery', null, array('placeholder' => 'Winery','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group  year optional">
                                <label for="id">Year</label>
                                {!! Form::text('wine_year', null, array('placeholder' => 'Year','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group winetype optional">
                                <label for="id">Tipo</label>
                                <select class="form-control" name="wine_type">
                                    <option value="">--- Scegli ---</option>
                                    <option value="bianco" {{ $item->wine_type == "bianco" ? 'selected="selected"' : ''}} >Bianco</option>
                                    <option value="rosso" {{ $item->wine_type == "rosso" ? 'selected="selected"' : ''}} >Rosso</option>
                                    <option value="rose" {{ $item->wine_type == "rose" ? 'selected="selected"' : ''}} >Rosè</option>
                                    <option value="prosecco" {{ $item->wine_type == "prosecco" ? 'selected="selected"' : ''}} >Prosecco</option>
                                    <option value="champagne" {{ $item->wine_type == "champagne" ? 'selected="selected"' : ''}} >Champagne</option>
                                    <option value="moscato" {{ $item->wine_type == "moscato" ? 'selected="selected"' : ''}} >Moscato</option>
                                    <option value="spumante" {{ $item->wine_type == "spumante" ? 'selected="selected"' : ''}} >Spumante</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group winedoc optional">
                                <label for="id">Doc</label>
                                {!! Form::text('wine_doc', null, array('placeholder' => 'Doc','class' => 'form-control')) !!}
                            </div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-xs-6 col-md-4 format optional">
                            <div class="form-group">
                                <label for="id">Format</label>
                                <select class="form-control" name="format">
                                    <option value="">--- Scegli ---</option>
                                    @foreach($formats as $format)
                                        <option
                                            value="{{$format->id_code}}" {{ $format->id_code == $item->format ? 'selected="selected"' : '' }}>
                                            {{$format->name_it}}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-4 vol optional">
                            <div class="form-group">
                                <label for="id">Regione</label>
                                {!! Form::text('wine_region', null, array('placeholder' => 'Region','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-4 vol optional">
                            <div class="form-group">
                                <label for="id">Vol</label>
                                {!! Form::text('vol', null, array('placeholder' => 'Vol %','class' => 'form-control')) !!}
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
<script
    src='https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=hohsbo3zqb8d3y3c1i7323r4ite25f3mnjzg4imjf7zknhxa'></script>
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
