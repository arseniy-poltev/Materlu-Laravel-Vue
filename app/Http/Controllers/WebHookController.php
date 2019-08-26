<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OrderStories;
use App\Models\Orders;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendCheckedOrder;
use App\Mail\SendPrintedOrder;
use App\Models\OrdersStatuses;
use Carbon\Carbon;

class WebHookController extends Controller
{
    public function changeBookStatus(Request $request)
    {
        // $request->code   =>  book_code
        // $request->status =>  book_status
        OrderStories::where('code', $request->token)
            ->update(['status' => $request->status]);
        //send mail to customer
        return response('success');
    }

    public function changeOrderStatus(Request $request)
    {
        $order = Orders::where('code', $request->token)
            ->first();
        if ($order) {
            $order->update(['status' => $request->status]);
            //send mail to customer
            OrdersStatuses::add($order->id, $order->status, Carbon::now());
            switch ($order->status) {
                case 'checked':
                    Mail::to($order->email)->send(new SendCheckedOrder($order));
                    break;
                case 'printed':
                    Mail::to($order->email)->send(new SendPrintedOrder($order));
                    break;
            }
        }

        return response('success');
    }
}