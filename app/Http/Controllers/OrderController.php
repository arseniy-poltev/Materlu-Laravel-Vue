<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateOrderHomepage;
use App\Http\Requests\DiscountRequest;
use App\Http\Requests\PaymentRequest;
use App\Http\Requests\PayRequest;
use App\Models\Coupons;
use App\Models\Delivery;
use App\Models\Orders;
use App\Models\OrdersStatuses;
use App\Models\OrderStories;
use App\Models\PayPal;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class OrderController extends Controller
{
    public $data;

    public function show()
    {

        $this->data = [
            'page' => (object) [
                'title' => 'New order',
                'slug' => 'order',
            ],
            'bodyClass' => 'payment',
        ];

        return view('pages.checkout', $this->data);
    }

    public function showReadyOrder(Request $request)
    {
        $id = $request->route('id');
        $token = $request->route('token');

        $order = Orders::where('id', $id)->where('code', $token)->firstOrFail();

        $order_statuses = [];
        foreach (OrdersStatuses::getByOrderId($id) as $item) {
            $order_statuses[$item->status] = date('d/m/Y H:i', strtotime($item->date));
        }

        $status_position = 1;
        switch ($order->status) {
            case 'paid':
                $status_position = 2;
                break;
            case 'checking':
                $status_position = 3;
                break;
            case 'printing':
                $status_position = 4;
                break;
            case 'printed':
                $status_position = 5;
                break;
            case 'sending':
                $status_position = 6;
                break;
            case 'delivering':
                $status_position = 7;
                break;
            case 'delivered':
                $status_position = 8;
                break;
        }

        if ($order) {
            $this->data = [
                'page' => (object) [
                    'title' => 'Your order #' . $id,
                    'slug' => 'order',
                ],
                'order' => $order,
                'order_statuses' => (object) $order_statuses,
                'status_position' => $status_position,
                'bodyClass' => 'payment',
            ];
        } else {
            return abort(404);
        }

        return view('pages.order', $this->data);
    }

    public function createHomepage(CreateOrderHomepage $request)
    {

        $request->session()->put('order.story.character_name', $request->character_name);
        $request->session()->put('order.story.gender', $request->gender);
        $request->session()->put('order.story.language', $request->language);

        $request->session()->save();

        return Redirect::to(u('cuentos'));
    }

    public function pay(PayRequest $request)
    {
        $order = Orders::findOrFail($request->order_id);

        $request->session()->put('order.order_id', $order->id);
        $request->session()->save();

        if ($request->payment_method == 'card') {

            $request->session()->put('order.payment_is_ready', 1);
            $request->session()->put('order.pay_order', $order->id);
            $request->session()->save();

            return Redirect::to(u('stripe'));
        } else if ($request->payment_method == 'paypal') {

            $payment = new PayPal($order);
            return $payment->payment();
        } else {
            return Redirect::to(u('payment-fail'));
        }
    }

    public function store(PaymentRequest $request)
    {
        $order = Orders::find($request->session()->get('order.order_id'));

        if (!$order) {

            $delivery = new Delivery();

            $delivery->price = get_basket_delivery_price();
            $delivery->first_name = $request->delivery_first_name;
            $delivery->last_name = $request->delivery_last_name;
            $delivery->street_address = $request->delivery_street_address;
            $delivery->apt_suite_number = $request->delivery_apt_suite_number;
            $delivery->company_name = $request->delivery_company_name;
            $delivery->zip_code = $request->delivery_zip_code;
            $delivery->city = $request->delivery_city;
            $delivery->country_id = $request->delivery_country_id;
            $delivery->state = $request->delivery_state;
            $delivery->phone = $request->delivery_phone;

            $delivery->save();

            $order = new Orders();

            $order->code = uniqid();
            $order->status = 'ordered';
            $order->total_price = get_basket_total_price();
            $order->delivery_id = $delivery->id;
            $order->coupon_id = session()->get('order.discount') ?: null;
            $order->currency_id = get_current_currency()->id;
            $order->email = $request->email;
            $order->first_name = $request->first_name;
            $order->last_name = $request->last_name;
            $order->payment_method = $request->payment_method;

            $order->save();

            OrdersStatuses::add($order->id, $order->status, Carbon::now());

            foreach (session()->get('order.ready_stories') as $item) {
                $story = new OrderStories();

                $story->order_id = $order->id;
                $story->story_id = $item['story_id'];
                $story->name = $item['character_name'];
                $story->gender = $item['gender'];
                $story->language_id = $item['language'];
                $story->font_style = $item['font_style'];
                $story->dedication = $item['dedication'];
                $story->dedication_picture = $item['dedication_picture'];
                $story->character_info = $item['character_info'];

                // added by xiuna
                $story->code = uniqid();
                $story->status = 'ordered';
                // -----------------

                $story->save();
            }

            $request->session()->put('order.order_id', $order->id);
            $request->session()->save();
        }

        if ($request->payment_method == 'card') {

            $request->session()->put('order.payment_is_ready', 1);
            $request->session()->save();

            return Redirect::to(u('stripe'));
        } else if ($request->payment_method == 'paypal') {

            $payment = new PayPal($order);
            return $payment->payment();
        } else {
            return Redirect::to(u('payment-fail'));
        }
    }

    public function showSuccess()
    {
        session()->remove('order');
        session()->save();

        $this->data = [
            'page' => (object) [
                'title' => 'Success Payment',
                'slug' => 'order',
            ],
            'bodyClass' => 'payment',
        ];

        return view('pages.payment-success', $this->data);
    }

    public function showFail()
    {
        session()->remove('order');
        session()->save();

        $this->data = [
            'page' => (object) [
                'title' => 'Failed Payment',
                'slug' => 'order',
            ],
            'bodyClass' => 'payment',
        ];

        return view('pages.payment-fail', $this->data);
    }

    public function setDiscount(Request $request)
    {
        if ($request->get('remove_discount') == 1) {
            $request->session()->remove('order.discount');
            $request->session()->save();
        } else {
            $coupon = Coupons::where('code', $request->code)
                ->where('start_date', '<=', Carbon::now())
                ->where('finish_date', '>=', Carbon::now())
                ->first();

            if ($coupon) {
                session()->put('order.discount', $coupon->id);
                session()->save();
            }
        }

        return Redirect::back();
    }
}