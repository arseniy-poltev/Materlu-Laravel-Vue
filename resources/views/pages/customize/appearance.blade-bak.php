@extends('layouts.app')

@section('content')

    <style>
        ul, li {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .panel {
            width: 90%;
            height: auto;
            margin: 5%;
            background-image: linear-gradient(243deg, rgba(2, 141, 138, 0.2) 0%, rgba(0, 190, 98, 0.2) 100%);
            border-radius: 25px;
        }
        .panel svg {
            max-height: 500px;
        }
        .controls {
            width: 80%;
            margin: 0 5%;
            padding: calc(5% - 2px);
            background-image: linear-gradient(243deg, rgba(2, 141, 138, 0.2) 0%, rgba(0, 190, 98, 0.2) 100%);
            border-radius: 25px;
        }
        .options {
            height: 48px;
            margin: 15px 5px 5px 5px;
            border-radius: 29px;
            background-image: linear-gradient(243deg, #028d8a 0%, #00be62 100%);
            border: none;
            color: #ffffff;
            font-family: 'Raleway', sans-serif;
            font-size: 16px;
            font-weight: 700;
            line-height: 48px;
            text-align: center;
            cursor: pointer;
        }
        .options:first-child {
            margin-top: 5px;
        }
        .options:active {
            box-shadow: inset 0 1px 1px 1px rgba(0,0,0,0.8);
        }
        .configColor, .configHide {
            display: inline-block;
            height: 80px;
            width: 80px;
            margin: 5px;
            border-radius: 5px;
            box-shadow: 0 1px 2px 1px rgba(0,0,0,0.8);
            cursor: pointer;
            vertical-align: top;
            background: #eee;
        }
        .configColor:active, .configHide:active {
            box-shadow: inset 0 1px 2px 1px rgba(0,0,0,0.8);
        }
        .mygroup {
            display:none;
            text-align: center;
        }
        .mini {
            max-height: 76px;
            max-width: 76px;
            margin: 2px;
            border-radius: 5px;
        }
        .advice_box {
            padding-top: 25px;
            padding-bottom: 25px;
        }
    </style>
    <!-- END SCRIPTS NEEDED -->

    <main class="appearance-page">
        {{--<div class="back_link_wrapper">--}}
        {{--<a href="{{ u('stories') }}" class="back_link">--}}
        {{--<img src="{{ asset('images/characterPage/back-arrow.png') }}" alt="arrow image">--}}
        {{--<span class="back_link_text">{{ t('Stories') }}</span>--}}
        {{--</a>--}}
        {{--</div>--}}
        <h3 class="character_title">{{ t('Character set up') }}</h3>
        <div class="progressbar">
            <div class="progressbar_images">
                <div class="progress1"></div>
                <div class="progress2 on_progress2-desktop" id="progress2"></div>
                <div class="progress3" id="progress3"></div>
                <div class="progress4" id="progress4"></div>
                <div class="progress5" id="progress5"></div>

            </div>
            <div class="progressbar_descr">
                <span class="progressbar_descr-item">{{ t('Name') }}</span>
                <span class="progressbar_descr-item">{{ t('Appearance') }}</span>
                <span class="progressbar_descr-item">{{ t('Dedication') }}</span>
                <span class="progressbar_descr-item">{{ t('Review') }}</span>
            </div>
        </div>
        <div class="apearence ap_apearence" id="apBox">

            <form action="{{ u('customize/appearance') }}" method="post" class="apearence_form" id="customize_appearance_form">
                @csrf

                <input type="hidden" name="story_id" value="{{ $data->story_id }}">
                <input type="hidden" name="gender" value="{{ $data->gender }}">
                <input type="hidden" name="language" value="{{ get_language_by_id($data->language)->abbr }}">
                <input type="hidden" name="character_info" value="{{ $data->character_info }}">

                <div class="panel"></div>				<!-- ONE OF THE DIVs NEEDED -->
                <!--div class="controls"></div-->		<!-- ONE OF THE DIVs NEEDED alternative disposition -->

            </form>
           
            <div class="advice_box ap_advice-box">

                <div class="controls"></div>			<!-- ONE OF THE DIVs NEEDED -->

                <!--div class="advice">
                    <p class="advice_text">We suggest you write the name or nickname that you usually call your child.</p><br>
                    <p class="advice_text">Remember that the name is repeated throughout the story and using long names can be a bit repetitive
                        and unnatural.</p><br>
                    <p class="advice_text">Check your spelling, bearing in mind it's a present that will last a lifetime.</p><br>
                </div-->
            </div>
        </div>
        <div class="arrow_box ap_arrow-box">
        <div class="prev_arrow"><img src="{{ asset('images/characterPage/right-arrow.png') }}"><a
                            href="{{ u('customize/' . $data->story_id . '/name') }}" class="back_link2">{{ t('Name') }}</a></div>
                <button type="submit" class="ap_button2 customize_appearance_form_btn" id="apButton2">{{ t('Dedication') }} <img
                            src="{{ asset('images/characterPage/right-arrow.png') }}" class="right_arrow"></button>
            </div>
    </main>

    <script>
        gtag('event', 'load_{{ $data->story_id }}', {'event_category': 'customize', 'event_label': 'appearance', 'value':'1'});
    </script>

@endsection