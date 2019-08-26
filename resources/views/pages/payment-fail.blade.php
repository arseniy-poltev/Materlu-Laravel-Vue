@extends('layouts.app')

@section('content')

    <main>

        <section class="basket">
            <h2 class="basket_title">{{ t('There are some problems...') }}</h2>
            <div class="basket_main">
                <div class="basket_items">
                    <span class="another_story">{{ t('Unfortunately something went wrong, please try again.') }}</span>
                </div>
            </div>
        </section>

    </main>

    <script>
        gtag('event', 'load', {'event_category': 'basket', 'event_label': 'pay_failed', 'value':'1'});
    </script>

@endsection