<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class BasketController extends Controller
{
    public $data;

    public function show(Request $request)
    {
        $this->data = [
            'page' => (object)[
                'title' => 'Basket',
                'slug' => 'basket',
            ],
            'order' => $request->session()->get('order'),
            'bodyClass' => 'basketPage',
        ];

        return view('pages.basket', $this->data);
    }

    public function removeItem($id, Request $request)
    {

        $request->session()->remove('order.ready_stories.' . $id);
        $request->session()->save();

        return Redirect::back();
    }
}
