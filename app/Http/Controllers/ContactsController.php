<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactUsRequest;
use App\Http\Requests\SubscriptionRequest;
use App\Mail\ContactUs;
use App\Models\ContactUs as Contact;
use App\Models\Setting;
use App\Models\Subscription;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redirect;

class ContactsController extends Controller
{
    public function storeContactUs(ContactUsRequest $request)
    {
        $validator = $request->validated();

        $contact = new Contact();

        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->message = $request->text;

        $contact->save();

        Mail::to(Setting::get('contact_us_email'))->send(new ContactUs((object)$request->all()));

        return Redirect::back()->withErrors($validator, 'contact_us');

    }
    public function storeSubscription(SubscriptionRequest $request)
    {
        $validator = $request->validated();

        $subscription = new Subscription();

        $subscription->email = $request->email;

        $subscription->save();

        return Redirect::back()->withErrors($validator, 'ssubscription');

    }
}
