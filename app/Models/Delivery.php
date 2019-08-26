<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Delivery extends Model
{
    protected $table = 'delivery';

     public $timestamps = false;

    protected $fillable = [
        'price',
        'first_name',
        'last_name',
        'street_address',
        'apt_suite_number',
        'company_name',
        'zip_code',
        'city',
        'country_id',
        'state',
        'phone',
        'instructions',
    ];

    public function country()
    {
        return $this->hasOne('App\Models\CountriesDelivery', 'id', 'country_id');
    }
}
