<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CustomizeNameRequest extends FormRequest
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
            'character_name' => 'required|max:26',
            'gender' => 'required|max:255|in:boy,girl',
            'language' => 'required|max:255|exists:languages,id',
            'font_style' => 'required|max:255|in:standard,uppercase',
        ];
    }
}
