@extends('layouts.app')

@section('content')

<main>
    <h2 class="content_title">{{ t('New Order') }}</h2>

    <div class="content">

        <form action="{{ u('create-order') }}" method="post" id="checkout-form">
            @csrf
            <h3 class="personal">{{ t('Your Personal Info') }}</h3>
            <div class="form_header">
                <input type="text" name="first_name" required class="half first_input"
                    placeholder="{{ t('First Name') }}">
                <input type="text" name="last_name" required class="half" placeholder="{{ t('Last Name') }}">
                <input type="email" name="email" required class="full" placeholder="{{ t('Email') }} ">
            </div>
            <div>

            </div>

            <div id="select-home-delivery">
                <h3 class="delivery_title">{{ t('Delivery address') }}</h3>
                <a href="#" class="instructions" id="btnToAccessPoint">{{ t('More delivery instructions') }}</a>
                <div class="form_main">
                    <input type="text" name="delivery_first_name" class="half first_input"
                        placeholder="{{ t('First Name') }}">
                    <input type="text" name="delivery_last_name" class="half" placeholder="{{ t('Last Name') }}">
                    <input type="text" name="delivery_street_address" class="half first_input"
                        placeholder="{{ t('Street Address') }}">
                    <input type="text" name="delivery_apt_suite_number" class="half"
                        placeholder="{{ t('Apt/Suite Number') }}">
                    <input type="text" name="delivery_company_name" class="full" placeholder="{{ t('Company Name') }} ">
                    <input type="text" name="delivery_zip_code" class="half first_input"
                        placeholder="{{ t('Zip Code') }}">
                    <input type="text" name="delivery_city" class="half" placeholder="{{ t('City') }}">

                    <div class="drop_line payment-drop">
                        <div class="country" id="drop2">
                            <p id="selectCountry" class="select_country">{{ get_current_delivery_country()->name }}</p>
                            <img src="{{ asset('images/indexPage/down-arrow.svg') }}" alt="arrow">
                        </div>


                        <div class=" drop_hidden" id="dropdown5">

                            @foreach(\App\Models\CountriesDelivery::all() as $key => $country)
                            <div class="dropdown_item2">
                                <div class="dropdowm_inner_item2">
                                    <input type="radio" id="f13{{$key}}"
                                        {{ get_current_delivery_country()->id == $country->id ? 'checked' : '' }}
                                        name="delivery_country_id" value="{{ $country->id }}" class="l3">
                                    <label for="f13{{$key}}" class="c2">{{ $country->name }}</label>
                                </div>
                            </div>
                            @endforeach

                            <input type="hidden" name="action_url" value="{{ u('set-delivery') }}">

                        </div>
                        <input type="text" name="delivery_state" class="half" placeholder="{{ t('State') }}">
                    </div>

                    <input type="hidden" name="delivery_phone" id="delivery_phone">
                    <div>
                        <div class="form-group">
                            <input type="tel" id="phone" />
                            <span id="valid-msg" class="hide">✓ Valid</span>
                            <span id="error-msg" class="hide"></span>
                        </div>
                    </div>
                </div>
            </div>
            {{--  Added by Xiuna 2019/07/17  --}}
            {{-- <input type="hidden" name="address_mode" value="0" id="address_mode"> --}}
            {{-- <div id="select-access-point" style="display:none">
                <h3 class="delivery_title">Pick up an Access Point</h3>
                <a href="#" class="instructions" id="btnToHomeDelivery">{{ t('More delivery instructions') }}</a>
            <div class="form_main">

                <div class="drop_line payment-drop">
                    <div class="country" id="drop3">
                        <p id="selectCountry" class="select_country">{{ get_current_delivery_country()->name }}</p>
                        <img src="{{ asset('images/indexPage/down-arrow.svg') }}" alt="arrow">
                    </div>


                    <div class=" drop_hidden" id="dropdown6">

                        @foreach(\App\Models\CountriesDelivery::all() as $key => $country)
                        <div class="dropdown_item2">
                            <div class="dropdowm_inner_item2">
                                <input type="radio" id="f13{{$key}}"
                                    {{ get_current_delivery_country()->id == $country->id ? 'checked' : '' }} required
                                    name="delivery_country_id" value="{{ $country->id }}" class="l3">
                                <label for="f13{{$key}}" class="c2">{{ $country->name }}</label>
                            </div>
                        </div>
                        @endforeach

                        <input type="hidden" name="action_url" value="{{ u('set-delivery') }}">

                    </div>
                    <input id="delivery_zip_code" type="text" name="delivery_zip_code" class="half"
                        placeholder="{{ t('Zip Code') }}">
                    <div class="row">
                        <button type="button" id="btnSearchAccessPoint">Search</button>
                    </div>

                </div>
                <div id="access_point_part">
                    <div>
                        <input type="radio" id="ap1" name="access_point" value="aaa">
                        <label for="ap1">AAA</label>
                    </div>
                    <div>
                        <input type="radio" id="ap2" name="access_point" value="bbb">
                        <label for="ap2">BBB</label>
                    </div>
                    <div>
                        <input type="radio" id="ap3" name="access_point" value="ccc">
                        <label for="ap3">CCC</label>
                    </div>
                </div>

            </div>

    </div> --}}
    {{--  ---------------------  --}}


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
                    <img src="{{ asset('images/visa.svg') }}" width="41" height="18" alt="card image" class="cards">
                    <img src="{{ asset('images/Visa_Inc.svg') }}" width="41" height="18" alt="card image" class="cards">
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
                    <input type="radio" id="r2" name="payment_method" required value="paypal" class="radio_card">
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

    <button class="next"><span class="butt_text"> {{ t('Next') }} </span><img
            src="{{ asset('images/characterPage/right-arrow.png') }}" alt="arrow"></button>
    </form>


    <div class="order">
        <h3 class="order_title">{{ t('Order details') }}</h3>
        <div class="order_items">


            <div class="order_item">
                <p class="subtotal">{{ t('Subtotal') }}</p>
                <span class="subtotal_price">{{ get_basket_subtotal_price(true) }}</span>
            </div>

            <div class="order_item">
                <p class="delivery">{{ t('Delivery') }}</p>
                <span class="delivery_price">{{ get_basket_delivery_price(true) }}</span>
            </div>

            <div class="order_item total">
                <p class="total_title">{{ t('Total') }}</p>
                <span class="total_price">{{ get_basket_total_price(true) }}</span>
            </div>
        </div>


    </div>
    </div>

</main>


<script>
    gtag('event', 'load', {'event_category': 'basket', 'event_label': 'checkout', 'value':'1'});
</script>

@endsection