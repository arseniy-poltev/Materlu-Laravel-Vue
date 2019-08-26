<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class Locale
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $url_locale = $request->segment(1);

        if(in_array($url_locale, get_active_languages_codes())) {
                app()->setLocale($url_locale);
        } else {
            $preferred_locale = $request->getPreferredLanguage(get_active_languages_codes());
            app()->setLocale($preferred_locale);
            if($preferred_locale) {
                return Redirect::to(url($preferred_locale . '/' . $request->path()));
            }
        }

//        if(in_array($request->cookie('locale'), get_active_languages_codes())) {
//            app()->setLocale($request->cookie('locale'));
//        } else {
//            app()->setLocale($request->getPreferredLanguage(get_active_languages_codes()));
//        }

        return $next($request);
    }
}
