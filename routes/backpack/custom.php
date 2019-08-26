<?php

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => ['web', config('backpack.base.middleware_key', 'admin')],
    'namespace'  => 'App\Http\Controllers\Admin',
], function () { // custom admin routes
    CRUD::resource('coupons', 'CouponsCrudController');
    CRUD::resource('birthdays', 'BirthdaysCrudController');
    CRUD::resource('currencies', 'CurrencyCrudController');
    CRUD::resource('stories', 'StoriesCrudController');
    CRUD::resource('categories', 'CategoryCrudController');
    CRUD::resource('values', 'StoriesValuesCrudController');
    CRUD::resource('countries_delivery', 'CountriesDeliveryCrudController');
    CRUD::resource('orders', 'OrdersCrudController');
    CRUD::resource('contacts', 'ContactUsCrudController');
    CRUD::resource('subscriptions', 'SubscriptionCrudController');
    CRUD::resource('emails', 'EmailCrudController');
}); // this should be the absolute last line of this file