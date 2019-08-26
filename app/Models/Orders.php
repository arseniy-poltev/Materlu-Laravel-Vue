<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Backpack\CRUD\CrudTrait;
use GuzzleHttp\Client;
use Backpack\LangFileManager\app\Models\Language;

class Orders extends Model
{
    use CrudTrait;

    /*
    |--------------------------------------------------------------------------
    | GLOBAL VARIABLES
    |--------------------------------------------------------------------------
    */

    protected $table = 'orders';
    // protected $primaryKey = 'id';
    // public $timestamps = false;
    // protected $guarded = ['id'];
    protected $fillable = ['status'];
    // protected $hidden = [];
    // protected $dates = [];

    /*
    |--------------------------------------------------------------------------
    | FUNCTIONS
    |--------------------------------------------------------------------------
    */

    public static function sendOrderToAPI($order)
    {
        $api_url = env('ORDER_PANEL_URL');
        // var_dump($order->stories->toArray());
        // exit();
        $client = new Client();
        $items = [];
        $stories = $order->stories;
        foreach ($stories as $story) {
            $item = [];
            $item['name'] = $story->name;
            $item['language'] = Language::find($story->pivot->language_id)->name;
            $item['book_code'] = $story->pivot->code;
            array_push($items, $item);
        }
        $client->request('POST', $api_url, [
            'form_params' => [
                //'personal_first_name' => $order->first_name,
                // 'personal_last_name' => $order->last_name,
                // 'email' => $order->email,
                // 'delivery_first_name' => $order->delivery->first_name,
                // 'delivery_last_name' => $order->delivery->last_name,
                // 'apt_suite_number' => $order->delivery->apt_suite_number,
                'order_code'    =>  $order->code,
                'street_address' => $order->delivery->street_address,
                'suite_number' => $order->delivery->apt_suite_number,
                // 'company_name' => $order->delivery->company_name,
                'zip_code' => $order->delivery->zip_code,
                'city' => $order->delivery->city,
                'country' => $order->delivery->country->iso_code,
                'state' => $order->delivery->state,
                // 'phone' => $order->delivery->phone,
                // 'payment_method' => $order->payment_method,
                // 'price' => $order->total_price,
                // 'currency' => $order->currency->code,
                'status' => $order->status,
                'items' => $items
            ]
        ]);
    }

    /*
    |--------------------------------------------------------------------------
    | RELATIONS
    |--------------------------------------------------------------------------
    */

    public function stories()
    {
        return $this
            ->belongsToMany('App\Models\Stories', 'orders_stories', 'order_id', 'story_id')
            ->withPivot([
                'name',
                'code',
                'gender',
                'status',
                'language_id',
                'font_style',
                'character_info',
                'dedication',
                'dedication_picture',
            ]);
    }

    public function delivery()
    {
        return $this->hasOne('App\Models\Delivery', 'id', 'delivery_id');
    }

    public function coupon()
    {
        return $this->hasOne('App\Models\Coupons', 'id', 'coupon_id');
    }

    public function currency()
    {
        return $this->hasOne('App\Models\Currency', 'id', 'currency_id');
    }

    public function statuses()
    {
        return $this->hasMany('App\Models\OrdersStatuses', 'order_id');
    }

    /*
    |--------------------------------------------------------------------------
    | SCOPES
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | ACCESORS
    |--------------------------------------------------------------------------
    */

    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */

    public function getFullNameAttribute()
    {
        return "{$this->first_name} {$this->last_name}";
    }

    public function getFormattedTotalPriceAttribute()
    {
        $symbol = Currency::find($this->currency_id)->symbol;

        return $symbol . $this->total_price;
    }

    public function getSubtotalPriceAttribute()
    {
        $price = 0;

        foreach ($this->stories as $story) {
            $price += $story->{'price_' . strtolower($this->currency->code)};
        }

        if ($this->coupon) {
            if ($this->coupon->type == 'amount') {
                $price -= $this->coupon->discount;
            }
            if ($this->coupon->type == 'percent') {
                $price = ceil($price - ($price * ($this->coupon->discount / 100)));
            }
        }

        return $price;
    }

    public function getOrderLinkAttribute()
    {
        return u('order/' . $this->id . '-' . $this->code);
    }
}