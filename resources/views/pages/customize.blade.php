@extends('layouts.app')

@section('content')

    <main>

        <div class="back_link_wrapper">
            <a href="{{ u('cuentos') }}" class="back_link">
                <img src="{{ asset('images/characterPage/back-arrow.png') }}" alt="arrow image">
                <span class="back_link_text">Stories</span>
            </a>
        </div>


        <h3 class="character_title">Character set up</h3>

        <div class="progressbar">
            <div class="progressbar_images">
                <div class="progress1" ></div>
                <div class="progress2" id="progress2"></div>
                <div class="progress3" id="progress3"></div>
                <div class="progress4" id="progress4"></div>
                <div class="progress5" id="progress5"></div>

            </div>
            <div class="progressbar_descr">
                <span class="progressbar_descr-item">Name</span>
                <span class="progressbar_descr-item">Appearance</span>
                <span class="progressbar_descr-item">Dedication</span>
                <span class="progressbar_descr-item">Review</span>
            </div>
        </div>


        <div class="apearence" id="apBox">

            <form action="handler" class="apearence_form">
                <h4 class="form_title">What's your character's name?</h4>
                <input type="text" placeholder="Character's Name" class="char_name" id="charName">
                <p class="gender">Gender</p>

                <div class="gender_choise">
                    <input type="radio" id="r1" name="gender_choice" value="girl" class="gender_check">
                    <label for="r1" class="char_Settings_lable">Girl</label>
                    <img src="{{ asset('images/indexPage/settings-girl.svg') }}" alt="girl" class="char_Settings_girl">
                    <input type="radio" id="r2" name="gender_choice" value="boy" class="gender_check">
                    <label for="r2" class="char_Settings_lable">Boy</label>
                    <img src="{{ asset('images/indexPage/martin.svg') }}" alt="boy" class="char_Settings_boy">
                </div>


                <div class="char_settings">
                    <div class="char_language">
                        <div class="select_wrapper2">
                            <span class="select_title" id="formLanguage">Language of the story</span>
                            <div class="select_items2" id="language1">
                                <img src="{{ asset('images/indexPage/united-states.svg') }}" alt="united states" class="united_states" id="charCountry">
                                <span class="char_settings-language" id="charBox">English </span>
                                <img src="{{ asset('images/indexPage/down-arrow.svg') }}" width="15" height="8" alt="arrow">
                            </div>


                            <div class="drop_hidden3" id="dropdown2">
                                <div class="dropdown_item1">
                                    <div class="dropdowm_inner_item1">
                                        <img src="{{ asset('images/indexPage/united-states.svg') }}" class="country_icon" alt="country icon">
                                        <input type="radio" id="f7" name="f6" class="l1">
                                        <label for="f7" class="c2">English </label></div>
                                </div>
                                <div class="dropdown_item1">
                                    <div class="dropdowm_inner_item1">
                                        <img src="{{ asset('images/indexPage/spain.svg') }}" class="country_icon" alt="country icon">
                                        <input type="radio" id="f8" name="f6" class="l1">
                                        <label for="f8" class="c2">Spanish </label></div>
                                </div>
                                <div class="dropdown_item1">
                                    <div class="dropdowm_inner_item1">
                                        <img src="{{ asset('images/indexPage/france.svg') }}" class="country_icon" alt="country icon">
                                        <input type="radio" id="f9" name="f6" class="l1">
                                        <label for="f9" class="c2">French </label></div>
                                </div>
                                <div class="dropdown_item1">
                                    <div class="dropdowm_inner_item1">
                                        <img src="{{ asset('images/indexPage/germany.svg') }}" class="country_icon" alt="country icon">
                                        <input type="radio" id="f10" name="f6" class="l1">
                                        <label for="f10" class="c2">German </label></div>
                                </div>
                                <div class="dropdown_item1">
                                    <div class="dropdowm_inner_item1">
                                        <img src="{{ asset('images/indexPage/italy.svg') }}" class="country_icon" alt="country icon">
                                        <input type="radio" id="f11" name="f6" class="l1">
                                        <label for="f11" class="c2">Italian </label></div>
                                </div>
                                <div class="dropdown_item1">
                                    <div class="dropdowm_inner_item1">
                                        <img src="{{ asset('images/indexPage/portugal.svg') }}" class="country_icon" alt="country icon">
                                        <input type="radio" id="f12" name="f6" class="l1">
                                        <label for="f12" class="c2">Portuguese </label></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="font_style">
                        <p class="font_style-title">Font Style</p>
                        <input type="radio" id="r3" name="font-style" value="girl" class="gender_check">
                        <label for="r3" class="style_Settings_lable">Standard</label>
                        <input type="radio" id="r4" name="font-style" value="boy" class="gender_check">
                        <label for="r4" class="storySettings_lable">UPPERCASE </label>

                    </div>
                </div>


                <button class="apearence_butt" id="apearence">Apearence <img src="{{ asset('images/characterPage/right-arrow.png') }}" alt="arrow" class="button_arrow"> </button>
            </form>



            <div class="advice_box">
                <div class="advice">
                    <p class="advice_text">We suggest you write the name or nickname that you usually call your child.</p><br>
                    <p class="advice_text">Remember that the name is repeated throughout the story and using long names can be a bit repetitive
                        and unnatural.</p><br>
                    <p class="advice_text">Check your spelling, bearing in mind it's a present that will last a lifetime.</p><br>
                </div>
            </div>
        </div>


    </main>

@endsection