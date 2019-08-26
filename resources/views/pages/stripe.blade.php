@extends('layouts.app')

@section('content')

    <main>

        <section class="pay">
            <h2 class="pay_title">{{ t('Total to Pay') }}</h2>

            <div class="content">

                <form action="{{ u('stripe') }}" method="post" class="card stripe-payment-form">
                    @csrf
                    <div class="error-message">{!! session('error.message') !!}</div>
                    <h3 class="form_title">{{ t('Payment by Card') }} </h3>
                    <p class="card_number">{{ t('Card number') }}</p>
                    <input type="text" name="card_number" maxlength="16" placeholder="***** ***** ***** *****" class="card_input">
                    <div class="form_footer">
                        <div class="cvv">
                            <p class="cvv_text">{{ t('CVC') }}</p>
                            <input type="text" name="cvc" maxlength="4" class="cvv_input" placeholder="{{ t('CVC') }}">
                        </div>

                        <div class="date">
                            <p class="date_text">{{ t('Expiration date') }}</p>
                            <input type="text" name="date" maxlength="5" class="date_input" placeholder="{{ t('MM/YY') }}">
                        </div>
                    </div>
                </form>



                <div class="security">
                    <div class="security_header">
                        <h3 class="security_title">{{ t('Total to Pay') }}</h3>
                        <p class="security_price">{{ get_basket_total_price(true, session()->get('order.pay_order')) }}</p>
                    </div>
                    <div class="security_footer">
                        <img src="{{ asset('images/shield.png') }}" alt="shield image" class="shield">
                        <p class="security_text">{{ t('Safe Patment 100%') }}</p>
                    </div>

                </div>
            </div>
            <div class="pay_wrapp">
                <button class="pay_butt stripe-form-submit">{{ t('Pay') }}</button>
            </div>
        </section>

    </main>

    <script>
        gtag('event', 'load', {'event_category': 'basket', 'event_label': 'stripe', 'value':'1'});
    </script>

@endsection