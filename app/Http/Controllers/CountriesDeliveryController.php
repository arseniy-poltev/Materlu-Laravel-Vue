<?php

namespace App\Http\Controllers;

use App\Models\CountriesDelivery;
use Illuminate\Http\Request;

class CountriesDeliveryController extends Controller
{
    public function getDelivery(Request $request)
    {
        $country = CountriesDelivery::find($request->country_id);

        if($country) {
            $country->delivery_days = get_delivery_days($country->id);

            return response()->json([
                'status' => true,
                'data' => $country
            ]);
        }

        return response()->json([
            'status' => false,
        ]);
    }
    public function setDelivery(Request $request)
    {
        $country = CountriesDelivery::find($request->country_id);

        if($country) {
            session()->put('order.delivery_country_id', $country->id);
            session()->save();

            $country->delivery_days = get_delivery_days($country->id);
            $country->price = get_basket_delivery_price(true);

            return response()->json([
                'status' => true,
                'data' => $country,
                'total_price' => get_basket_total_price(true),
            ]);
        }

        return response()->json([
            'status' => false,
        ]);
    }
}
