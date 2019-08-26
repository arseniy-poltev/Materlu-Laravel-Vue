<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Http\Request;
use App\Models\Orders;


$locales = get_active_languages_codes();
$locales[] = '';

//added by Xiuna
//web hook url
Route::post('/api/change-book-status', 'WebHookController@changeBookStatus');
Route::post('/api/change-order-status', 'WebHookController@changeOrderStatus');
//---------------

foreach ($locales as $locale) {

    Route::group([
        'middleware' => 'locale',
        'prefix' => $locale,
    ], function () {


        Route::post('currency', function (Request $request) {
            if (in_array($request->input('currency'), get_all_currencies_codes())) {
                return redirect()->back()->withCookie(cookie()->forever('currency', $request->input('currency')));
            }
            return redirect()->back();
        });
        Route::post('category', function (Request $request) {
            //if (in_array($request->input('category'), get_all_categories_names())) {
            //return redirect()->back()->withCookie(cookie()->forever('currency', $request->input('currency')));
            return redirect(u('cuentos', ['category' =>  $request->input('category')]));
            //}
            //return redirect()->back();
        });



        Route::get('customize/{id}/name', 'CustomizeController@showName');
        Route::get('customize/{id}/appearance', 'CustomizeController@showAppearance')->middleware('customize_appearance');
        Route::get('customize/{id}/dedication', 'CustomizeController@showDedication')->middleware('customize_dedication');
        Route::get('customize/{id}/review', 'CustomizeController@showReview')->middleware('customize_review');

        Route::get('order/{id}-{token}', 'OrderController@showReadyOrder')
            ->where(['id' => '^\d+$', 'token' => '^[\d\w]+$']);

        Route::group([
            'middleware' => 'basket_is_not_empty'
        ], function () {
            Route::get('basket', 'BasketController@show');
            Route::get('basket-remove-item/{id}', 'BasketController@removeItem');

            Route::get('checkout', 'OrderController@show');
        });

        Route::get('stripe', 'StripeController@show')->middleware('payment_is_ready');

        Route::group([
            'middleware' => 'payment_is_done'
        ], function () {
            Route::get('payment-success', 'OrderController@showSuccess');
            Route::get('payment-fail', 'OrderController@showFail');
        });

        Route::post('customize/name', 'CustomizeController@storeName');
        Route::post('customize/appearance', 'CustomizeController@storeAppearance');
        Route::post('customize/dedication', 'CustomizeController@storeDedication');
        Route::post('customize/review', 'CustomizeController@storeReview');

        Route::post('birthday', 'BirthdayController@store');
        Route::post('contact-us', 'ContactsController@storeContactUs');
        Route::post('subscribe', 'ContactsController@storeSubscription');

        Route::post('create-story-homepage', 'OrderController@createHomepage');

        Route::post('set-discount', 'OrderController@setDiscount');

        Route::post('get-delivery', 'CountriesDeliveryController@getDelivery');
        Route::post('set-delivery', 'CountriesDeliveryController@setDelivery');

        Route::post('create-order', 'OrderController@store')->middleware('basket_is_not_empty');
        Route::post('pay-order', 'OrderController@pay');
        Route::post('stripe', 'StripeController@create')->middleware('payment_is_ready');

        Route::get('{page}', ['uses' => 'PageController@index'])
            ->where(['page' => '^((?!admin).)*$']);
    });
}