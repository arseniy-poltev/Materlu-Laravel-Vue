<footer>
    <div class="links">
        <div class="copy">{!! \App\Models\Setting::get('footer_copyright') !!}</div>
        <div>
            <ul class="bottom_nav scrollable-menu">

                @foreach(App\Models\MenuItem::getTree('Menu 1') as $menuItem)
                    <li class="bottom_nav_item1"><a href="{{ u() . $menuItem->link }}" data-anchor="{{ $menuItem->link }}">{{ $menuItem->name }}</a></li>
                @endforeach

            </ul>
        </div>
        <div>
            <ul class="bottom_nav">
                @foreach(App\Models\MenuItem::getTree('Menu 2') as $menuItem)
                    <li class="bottom_nav_item2"><a href="{{ $menuItem->url() }}">{{ $menuItem->name }}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="social-links-holder">
            @if(\App\Models\Setting::get('google_play'))<a href="{{ \App\Models\Setting::get('google_play') }}" target="_blank" class="google-social-link"></a>@endif
            @if(\App\Models\Setting::get('apple_store'))<a href="{{ \App\Models\Setting::get('apple_store') }}" target="_blank" class="apple-social-link"></a>@endif
            @if(\App\Models\Setting::get('facebook'))<a href="{{ \App\Models\Setting::get('facebook') }}" target="_blank"><i class="fab fa-facebook-f"></i></a>@endif
            @if(\App\Models\Setting::get('google_plus'))<a href="{{ \App\Models\Setting::get('google_plus') }}" target="_blank"><i class="fab fa-google-plus"></i></a>@endif
            @if(\App\Models\Setting::get('instagram'))<a href="{{ \App\Models\Setting::get('instagram') }}" target="_blank"><i class="fab fa-instagram"></i></a>@endif
            @if(\App\Models\Setting::get('twitter'))<a href="{{ \App\Models\Setting::get('twitter') }}" target="_blank"><i class="fab fa-twitter"></i></a>@endif
            @if(\App\Models\Setting::get('pinterest'))<a href="{{ \App\Models\Setting::get('pinterest') }}" target="_blank"><i class="fab fa-pinterest"></i></a>@endif
        </div>
    </div>
    <div class="selectBox_wrapper">
        <div class="selectBox">
            <div class="select_wrapper currency">
                <span class="select_title">{{ t('Currency') }}</span>
                <div class="select_items" id="dropDown4">
                    <span id="currency">{{ get_current_currency()->name }}</span>
                    <img src="{{ asset('images/indexPage/down-arrow.svg') }}" width="15" height="8" alt="arrow"
                         class="shape">
                </div>
                <div class="drop_hidden4" id="dropdown4">
                    <form id="change-currency-form" action="{{ u('currency') }}" method="post">
                        @csrf
                        @foreach (get_currencies() as $key => $item)
                            <div class="dropdown_item1">
                                <input type="radio" id="currency-2{{ $key }}" name="currency" value="{{ $item->code }}"
                                       class="l3">
                                <label for="currency-2{{ $key }}" class="c1">{{ $item->name }}</label>
                            </div>
                        @endforeach
                    </form>
                </div>
            </div>
            <div class="select_wrapper" id="language2">
                <span class="select_title" id="footerLanguage">{{ t('Language') }}</span>
                <div class="select_items">
                    <img src="{{ asset(get_current_language()->flag) }}" alt="{{ get_current_language()->name }}"
                         class="united_states" id="countryImg">
                    <span id="selectLanguage">{{ get_current_language()->name }} </span>
                    <img src="{{ asset('images/indexPage/down-arrow.svg') }}" width="15" height="8" alt="arrow"
                         class="shape">
                </div>
                <div class="drop_hidden3" id="dropdown3">
                    @foreach (get_active_languages() as $key => $lang)
                        <div class="dropdown_item1">
                            <div class="dropdowm_inner_item1">
                                <img src="{{ asset($lang->flag) }}" class="country_icon" alt="country icon">
                                <input type="radio" id="f{{ $key }}" name="locale" value="{{ $lang->abbr }}"
                                       class="l2 foot">
                                <span class="c1 language-check" data-href="{{ change_locale($lang->abbr) }}">{{ $lang->name }} </span>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</footer>