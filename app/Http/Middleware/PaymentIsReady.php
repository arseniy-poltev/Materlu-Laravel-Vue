<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Redirect;

class PaymentIsReady
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $order_stories = session()->get('order.payment_is_ready');

        if($order_stories) {
            return $next($request);
        } else {
            return Redirect::to(u('/'));
        }
    }
}
