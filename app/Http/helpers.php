<?php

use Backpack\LangFileManager\app\Models\Language;
use App\Models\Currency;
use Illuminate\Contracts\Routing\UrlGenerator;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Cookie;
use App\Models\Category;

//------------ added by Xiuna 2019/07/17 --------------
if (!function_exists('get_categories')) {
    function get_categories()
    {
        return Category::all();
    }
}
if (!function_exists('get_all_categories_names')) {
    function get_all_categories_names()
    {
        return Category::pluck('name')->all();
    }
}
if (!function_exists('get_first_category')) {
    function get_first_category()
    {
        return Category::get()->first();
    }
}
if (!function_exists('get_category_by_id')) {
    function get_category_by_id($id)
    {

        $category = Category::where('id', $id)->first();

        return $category ? $category->name : 'All';
    }
}

//-----------------------------------------------------

if (!function_exists('get_active_languages')) {
    function get_active_languages()
    {
        return Language::orderBy('lft')->where('active', 1)->get();
    }
}
if (!function_exists('get_active_languages_codes')) {
    function get_active_languages_codes()
    {
        return Language::orderBy('lft')->where('active', 1)->pluck('abbr')->all();
    }
}

if (!function_exists('get_default_language')) {
    function get_default_language()
    {
        return Language::where('default', 1)->first();
    }
}

if (!function_exists('get_language_by_id')) {
    function get_language_by_id($id)
    {
        return Language::where('id', $id)->first();
    }
}

if (!function_exists('get_current_language')) {
    function get_current_language()
    {
        return Language::where('abbr', app()->getLocale())->first();
    }
}

if (!function_exists('get_currencies')) {
    function get_currencies()
    {
        return Currency::orderBy('id')->get();
    }
}

if (!function_exists('get_all_currencies_codes')) {
    function get_all_currencies_codes()
    {
        return Currency::pluck('code')->all();
    }
}

if (!function_exists('get_current_currency')) {
    function get_current_currency()
    {

        $currency = Cookie::get('currency');

        if (!$currency) {

            $currency = Config::get('app.currency');

            $country_currency = geoip()->getLocation(request()->ip())->currency;

            if (in_array($country_currency, get_all_currencies_codes())) {
                $currency = $country_currency;
            }
        }

        return Currency::where('code', $currency)->first();
    }
}

if (!function_exists('t')) {
    function t($key, $replace = [], $locale = null)
    {
        return app('translator')->getFromJson('common.' . $key, $replace, $locale);
    }
}

if (!function_exists('get_basket_subtotal_price')) {
    function get_basket_subtotal_price($is_symbol = false)
    {
        $price = 0;
        $stories = session()->get('order.ready_stories');

        if ($stories) {
            foreach ($stories as $story) {
                $price += get_story_price($story['story_id']);
            }
        }

        if ($is_symbol) {
            $price = $price . get_current_currency()->symbol;
        }

        return $price;
    }
}

if (!function_exists('get_basket_total_price')) {
    function get_basket_total_price($is_symbol = false, $order_id = null)
    {
        $price = 0;

        if ($order_id) {
            $order = \App\Models\Orders::find($order_id);
            if ($order_id) {
                $price = $order->total_price;
                if ($is_symbol) {
                    $price = $price . $order->currency->symbol;
                }
            }
        } else {

            $price = get_basket_delivery_price() + get_basket_subtotal_price();

            $discount = \App\Models\Coupons::find(session()->get('order.discount'));

            if ($discount && $discount->count()) {
                if ($discount->type == 'amount') {
                    $price -= $discount->discount;
                }
                if ($discount->type == 'percent') {
                    $price = ceil($price - ($price * ($discount->discount / 100)));
                }
            }

            if ($is_symbol) {
                $price = $price . get_current_currency()->symbol;
            }
        }

        return $price;
    }
}

if (!function_exists('get_basket_delivery_price')) {
    function get_basket_delivery_price($is_symbol = false)
    {
        $price = 0;

        $delivery_country_id = session()->get('order.delivery_country_id');

        if ($delivery_country_id) {
            $delivery_country = \App\Models\CountriesDelivery::find($delivery_country_id);
        } else {
            $delivery_country = \App\Models\CountriesDelivery::get()->first();
        }

        if ($delivery_country) {
            $current_currency = get_current_currency();
            $price = $delivery_country->{'price_' . strtolower($current_currency->code)};

            if ($is_symbol) {
                $price = $price . $current_currency->symbol;
            }
        }

        return $price;
    }
}

if (!function_exists('get_basket_count')) {
    function get_basket_count()
    {
        $stories = session()->get('order.ready_stories');

        if ($stories) {
            return count($stories);
        }

        return 0;
    }
}

if (!function_exists('u')) {
    function u($path = null, $parameters = [], $secure = null)
    {
        $path = app()->getLocale() . '/' . $path;
        return app(UrlGenerator::class)->to($path, $parameters, $secure);
    }
}

if (!function_exists('change_locale')) {
    function change_locale($locale)
    {
        $segments = app(\Illuminate\Http\Request::class)->segments();
        $segments[0] = $locale;

        return url(implode('/', $segments));
    }
}

if (!function_exists('get_story_price')) {
    function get_story_price($story_id, $is_symbol = false)
    {
        $current_currency = get_current_currency();

        $story = \App\Models\Stories::find($story_id);

        $price = $story->{'price_' . strtolower($current_currency->code)};

        if ($is_symbol) {
            $price = $price . $current_currency->symbol;
        }

        return $price;
    }
}

if (!function_exists('get_delivery_countries')) {
    function get_delivery_countries()
    {
        return \App\Models\CountriesDelivery::orderBy('lft')->get();
    }
}

if (!function_exists('get_current_delivery_country')) {
    function get_current_delivery_country()
    {
        $delivery_country_id = session()->get('order.delivery_country_id');

        if ($delivery_country_id) {
            $delivery_country = \App\Models\CountriesDelivery::find($delivery_country_id);
        } else {
            $delivery_country = \App\Models\CountriesDelivery::get()->first();
        }

        return $delivery_country;
    }
}

if (!function_exists('get_delivery_days')) {
    function get_delivery_days($country_id)
    {
        $country = \App\Models\CountriesDelivery::find($country_id);

        $days = 0;

        if ($country) {
            if ($country->min_days == $country->max_days) {
                $days = $country->min_days;
            } else {
                $days = $country->min_days . '-' . $country->max_days;
            }
        }

        return $days;
    }
}