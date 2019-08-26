<section class="header_wrapper">

    @if($page->slug != '/')
        <img src="{{ asset('images/storyPage/header-bg.svg') }}" width="557" height="462" alt="" class="header_bg">
        <img src="{{ asset('images/storyPage/monster1.png') }}" alt="monster image" class="header_monster">
    @endif

    <header>
        <a href="{{ u('/') }}">
            <div class="logo">
                <img src="{{ asset('images/indexPage/materlu_logo.png') }}" alt="logo image" class="logo_img">
            </div>
        </a>
        <div class="navigation" id="navigation">
            <nav>
                <ul class="nav_list scrollable-menu">

                    @foreach(App\Models\MenuItem::getTree('Menu 1') as $menuItem)
                        <li class="nav_item"><a href="{{ u() . $menuItem->link }}" data-anchor="{{ $menuItem->link }}">{{ $menuItem->name }}</a></li>
                    @endforeach

                </ul>
            </nav>

            <div class="header__btn__holder">
                @if($page->slug == '/')
                    @if(get_basket_count())
                        <a href="{{ u('basket') }}"><button class="create_story cart-btn"><i class="fas fa-shopping-cart"></i> {{ get_basket_count() }}</button></a>
                    @endif
                    <a href="{{ u('cuentos') }}" id="create_story_btn"><button class="create_story">{{ t('Create your Story') }}</button></a>
                @endif
            </div>
        </div>
        <img src="{{ asset('images/indexPage/Hamburger_icon.png') }}" width="22" height="22" alt="menu icon"
             id="menuIcon" class="menu_icon">
        <img src="{{ asset('images/indexPage/cancel-icon.png') }}" width="22" height="22" alt="menu icon"
             id="cancelMenu" class="hide_menu-icon">
    </header>

    @if($page->slug == '/')
        <div class="serviceDescription">
            <div class="serviceDescription_text">
                <h1 class="serviceDescription_text_header">{!! nl2br($page->h1) !!}</h1>
                <p class="serviceDescription_text_footer">{{ $page->subtitle }}</p>
            </div>

			<div class="headerMonster headerMonster1"><iframe src="/vendor/monsters/anim001/index.html" class="headerMonster1iframe"></iframe></div>
			<div class="headerMonster headerMonster2"><iframe src="/vendor/monsters/anim002/index.html" class="headerMonsteriframe"></iframe></div>
			<div class="headerMonster headerMonster3"><iframe src="/vendor/monsters/anim003/index.html" class="headerMonsteriframe"></iframe></div>
			<img src="images/indexPage/materlu-books.png" alt="Blonde little kid with personalized Materlu book" class="photo-header">
        </div>
    @endif

</section>