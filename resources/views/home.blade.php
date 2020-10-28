@extends('adminlte::page')

@section('title', 'Menu Digitale')

@section('content_header')
    <h1 class="m-0 text-dark">Dashboard</h1>
@stop

@section('content')

    @role('superadministrator')

    <div class="row">
        <!-- numTown -->
        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-yellow-light" href="{{ url('/admin/towns') }}">
                <div class="card-body">
                    <i class="icon fa fa-building fa-4x"></i>
                    <div class="content">
                        <div class="title">{{ __('titles.towns') }}</div>
                        <div class="value">{{$counter['towns']}}</div>
                    </div>
                </div>
            </a>
        </div>


        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-orange-light" href="{{ url('/admin/structure_categories') }}">
                <div class="card-body">
                    <i class="icon fa fa-sitemap fa-4x"></i>
                    <div class="content">
                        <div class="title">Categorie</div>
                        <div class="value">{{$counter['structure_categories']}}</div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-blue-light" href="{{ url('/admin/structures') }}">
                <div class="card-body">
                    <i class="icon fa fa-utensils fa-4x"></i>
                    <div class="content">
                        <div class="title">Strutture</div>
                        <div class="value">{{$counter['structures']}}</div>
                    </div>
                </div>
            </a>
        </div>

    </div>
    @endrole

    <div class="row">
        <hr/>
    </div>

    <div class="row">
        <!-- numCategoryStructure -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-yellow-light" href="{{ url('/admin/ingredients') }}">
                <div class="card-body">
                    <i class="icon fa fa-stroopwafel fa-4x"></i>
                    <div class="content">
                        <div class="title">Ingredienti</div>
                        <div class="value">{{$counter['ingredients']}}</div>
                    </div>
                </div>
            </a>
        </div>


        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-orange-light" href="{{ url('/admin/allergens') }}">
                <div class="card-body">
                    <i class="icon fas fa-fish fa-4x"></i>
                    <div class="content">
                        <div class="title">Allergeni</div>
                        <div class="value">{{$counter['allergens']}}</div>
                    </div>
                </div>
            </a>
        </div>

        <!-- numTown -->


        <!-- numTown -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-blue-light" href="{{ url('/admin/features') }}">
                <div class="card-body">
                    <i class="icon fas fa-cookie-bite fa-4x"></i>
                    <div class="content">
                        <div class="title">Caratteristiche</div>
                        <div class="value">{{$counter['features']}}</div>
                    </div>
                </div>
            </a>
        </div>

        <!-- numTown -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-green-light" href="{{ url('/admin/formats') }}">
                <div class="card-body">
                    <i class="icon fas fa-wine-bottle fa-4x"></i>
                    <div class="content">
                        <div class="title">Formati</div>
                        <div class="value">{{$counter['formats']}}</div>
                    </div>
                </div>
            </a>
        </div>
    </div>


    <div class="row">
        <hr/>
    </div>


    <div class="row">

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-yellow-light" href="{{ url('/admin/item_categories') }}">
                <div class="card-body">
                    <i class="icon fas fa-clipboard-list fa-4x"></i>
                    <div class="content">
                        <div class="title">Categorie</div>
                        <div class="value">{{$counter['item_categories']}}</div>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-orange-light" href="{{ url('/admin/items') }}">
                <div class="card-body">
                    <i class="icon fa fa-hamburger fa-4x"></i>
                    <div class="content">
                        <div class="title">Elementi</div>
                        <div class="value">{{$counter['items']}}</div>
                    </div>
                </div>
            </a>
        </div>


        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-blue-light" href="{{ url('/admin/menus') }}">
                <div class="card-body">
                    <i class="icon fas fa-scroll fa-4x"></i>
                    <div class="content">
                        <div class="title">Menu</div>
                        <div class="value">{{$counter['menus']}}</div>
                    </div>
                </div>
            </a>
        </div>

        <!-- numTown -->


        <!-- numTown -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-green-light" href="{{ url('/admin/qr_code') }}">
                <div class="card-body">
                    <i class="icon fas fa-qrcode fa-4x"></i>
                    <div class="content">
                        <div class="title">QR Code</div>
                        <div class="value">{{$counter['qr_code']}}</div>
                    </div>
                </div>
            </a>
        </div>

    </div>

    @role('superadministrator')

    <div class="row">
        <hr/>
    </div>

    <div class="row">

        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-yellow-light" href="{{ url('/admin/users') }}">
                <div class="card-body">
                    <i class="icon fa fa-users fa-4x"></i>
                    <div class="content">
                        <div class="title">Users</div>
                        <div class="value">{{$counter['users']}}</div>
                    </div>
                </div>
            </a>
        </div>


        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-orange-light" href="{{ url('/admin/roles') }}">
                <div class="card-body">
                    <i class="icon fas fa-user-tag fa-4x"></i>
                    <div class="content">
                        <div class="title">Roles</div>
                        <div class="value">{{$counter['roles']}}</div>
                    </div>
                </div>
            </a>
        </div>

        <!-- numTown -->


        <!-- numTown -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-blue-light" href="{{ url('/admin/structure_users') }}">
                <div class="card-body">
                    <i class="icon fas fa-link fa-4x"></i>
                    <div class="content">
                        <div class="title">User Link</div>
                        <div class="value">{{$counter['structure_users']}}</div>
                    </div>
                </div>
            </a>
        </div>

        <!-- numTown -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
            <a class="card card-banner card-green-light" href="{{ url('/admin/templates') }}">
                <div class="card-body">
                    <i class="icon fas fa-image fa-4x"></i>
                    <div class="content">
                        <div class="title">Templates</div>
                        <div class="value">{{$counter['templates']}}</div>
                    </div>
                </div>
            </a>
        </div>

    </div>
    @endrole




@stop
