<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PaymentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'first_name' => 'required|max:255',
            'last_name' => 'required|max:255',
            'email' => 'required|email|max:255',
            'delivery_first_name' => 'required|max:255',
            'delivery_last_name' => 'required|max:255',
            'delivery_street_address' => 'required|max:255',
            'delivery_apt_suite_number' => 'max:255',
            'delivery_company_name' => 'max:255',
            'delivery_zip_code' => 'required|max:255',
            'delivery_city' => 'required|max:255',
            'delivery_country_id' => 'required|exists:countries_delivery,id',
            'delivery_state' => 'required|max:255',
            'delivery_phone' => 'required|max:255',
            'payment_method' => 'required|in:card,paypal',
            'privacy' => 'required|in:on',
        ];
    }
}
