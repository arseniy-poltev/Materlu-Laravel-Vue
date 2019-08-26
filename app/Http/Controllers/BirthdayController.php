<?php

namespace App\Http\Controllers;

use App\Http\Requests\BirthdayFrontendRequest as Request;
use App\Models\Birthdays;
use Illuminate\Support\Facades\Redirect;

class BirthdayController extends Controller
{
    public function store(Request $request)
    {
        $validator = $request->validated();

        $birthday = new Birthdays();

        $birthday->name = $request->name;
        $birthday->date = $request->date;
        $birthday->email = $request->email;

        $birthday->save();

        return Redirect::back()->withErrors($validator, 'birthday');
    }
}
