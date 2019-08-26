@extends('layouts.app')

@section('content')

	<style>h3{display:none}@media(min-width:1400px){h3{display:block}}</style>
    <main class="new_bg">

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
                <div class="progress3 on_progress2-desktop" id="progress3"></div>
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

        <form action="{{ u('customize/dedication') }}" enctype="multipart/form-data" method="post"
              id="customize_dedication_form">
            @csrf
            <div class="apearence dedication_apearence">


                <div class="apearence_form2">
                    <input type="hidden" name="story_id" value="{{ $data->story_id }}">
                    <input type="hidden" name="dedication_picture_old" value="{{ $data->dedication_picture }}">

                    <div class="dedication_title">
                        <h3 class="dedication_title-text">{{ t('Write your dedication') }}</h3>
                        <p class="dedication_title-descriptin">{{ t('It will appear on the final page of the story') }}</p>
                    </div>
                    <textarea class="dedication_input" maxlength="4000" name="dedication"
                              placeholder="{{ t('Dear Anna, This is a fairy tale for a special girl like you. We hope you have fantastic adventures surrounded by those who love you most.') }}">{{ $data->dedication }}</textarea>
                </div>


                <div class="advice_box dedication_advice-box">
                    <div class="dedication_picture">
                        <h4 class="picture_title">{{ t('Do you want to add a picture?') }}</h4>
                        <p class="picture_descr">{{ t('The picture will be shown on the dedicatory page.') }}</p>
                        <div class="upload-btn-wrapper">
                            <div class="add_picture btn">
                                <img class="picture_image" src="{{ asset('images/characterPage/photo.svg') }}">
                                <span class="picture_help">{{ t('Add Picture') }}</span>
                            </div>
                            <input type="file" name="dedication_picture"/>
                        </div>
                        <div class="dedication_picture_preview {{ $data->dedication_picture ? 'image_exists' : '' }}">
                            <a href="#" id="remove_dedication_picture">{{ t('Remove') }}</a>
                            <img src="{{ asset($data->dedication_picture) }}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </form>

            <div class="arrow_box">
            <div class="prev_arrow"><img src="{{ asset('images/characterPage/right-arrow.png') }}">
                    <a href="{{ u('customize/' . $data->story_id . '/appearance') }}" class="back_link2">{{ t('Appearance') }}</a>
                </div>
                <button type="submit" class="ap_button3 customize_dedication_form_btn" id="apButton2">{{ t('Review') }}
                    <img src="{{ asset('images/characterPage/right-arrow.png') }}" class="right_arrow">
                </button>
            </div>
    </main>

    <script>
        gtag('event', 'load_{{ $data->story_id }}', {'event_category': 'customize', 'event_label': 'dedication', 'value':'1'});
    </script>

@endsection