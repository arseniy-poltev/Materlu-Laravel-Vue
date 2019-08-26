@extends('layouts.app')

@section('content')
    <section class="storySettings_wrapper">

    <div class="storySettings">
        <form action="{{ u('create-story-homepage') }}" method="post" id="create_story_customized_form">
            @csrf
            
            <div class="story__settings-tablet">
                <div class="story__setting-mobile">
                <input type="text" maxlength="26" name="character_name" required class="Character_name" placeholder="{{ t('Character’s Name') }}">
                <div class="language" id="language">
                    <img src="{{ asset(get_active_languages()->first()->flag) }}" alt="country image" id="countryBox2">
                    <p class="storySettings_language" id="headerLanguage">{{ get_active_languages()->first()->name }}</p>
                    <img src="{{ asset('images/indexPage/down-arrow.svg') }}" alt="arrow">

                     <div class="drop_hidden" id="dropdown">
                @foreach (get_active_languages() as $key => $lang)
                    <div class="dropdown_item">
                        <div class="dropdowm_inner_item">
                            <img src="{{ asset($lang->flag) }}" class="country_icon" alt="country icon">
                            <input type="radio" required id="f47{{ $key }}" {{ $key == 0 ? 'checked' : '' }} name="language" value="{{ $lang->id }}" class="l1">
                            <label for="f47{{ $key }}" class="c2">{{ $lang->name }} </label>
                        </div>
                    </div>
                @endforeach
            </div>
                </div>
                </div>
                <div class="story__setting-mobile">
                <input type="radio" id="r1" name="gender" required value="girl" class="gender_check">
                <label for="r1" class="storySettings_lable">{{ t('Girl') }}</label>
                <img src="{{ asset('uploads/girl.svg') }}" alt="girl" class="storySettings_girl">
                <input type="radio" id="r2" name="gender" required value="boy" class="gender_check">
                <label for="r2" class="storySettings_lable">{{ t('Boy') }}</label>
                <img src="{{ asset('uploads/boy.svg') }}" alt="boy" class="storySettings_boy">
                     </div>
