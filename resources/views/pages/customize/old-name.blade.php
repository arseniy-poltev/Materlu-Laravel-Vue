@extends('layouts.app')

@section('content')

	<style>
	h3{display:none}
	@media (min-width:1400px){
     h3{display:block}
	}
	</style>
    <main>

        {{--<div class="back_link_wrapper">--}}
            {{--<a href="{{ u('stories') }}" class="back_link">--}}
                {{--<img src="{{ asset('images/characterPage/back-arrow.png') }}" alt="arrow image">--}}
                {{--<span class="back_link_text">{{ t('Stories') }}</span>--}}
            {{--</a>--}}
        {{--</div>--}}


        <h3 class="character_title">{{ t('Character set up') }}</h3>

        <div class="progressbar">
            <div class="progressbar_images">
                <div class="progress1" ></div>
                <div class="progress2" id="progress2"></div>
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


        <div class="apearence" id="apBox">

            <form action="{{ u('customize/name') }}" method="post" class="apearence_form" id="customize_name_form">
                @csrf
                <h4 class="form_title">{{ t('What is your characters name?') }}</h4>
                <input type="text" placeholder="Character's Name" name="character_name" required value="{{ $data->character_name }}" class="char_name" id="charName">
                <p class="gender">{{ t('Gender') }}</p>

                <div class="gender_choise">
                    <input type="radio" id="r1" name="gender" required value="girl" {{ $data->gender == 'girl' ? 'checked' : '' }} class="gender_check">
                    <label for="r1" class="char_Settings_lable">{{ t('Girl') }}</label>
                    <img src="{{ asset('images/indexPage/settings-girl.svg') }}" alt="girl" class="char_Settings_girl">
                    <input type="radio" id="r2" name="gender" required value="boy" {{ $data->gender == 'boy' ? 'checked' : '' }} class="gender_check">
                    <label for="r2" class="char_Settings_lable">{{ t('Boy') }}</label>
                    <img src="{{ asset('images/indexPage/martin.svg') }}" alt="boy" class="char_Settings_boy">
                </div>


                <div class="char_settings">
                    <div class="char_language">
                        <div class="select_wrapper2">
                            <span class="select_title" id="formLanguage">{{ t('Language of the story') }}</span>
                            <div class="select_items2" id="language1">
                                @if($data->language)
                                    <img src="{{ asset(get_language_by_id($data->language)->flag) }}" alt="united states" class="united_states" id="charCountry">
                                    <span class="char_settings-language" id="charBox">{{ get_language_by_id($data->language)->name }} </span>
                                    <img src="{{ asset('images/indexPage/down-arrow.svg') }}" width="15" height="8" alt="arrow">
                                @else
                                    <img src="{{ asset(get_current_language()->flag) }}" alt="united states" class="united_states" id="charCountry">
                                    <span class="char_settings-language" id="charBox">{{ get_current_language()->name }} </span>
                                    <img src="{{ asset('images/indexPage/down-arrow.svg') }}" width="15" height="8" alt="arrow">
                                @endif
                            </div>


                            <div class="drop_hidden3" id="dropdown2">
                                @foreach (get_active_languages() as $key => $lang)
                                    <div class="dropdown_item1">
                                        <div class="dropdowm_inner_item1">
                                            <img src="{{ asset($lang->flag) }}" class="country_icon" alt="country icon">
                                            <input type="radio" required id="f47{{ $key }}" {{ $lang->id == $data->language || $key == 0 ? 'checked' : '' }} name="language" value="{{ $lang->id }}" class="l1">
                                            <label for="f47{{ $key }}" class="c2">{{ $lang->name }} </label>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="font_style">
                        <p class="font_style-title">{{ t('Font Style') }}</p>
                        <input type="radio" id="r3" required name="font_style" value="standard" {{ $data->font_style == 'standard' ? 'checked' : '' }} class="gender_check">
                        <label for="r3" class="style_Settings_lable">{{ t('Standard') }}</label>
                        <input type="radio" id="r4" required name="font_style" value="uppercase" {{ $data->font_style == 'uppercase' ? 'checked' : '' }} class="gender_check">
                        <label for="r4" class="storySettings_lable">{{ t('UPPERCASE') }} </label>

                    </div>
                </div>

                <input type="hidden" name="story_id" value="{{ $data->story_id }}">

            </form>
            <button type="submit" class="apearence_butt customize_name_form_btn" id="apearence">{{ t('Appearance') }} <img src="{{ asset('images/characterPage/right-arrow.png') }}" alt="arrow" class="button_arrow"> </button>

            <div class="advice_box">
                <div class="advice">
                    <p class="advice_text">{{ t('We suggest you write the name or nickname that you usually call your child.') }}</p><br>
                    <p class="advice_text">{{ t('Remember that the name is repeated throughout the story and using long names can be a bit repetitive and unnatural.') }}</p><br>
                    <p class="advice_text">{{ t("Check your spelling, bearing in mind it's a present that will last a lifetime.") }}</p><br>
                </div>
            </div>
        </div>


    </main>

    <script>
        gtag('event', 'load_{{ $data->story_id }}', {'event_category': 'customize', 'event_label': 'name', 'value':'1'});
    </script>

@endsection