<?php

// Admin Interface Routes
Route::group([
    'namespace'  => 'App\Http\Controllers\Admin',
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => ['web', 'admin'],
    ], function () {
        // Language
        Route::get('language/texts/{lang?}/{file?}', 'LanguageCrudController@showTexts');
        Route::post('language/texts/{lang}/{file}', 'LanguageCrudController@updateTexts');
        CRUD::resource('language', 'LanguageCrudController');
    });