</div>
                <button type="submit" class="create_story_settings">{{ t('Create your Story') }}</button>
              
            </div>
           
        </form>
    </section>
    <main>
        <section class="bg_wrapper">
            <div class="manual" id="manual">
                <img src="{{ asset('images/indexPage/Path_2.svg') }}" width="788" height="688" alt="bsckground image"
                     class="manual_bg">

                @foreach(json_decode($page->slider1) as $item)
                    <div class="mySlides fade">
                        <img class="slider_images" src="{{ asset($item->url) }}" alt="slide Image">
                    </div>
                @endforeach

                <div class="dot-container">
                    @foreach(json_decode($page->slider1) as $key => $item)
                        <span class="dot" onclick="currentSlide({{ ++$key }})"></span>
                    @endforeach
                </div>
                <img src="{{ asset('images/indexPage/monster7.svg') }}" width="141" height="150" alt="monster image"
                     class="slider_monster">
                <h4 class="manual_title">{{ $page->h4 }}</h4>
                <div class="manual_list">
                    @foreach(json_decode($page->list1) as $item)
                        <div class="manual_list-item">
                            <img src="{{ asset($item->img) }}" width="93" height="88" alt="pencil" class="manual_list_icons_item">
                            <span>{{ $item->text }}</span>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
        <section class="promotion_wrapper">
            <div class="promotion">
                <h3 class="promotion_title">{{ t('Find out about all our latest news and promotions')}}</h3>
                @include('partials.subscription_form')
            </div>
        </section>
        <section class="similarity" id="similarity">
            <h3 class="similarity_title">{{ $page->h3 }}</h3>
            <div class="similarity_wrapper">
                <div class="similarity_list_wrapper">
                    <div>
                        <ul class="similarity_list">
                            @foreach(json_decode($page->list2) as $item)
                                <li class="similarity_list_item">{{ $item->text }}</li>
                            @endforeach
                        </ul>
                    </div>
                    <a href="{{ u('cuentos') }}" class="similarity_stories">{{ t('Our Stories') }}</a>
                </div>
                <div class="similarity_slideshow">
                    <div class="slideshow-container2">
                        @foreach(json_decode($page->slider2) as $item)
                            <div class="mySlides2 fade">
                                <img class="slider_images" src="{{ asset($item->url) }}" alt="slide Image">
                            </div>
                        @endforeach
                    </div>
                    <br>
                    <!-- The dots/circles -->
                    <div class="dot-container1">
                        @foreach(json_decode($page->slider2) as $item)
                            <span class="dot1"></span>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        <section class="bithdayGift">
            <div class="bithdayGift_wrapper">
                <h3 class="bithdayGift_title">{{ $page->birthday_title }}</h3>
                <p class="proposition_description">{{ $page->birthday_text }}</p>

                @include('partials.birthday_form')

            </div>
        </section>

        @if(!empty(json_decode($page->faqs)))
            <section class="faqs_wrapper" id="faq">
                <div class="faqs">
                    <h3 class="faq_title">{{ t('FAQs') }}</h3>
                    <div class="faqs_wrapper-item owl-carousel" id="faqWrapp">
                        @foreach(json_decode($page->faqs) as $item)
                            <div class="{{ $item->class }} faq_item">
                                <h4 class="faq_item_title">{{ $item->title }}</h4>
                                <img src="{{ asset($item->url) }}" alt="kids image" class="">
                                <p class="faqs_descr">{{ $item->text }}</p>
                                @if($item->class == 'delivery')
                                    <form action="{{ u('get-delivery') }}" method="post">
                                        @csrf
                                        <div class="country" id="country_delivery_drop">
                                            <p id="selectCountry" class="select_country">{{ get_delivery_countries()->first()->name }}</p>
                                            <img src="{{ asset('images/indexPage/down-arrow.svg') }}" alt="arrow">
                                            <div class="drop_hidden2" id="country_delivery_drop_items">
                                                @foreach(get_delivery_countries() as $key => $country)
                                                    <div class="dropdown_item2">
                                                        <div class="dropdowm_inner_item2">
                                                            <input type="radio" id="f131{{ $key }}" name="country_id" value="{{ $country->id }}" class="l2">
                                                            <label for="f131{{ $key }}" class="c1">{{ $country->name }}</label>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>

                                        <span class="duration"><span class="delivery-days">{{ get_delivery_days(get_delivery_countries()->first()->id) }}</span> {{ t('days') }}</span>

                                    </form>
                                @endif
                            </div>
                        @endforeach
                    </div>
                    <div class="allQuestions">
                        <img src="{{ asset('images/indexPage/arrow-point-to-right_blue_copy.svg') }}" alt="slider arrow"
                             class="faq_slider-arrow" id="faqPrevious">
                        <a href="{{ u('faq') }}" class="allQuestions_link">{{ t('See All the Questions') }}</a>
                        <img src="{{ asset('images/indexPage/arrow-point-to-right_blue.svg') }}" alt="slider arrow"
                             class="faq_slider-arrow" id="faqNext">
                    </div>
                </div>
            </section>
        @endif

        <section class="yourStory">
            <h3 class="yourStory_title">{{ $page->h3_2 }}</h3>
            <div class="image_box">
                <div>
                    <img src="{{ asset('images/indexPage/smile-kids.png') }}" alt="kids image" class="kids1">
                </div>
                <div>
                    <div>
                        <img src="{{ asset('images/indexPage/little_girl_reading.png') }}" alt="kids image" class="kids2">
                        <img src="{{ asset('images/indexPage/kiki-reading.png') }}" alt="kids image" class="kids3">
                    </div>
                    <div>
                        <img src="{{ asset('images/indexPage/smile-town.png') }}" alt="kids image" class="kids4">
                    </div>
                </div>
                <div>
                    <img src="{{ asset('images/indexPage/reading-kids.png') }}" alt="kids image" class="kids5">
                </div>
            </div>
            <div class="test_wrapper-bg">
                <div class="test_bg"></div>
            </div>
        </section>

        @if(!empty(json_decode($page->reviews)))
            <section class="about" id="about">
                <div class="about_wrapper">
                    <h3 class="about_title">{{ $page->h3_3 }}</h3>
                    <div class="about_items-wrapper">
                        <div class="about_items" id="aboutWrapp">

                            @foreach(json_decode($page->reviews) as $item)
                                <div class="about_item">
                                    <img src="{{ asset($item->url) }}" alt="{{ $item->title }}" class="kids_img ">
                                    <div class="about_item_description">
                                        <p class="name">{{ $item->title }}</p>
                                        <img src="{{ asset('images/indexPage/quotes.png') }}" alt="quotes">
                                        <p class="martin">{{ $item->text }}</p>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                    <div class="reviews">
                        <img src="{{ asset('images/indexPage/about-arrow-left.svg') }}" width="13" height="22" alt="slider arrow"
                             class="slider_arrow" id="aboutSliderPrev">
                        {{--<a href="#" class="all_reviwes-link"> {{ t('See All Reviews') }}</a>--}}
                        <img src="{{ asset('images/indexPage/about-arrow-right.svg') }}" alt="slider arrow" width="13" height="22"
                             class="slider_arrow" id="aboutSliderNext">
                        <img src="{{ asset('images/indexPage/monster1.png') }}" width="176" height="188" alt="monster image"
                             class="revies_monster">
                    </div>
                    <img src="{{ asset('images/indexPage/about-bg.svg') }}" width="1592" height="1093" alt="background image"
                         class="about_bg">
                </div>
            </section>
        @endif

        <section class="contact" id="contact">
            <img src="{{ asset('images/indexPage/about-bg.svg') }}" class="contact_bg" alt="background-image">
            <div class="contact_wrapper">
                <h3 class="contact_title">{{ t('Contact Us') }}</h3>
                <div class="check_in_wrapper">

                    @include('partials.contact_us_form')

                    @if(!empty(json_decode($page->contact_us_questions)))
                    <div class="possible_questions">

                        @foreach(json_decode($page->contact_us_questions) as $item)
                            <p class="possible-questions">{{ $item->text }}</p>
                        @endforeach
                        <img src="{{ asset('images/indexPage/monster1.svg') }}" width="133" height="148" alt="monster image"
                             class="monster_img1">
                        <img src="{{ asset('images/indexPage/mons04.png') }}" width="286" height="301" alt="monster image"
                             class="monster_img2">
                        <img src="{{ asset('images/indexPage/monster6.svg') }}" width="321" height="394" alt="monster image"
                             class="monster_img3">
                    </div>
                    @endif

                </div>
            </div>
        </section>
    </main>

    <script>
        gtag('event', 'load', {'event_category': 'web', 'event_label': 'main_web', 'value':'1'});
    </script>
@endsection