@extends('layouts.app')

@section('content')

    <main>

        <section class="basket">
            <h2 class="basket_title">{{ t('Your payment was successfully finished!') }}</h2>
            <div class="basket_main">
                <div class="basket_items">
                    <span class="another_story">{{ t('Thank you for order! We will contact you soon!') }}</span>
                </div>
            </div>
        </section>

    </main>

    <script>
        gtag('event', 'load', {'event_category': 'basket', 'event_label': 'pay_correct', 'value':'1'});
    </script>

@endsection