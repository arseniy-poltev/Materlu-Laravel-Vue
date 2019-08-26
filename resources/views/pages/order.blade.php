@extends('layouts.app')

@section('content')

<main class="order-page">
    <h2 class="content_title">{{ t('Your Order') }} #{{ $order->id }}</h2>

    <div class="progressbar">
        <div class="progressbar_images">
            <div class="progressbar_images-block1">
                <div class="progress1"></div>
                <div class="progress2 {{ $status_position > 1 ? 'on_progress2-desktop' : '' }}"></div>
                <div class="progress2 {{ $status_position > 2 ? 'on_progress2-desktop' : '' }}"></div>
                <div class="progress2 {{ $status_position > 3 ? 'on_progress2-desktop' : '' }}"></div>
                <div class="progress2 {{ $status_position > 4 ? 'on_progress2-desktop' : '' }}"></div>
            </div>
            <div class="progressbar_images-block2">
                <div class="progress2 {{ $status_position > 5 ? 'on_progress2-desktop' : '' }}"></div>
                <div class="progress2 {{ $status_position > 6 ? 'on_progress2-desktop' : '' }}"></div>
                <div class="progress2 {{ $status_position > 7 ? 'on_progress2-desktop' : '' }}"></div>
                <div class="progress5 {{ $status_position >= 8 ? 'on_progress2-desktop' : '' }}"></div>
            </div>
        </div>
        <div class="progressbar_descr">
            <div class="progressbar_descr-block1">
                <span class="progressbar_descr-item">{{ t('Ordered') }}
                    @isset($order_statuses->ordered)
                    <span class="progressbar-item-date"><br>{{ $order_statuses->ordered }}</span>
                    @endisset
                </span>
                <span class="progressbar_descr-item">{{ t('Paid') }}
                    @isset($order_statuses->paid)
                    <span class="progressbar-item-date"><br>{{ $order_statuses->paid }}</span>
                    @endisset
                </span>
                <span class="progressbar_descr-item">{{ t('Checking') }}
                    @isset($order_statuses->checking)
                    <span class="progressbar-item-date"><br>{{ $order_statuses->checking }}</span>
                    @endisset
                </span>
                <span class="progressbar_descr-item">{{ t('Printing') }}
                    @isset($order_statuses->printing)
                    <span class="progressbar-item-date"><br>{{ $order_statuses->printing }}</span>
                    @endisset
                </span>

            </div>
            <div class="progressbar_descr-block2">
                <span class="progressbar_descr-item">{{ t('Printed') }}
                    @isset($order_statuses->printed)
                    <span class="progressbar-item-date"><br>{{ $order_statuses->printed }}</span>
                    @endisset
                </span>
                <span class="progressbar_descr-item">{{ t('Sending') }}
                    @isset($order_statuses->sending)
                    <span class="progressbar-item-date"><br>{{ $order_statuses->sending }}</span>
                    @endisset
                </span>
                <span class="progressbar_descr-item">{{ t('Delivering') }}
                    @isset($order_statuses->delivering)
                    <span class="progressbar-item-date"><br>{{ $order_statuses->delivering }}</span>
                    @endisset
                </span>
                <span class="progressbar_descr-item">{{ t('Delivered') }}
                    @isset($order_statuses->delivered)
                    <span class="progressbar-item-date"><br>{{ $order_statuses->delivered }}</span>
                    @endisset
                </span>
            </div>
        </div>
    </div>

    <div class="content">



        <form action="{{ u('pay-order') }}" method="post" id="payment-form">
            @csrf
            {{--<h3 class="personal">{{ t('Your Personal Info') }}</h3>--}}
            {{--<div class="form_header">--}}
            {{--<input type="text" disabled class="half first_input" value="{{ $order->first_name }}">--}}
            {{--<input type="text" disabled class="half" value="{{ $order->last_name }}">--}}
            {{--<input type="email" disabled class="full" value="{{ $order->email }}">--}}
            {{--</div>--}}
            {{--<h3 class="delivery_title">{{ t('Delivery address') }}</h3>--}}
            {{--<div class="form_main">--}}
            {{--<input type="text" disabled class="half first_input" value="{{ $order->delivery->first_name }}">--}}
            {{--<input type="text" disabled class="half" value="{{ $order->delivery->last_name }}">--}}
            {{--<input type="text" disabled class="half first_input" value="{{ $order->delivery->street_address }}">--}}
            {{--<input type="text" disabled class="half" value="{{ $order->delivery->apt_suite_number }}">--}}
            {{--<input type="text" disabled class="full" value="{{ $order->delivery->company_name }}">--}}
            {{--<input type="text" disabled class="half first_input" value="{{ $order->delivery->zip_code }}">--}}
            {{--<input type="text" disabled class="half" value="{{ $order->delivery->city }}">--}}
            {{--<input type="text" disabled class="half first_input" value="{{ $order->delivery->country->name }}">--}}
            {{--<input type="text" disabled class="half" value="{{ $order->delivery->state }}">--}}

            {{--<input type="text" disabled class="full" value="{{ $order->delivery->phone }}">--}}

            {{--</div>--}}



            @foreach($order->stories as $story)
            <div class="basket_item">
                <div class="basket_item-info">
                    <img src="{{ asset('images/characterPage/girl.png') }}" width="71" height="101"
                        class="basket_item-img" alt="story_photo">

                    <div class="basket_item-text">
                        <h3 class="basket_item-title">{{ $story->name }}</h3>
                        <p class="basket_item-name">{{ $story->pivot->name }}</p>
                    </div>
                </div>

                <div class="price">
                    <span
                        class="price_number">{{ $order->currency->symbol . $story->{'price_'.strtolower($order->currency->code)} }}</span>
                </div>
            </div>
            @endforeach

            @if($order->status == 'ordered')
            {{--<h3 class="delivery_title">{{ t('Status') }}</h3>--}}
            {{--<div class="form_method">--}}
            {{--<input type="text" disabled class="half first_input" value="{{ ucfirst($order->status) }}">--}}
            {{--</div>--}}
            {{--@else--}}
            <div class="form_method">
                <h3 class="method_title">{{ t('Payment Method') }}</h3>

                <div class="card_method">
                    <div class="select_card">
                        <div class="check">
                            <input type="radio" id="r1" name="payment_method" required value="card" class="radio_card">
                            <label for="r1" class="card_lable">{{ t('Card') }}</label>
                        </div>

                        <div class="card_img">
                            <img src="{{ asset('images/mastercard.svg') }}" width="41" height="18" alt="card image"
                                class="cards">
                            <img src="{{ asset('images/visa.svg') }}" width="41" height="18" alt="card image"
                                class="cards">
                            <img src="{{ asset('images/Visa_Inc.svg') }}" width="41" height="18" alt="card image"
                                class="cards">
                            <img src="{{ asset('images/amrican-express.svg') }}" width="41" height="18" alt="card image"
                                class="cards">
                        </div>
                    </div>

                    <div class="method_descr">
                        {{ t('You will be redirected to the safe payment platform of our bank') }}
                    </div>
                </div>


                <div class="card_method">
                    <div class="select_card">
                        <div class="check">
                            <input type="radio" id="r2" name="payment_method" required value="paypal"
                                class="radio_card">
                            <label for="r2" class="card_lable">{{ t('PayPal/Card') }}</label>
                        </div>

                        <div class="card_img">
                            <img src="{{ asset('images/PayPal.svg') }}" width="106" height="27" alt="paypal image"
                                class="paypal_img">
                        </div>
                    </div>

                    <div class="method_descr">
                        {{ t('You will be redirected to the safe payment platform of Paypal') }}
                    </div>
                </div>

                <div class="checkbox_box">
                    <div class="box1">
                        <input type="checkbox" id="r0" name="subscribe" class="check_card">
                        <label for="r0" class="check_lable">{{ t('Subscribe me to the newsletter') }} </label>
                    </div>
                    <div class="box2">
                        <input type="checkbox" id="r" name="privacy" required class="check_card">
                        <label for="r" class="check_lable">{{ t('I have read and agree') }} <a href="{{ u('privacy')}}"
                                class="privacy">{{ t('Privacy Policy') }}</a></label>
                    </div>
                </div>

            </div>

            <input type="hidden" name="order_id" value="{{ $order->id }}">

            <button class="next"><span class="butt_text"> {{ t('Next') }} </span><img
                    src="{{ asset('images/characterPage/right-arrow.png') }}" alt="arrow"></button>

            @endif
        </form>


        <div class="order">
            <h3 class="order_title">{{ t('Order details') }}</h3>
            <div class="order_items">


                <div class="order_item">
                    <p class="subtotal">{{ t('Subtotal') }}</p>
                    <span class="subtotal_price">{{ $order->currency->symbol. $order->SubtotalPrice }}</span>
                </div>

                <div class="order_item">
                    <p class="delivery">{{ t('Delivery') }}</p>
                    <span class="delivery_price">{{ $order->currency->symbol . $order->delivery->price }}</span>
                </div>

                @if($order->coupon)
                <div class="order_item">
                    <p class="delivery">{{ t('Discount') }}</p>
                    <span
                        class="delivery_price">{{ $order->coupon->discount }}{{ $order->coupon->type == 'percent' ? '%' : $order->currency->symbol }}</span>
                </div>
                @endif

                <div class="order_item total">
                    <p class="total_title">{{ t('Total') }}</p>
                    <span class="total_price">{{ $order->currency->symbol . $order->total_price }}</span>
                </div>
            </div>


        </div>
    </div>

</main>

@endsection