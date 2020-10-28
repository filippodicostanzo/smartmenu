@extends('adminlte::page')

@section ('title_prefix', 'Structure - ')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card card-mini">
                <div class="card-header">
                    <h1 class="m0 text-dark card-title text-xl">
                        Edit {{$item->name}}
                    </h1>
                    <div class="card-action">
                        <a href="{{ route('structures.index') }}">
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

                    {!! Form::model($item, ['method' => 'PATCH','route' => ['structures.update', $item->id_code], 'enctype' => 'multipart/form-data'] ) !!}

                    <div class="row">
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="id">Id</label>
                                {!! Form::text('id', null, array('placeholder' => 'id','class' => 'form-control', $user->hasRole('superadministrator') ? '': 'readonly' )) !!}
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Name</label>
                                {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                            </div>
                        </div>


                        <div class="col-xs-6 col-md-3">
                            <div class="form-group imageUpload">
                                <label for="image">Logo</label>
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <a id="logo" data-input="logo_thumbnail" data-preview="logo_preview"
                                           class="btn btn-secondary">
                                            <i class="fa fa-picture-o"></i> Choose
                                        </a>
                                        </span>
                                    {!! Form::text('logo', null, array('placeholder' => 'Image','class' => 'form-control file-src','id' => 'logo_thumbnail')) !!}
                                </div>
                                <img id="logo_preview" style="max-height:100px;">
                                <script>$('#logo').filemanager('image', '', false);</script>
                            </div>
                        </div>

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




                    </div>


                    <div class="row">

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="address">Address</label>
                                {!! Form::text('address', null, array('placeholder' => 'Address','class' => 'form-control')) !!}
                            </div>
                        </div>


                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="town">Town</label>
                                <select class="form-control" name="town_id">
                                    <option value="">--- Scegli ---</option>
                                    @foreach($towns as $town)
                                        <option
                                            value="{{ $town->id_code }}" {{ $item->town_id == $town->id_code ? 'selected="selected"' : '' }}>
                                            {{ $town->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="latitude">Latitude</label>
                                {!! Form::text('latitude', null, array('placeholder' => 'Latitude','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="longitude">Longitude</label>
                                {!! Form::text('longitude', null, array('placeholder' => 'Longitude','class' => 'form-control')) !!}
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="town">Categories</label>
                                <select class="form-control" name="category_id">
                                    <option value="">--- Scegli ---</option>
                                    @foreach($categories as $cat)
                                        <option
                                            value="{{ $cat->id_code }}" {{ $item->category_id == $cat->id_code ? 'selected="selected"' : '' }}>
                                            {{ $cat->name_it }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        @role('superadministrator')
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="subcategories">Subcategories</label>
                                <select class="form-control" name="subcategories[]" multiple>
                                    <option value="">--- Nessuno ---</option>
                                    @foreach($categories as $cat)
                                        <option
                                            value="{{$cat->id_code}}" {{Str::contains($item->subcategories, $cat->id_code) !== false    ? 'selected="selected"' : '' }}>
                                            {{$cat->name_it}}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        @endrole

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="name">Visible</label>
                                <input type="hidden" name="visible" value="0">
                                {!! Form::checkbox('visible',1, $item->visible, array('class' => 'form-control')) !!}
                            </div>
                        </div>

                        @role('superadministrator')
                            <div class="col-xs-6 col-md-3">
                                <div class="form-group">
                                    <label for="name">Sponsored</label>
                                    <input type="hidden" name="sponsored" value="0">
                                    {!! Form::checkbox('sponsored',1, $item->sponsored, array('class' => 'form-control')) !!}
                                </div>
                            </div>
                        @endrole
                    </div>


                    <div class="row">
                        <div class="col-xs-6 col-md-4">
                            <div class="form-group">
                                <label for="telephone">Telephone</label>
                                {!! Form::text('telephone', null, array('placeholder' => 'Telephone','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-4">
                            <div class="form-group">
                                <label for="email">Email</label>
                                {!! Form::text('email', null, array('placeholder' => 'Email','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-6 col-md-4">
                            <div class="form-group">
                                <label for="website">Website</label>
                                {!! Form::text('website', null, array('placeholder' => 'Web Site','class' => 'form-control')) !!}
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="ticket">Tripadvisor</label>
                                {!! Form::text('tripadvisor', null, array('placeholder' => 'Tripadvisor','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="facebook">Facebook</label>
                                {!! Form::text('facebook', null, array('placeholder' => 'Facebook','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="facebook_album">Facebook Album</label>
                                {!! Form::text('facebook_album', null, array('placeholder' => 'Facebook Album','class' => 'form-control')) !!}
                            </div>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <div class="form-group">
                                <label for="instagram">Instagram</label>
                                {!! Form::text('instagram', null, array('placeholder' => 'Instagram','class' => 'form-control')) !!}
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 col-xs-12">
                            <div class="form-group">
                                <label for="desc">Description En:</label>
                                {!! Form::textarea('description_en', null, array('placeholder' => 'Description En','class' => 'form-control', 'id' => 'description_en')) !!}
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12 col-xs-12">
                            <div class="form-group">
                                <label for="desc">Description It:</label>
                                {!! Form::textarea('description_it', null, array('placeholder' => 'Description It','class' => 'form-control', 'id' => 'description_it')) !!}
                            </div>
                        </div>
                    </div>


                    <div class="row padding">
                        <div class="col-md-12 col-xs-12 center">
                            <div class="form-group">
                                <label for="longitude">Select Images</label>
                                <div class="input-group-btn">
                                    <a id="lfm" data-input="images" data-preview="holder"
                                       class="btn btn-secondary btn-lg btn-block">
                                        <i class="fa fa-picture-o"></i> Choose
                                    </a>


                                    {{ Form::hidden('images', $item->images, array('id' => 'images')) }}
                                    <ul id="holder" style="margin-top:15px">

                                        @foreach(explode(',',$item->images) as $row)
                                            <li><img src="{{ $row }}" id="thumbnails"><span class="cancel">X</span></li>

                                        @endforeach

                                    </ul>

                                    <script>
                                        $('#lfm').filemanager('image', '', true);

                                        $('#holder').sortable(
                                            {
                                                update: function () {

                                                    let value = '';

                                                    $("#holder > li").each(function () {
                                                        value += $(this).children("img").attr('src') + ','
                                                    });

                                                    value = value.replace(/,\s*$/, "");
                                                    $('#images').val(value);
                                                }
                                            }
                                        );


                                    </script>
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









