<?php

namespace App\Http\Controllers;

use App\Mail\SendUserFailOrder;
use App\Mail\SendUserSuccessOrder;
use App\Models\Orders;
use App\Models\OrdersStatuses;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redirect;

class StripeController extends Controller
{
    public function show()
    {
        $this->data = [
            'page' => (object) [
                'title' => 'Stripe Payment',
                'slug' => 'stripe',
            ],
            'bodyClass' => 'cardPage',
        ];

        return view('pages.stripe', $this->data);
    }

    public function create(Request $request)
    {
        \Stripe\Stripe::setApiKey(env('STRIPE_SECRET_KEY'));

        $token  = $request->stripeToken;

        session()->put('order.payment_is_done', 1);
        session()->save();

        $order = Orders::find(session()->get('order.order_id'));

        $price = preg_replace('/\./', '', number_format($order->total_price, 2));

        try {

            \Stripe\Charge::create(array(
                'source'  => $token,
                'amount'   => $price,
                'currency' => $order->currency->code
            ));

            if ($order && $order->count()) {
                $order->status = 'paid';
                $order->save();

                OrdersStatuses::add($order->id, $order->status, Carbon::now());

                Mail::to($order->email)->send(new SendUserSuccessOrder($order));
            }

            Orders::sendOrderToAPI($order);

            return Redirect::to(u('payment-success'));
        } catch (\Exception $e) {
            if ($order && $order->count()) {
                Mail::to($order->email)->send(new SendUserFailOrder($order));
            }
            return Redirect::to(u('payment-fail'));
        }
    }
}