@extends('backpack::layout')

@section('content-header')
<section class="content-header">
    <h1>
        <span class="text-capitalize">{{ $crud->entity_name_plural }}</span>
        <small>{{ ucfirst(trans('backpack::crud.preview')).' '.$crud->entity_name }}.</small>
    </h1>
    <ol class="breadcrumb">
        <li><a
                href="{{ url(config('backpack.base.route_prefix'), 'dashboard') }}">{{ trans('backpack::crud.admin') }}</a>
        </li>
        <li><a href="{{ url($crud->route) }}" class="text-capitalize">{{ $crud->entity_name_plural }}</a></li>
        <li class="active">{{ trans('backpack::crud.preview') }}</li>
    </ol>
</section>
@endsection

@section('content')
@if ($crud->hasAccess('list'))
<a href="{{ url($crud->route) }}" class="hidden-print"><i class="fa fa-angle-double-left"></i>
    {{ trans('backpack::crud.back_to_all') }} <span>{{ $crud->entity_name_plural }}</span></a><br><br>
@endif

<!-- Default box -->
<div class="box">
    <div class="box-header with-border">
        <span class="pull-right m-l-20 m-r-20 m-t-5"><a href="javascript: window.print();"><i
                    class="fa fa-print"></i></a></span>

        @if ($crud->model->translationEnabled())
        <!-- Single button -->
        <div class="btn-group pull-right">
            <button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                {{trans('backpack::crud.language')}}:
                {{ $crud->model->getAvailableLocales()[$crud->request->input('locale')?$crud->request->input('locale'):App::getLocale()] }}
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                @foreach ($crud->model->getAvailableLocales() as $key => $locale)
                <li><a href="{{ url($crud->route.'/'.$entry->getKey()) }}?locale={{ $key }}">{{ $locale }}</a></li>
                @endforeach
            </ul>
        </div>
        <h3 class="box-title" style="line-height: 30px;">{{ trans('backpack::crud.preview') .' '. $crud->entity_name }}
        </h3>
        @else
        <h3 class="box-title">{{ trans('backpack::crud.preview') .' '. $crud->entity_name }}</h3>
        @endif
    </div>
    <div class="box-body no-padding">
        <table class="table table-striped table-bordered">
            <tbody>

                <tr>
                    <td><strong>ID</strong></td>
                    <td>{{ $entry->id }}</td>
                </tr>
                <tr>
                    <td><strong>Status</strong></td>
                    <td>{{ $entry->status }}</td>
                </tr>
                <tr>
                    <td><strong>Code</strong></td>
                    <td>{{ $entry->code}}</td>
                </tr>
                <tr>
                    <td><strong>Total Price</strong></td>
                    <td>{{ $entry->currency->symbol . $entry->total_price }}</td>
                </tr>
                <tr>
                    <td><strong>Coupon</strong></td>
                    <td>{{ isset($entry->coupon->code) ? $entry->coupon->code : 'No' }}</td>
                </tr>
                <tr>
                    <td><strong>Name</strong></td>
                    <td>{{ $entry->first_name . ' ' . $entry->last_name }}</td>
                </tr>
                <tr>
                    <td><strong>Payment Method</strong></td>
                    <td>{{ $entry->payment_method }}</td>
                </tr>
                <tr>
                    <td><strong>Created at</strong></td>
                    <td>{{ $entry->created_at->format('Y-m-d H:i') }}</td>
                </tr>
                <tr>
                    <td colspan="2" style="color: #ff9200;"><strong>Delivery:</strong></td>
                </tr>
                <tr>
                    <td><strong>Price</strong></td>
                    <td>{{ $entry->currency->symbol . $entry->delivery->price }}</td>
                </tr>
                <tr>
                    <td><strong>Name</strong></td>
                    <td>{{ $entry->delivery->first_name . ' ' . $entry->delivery->last_name }}</td>
                </tr>
                <tr>
                    <td><strong>Street</strong></td>
                    <td>{{ $entry->delivery->street_address }}</td>
                </tr>
                <tr>
                    <td><strong>Apt/Suite Number</strong></td>
                    <td>{{ $entry->delivery->apt_suite_number }}</td>
                </tr>
                <tr>
                    <td><strong>Company Name</strong></td>
                    <td>{{ $entry->delivery->company_name }}</td>
                </tr>
                <tr>
                    <td><strong>Zip Code</strong></td>
                    <td>{{ $entry->delivery->zip_code }}</td>
                </tr>
                <tr>
                    <td><strong>City</strong></td>
                    <td>{{ $entry->delivery->city }}</td>
                </tr>
                <tr>
                    <td><strong>Country</strong></td>
                    <td>{{ $entry->delivery->country->name }}</td>
                </tr>
                <tr>
                    <td><strong>State</strong></td>
                    <td>{{ $entry->delivery->state }}</td>
                </tr>
                <tr>
                    <td><strong>Phone</strong></td>
                    <td>{{ $entry->delivery->phone}}</td>
                </tr>
                <tr>
                    <td><strong>Instructions</strong></td>
                    <td>{{ $entry->delivery->instructions}}</td>
                </tr>

                @foreach($entry->stories as $key => $story)
                <tr>
                    <td colspan="2" style="color: #ff9200;"><strong>Story #{{ ++$key }}:</strong></td>
                </tr>
                <tr>
                    <td><strong>ID</strong></td>
                    <td>{{ $story->id}}</td>
                </tr>
                <tr>
                    <td><strong>Status</strong></td>
                    <td>{{ $story->pivot->status}}</td>
                </tr>
                <tr>
                    <td><strong>Code</strong></td>
                    <td>{{ $story->pivot->code}}</td>
                </tr>
                <tr>
                    <td><strong>Name</strong></td>
                    <td>{{ $story->name}}</td>
                </tr>
                <tr>
                    <td><strong>Price</strong></td>
                    <td>{{ $entry->currency->symbol . $story->{'price_'.strtolower($entry->currency->code)} }}</td>
                </tr>
                <tr>
                    <td><strong>Character's Name</strong></td>
                    <td>{{ $story->pivot->name}}</td>
                </tr>
                <tr>
                    <td><strong>Gender</strong></td>
                    <td>{{ $story->pivot->gender}}</td>
                </tr>
                <tr>
                    <td><strong>Font Style</strong></td>
                    <td>{{ $story->pivot->font_style}}</td>
                </tr>
                <tr>
                    <td><strong>Character Info</strong></td>
                    <td>{{ $story->pivot->character_info}}</td>
                </tr>
                <tr>
                    <td><strong>Dedication</strong></td>
                    <td>{{ $story->pivot->dedication}}</td>
                </tr>
                <tr>
                    <td><strong>Dedication Image</strong></td>
                    <td><img src="{{ asset($story->pivot->dedication_picture) }}" alt="" width="500px"></td>
                </tr>
                @endforeach

                @if ($crud->buttons->where('stack', 'line')->count())
                <tr>
                    <td><strong>{{ trans('backpack::crud.actions') }}</strong></td>
                    <td>
                        @include('crud::inc.button_stack', ['stack' => 'line'])
                    </td>
                </tr>
                @endif
            </tbody>
        </table>
    </div><!-- /.box-body -->
</div><!-- /.box -->

@endsection


@section('after_styles')
<link rel="stylesheet" href="{{ asset('vendor/backpack/crud/css/crud.css') }}">
<link rel="stylesheet" href="{{ asset('vendor/backpack/crud/css/show.css') }}">
@endsection

@section('after_scripts')
<script src="{{ asset('vendor/backpack/crud/js/crud.js') }}"></script>
<script src="{{ asset('vendor/backpack/crud/js/show.js') }}"></script>
@endsection