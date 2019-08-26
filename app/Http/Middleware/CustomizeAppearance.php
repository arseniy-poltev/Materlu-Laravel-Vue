<?php

namespace App\Http\Middleware;

use App\Http\Requests\CustomizeNameRequest;
use Closure;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

class CustomizeAppearance
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
        $r = new CustomizeNameRequest();
        $story = session()->get('order.story');

        if($story && is_array($story)) {
            $validator = Validator::make($story, $r->rules());

            if(!$validator->fails()){
                return $next($request);
            }
        }

        return Redirect::to(u('/'));

    }
}
