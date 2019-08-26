@extends('layouts.app')

@section('content')

<main>

    <section class="chooseStory">
        <h3 class="chooseCategory_title">{{ t('Select_Category') }}</h3>
        <div class="select_wrapper_category category">
            <div class="select_items" id="dropDown6">
                <span id="currency">{{get_category_by_id($categoryId)}}</span>
                <img src="{{ asset('images/indexPage/down-arrow.svg') }}" width="15" height="8" alt="arrow"
                    class="shape">
            </div>
            <div class="drop_hidden6" id="dropdown6">
                <form id="change-currency-form" action="{{ u('category') }}" method="post">
                    @csrf
                    <div class="dropdown_item1">
                        <a class="c1" href="{{u('cuentos')}}">All</a>
                    </div>
                    @foreach (get_categories() as $key => $item)
                    <div class="dropdown_item1">
                        <input type="radio" id="category-{{ $key }}" name="category" value="{{ $item->id }}" class="l3">
                        <label for="category-{{ $key }}" class="c1">{{ $item->name }}</label>
                    </div>
                    @endforeach
                </form>
            </div>
        </div>



        <h3 class="chooseStory_title">{{ $page->h3 }}</h3>
        <?php 
            if($categoryId != 0){
                $stories = \App\Models\Stories::where('category_id',$categoryId)->get();
            }else{
                $stories = \App\Models\Stories::all();
            }
            
        ?>

        @foreach($stories as $key => $story)

        <div class="chooseStory_item{{ ($key % 3) + 1 }}">
            <div class="chooseStory_item_img">
                <img src="{{ asset($story->thumbnail) }}" alt="story image" width="420" height="289" class="story_img">
                <span class="price">{{ get_story_price($story->id, true) }}</span>
            </div>

            <div class="chooseStory_item_descr">
                <div class="descr_title">
                    <h4 class="story_name">{{ $story->name }}</h4>
                    @if ($story->category)
                    <h6>{{ $story->category->name }}</h6>
                    @endif


                </div>
                <p class="main_descr">{{ $story->description }}</p>

                @if($story->values->count() > 0)
                <p class="values">Main values:</p>
                <div class="icons">
                    @foreach($story->values as $value)
                    <div class="icon_item">
                        <img src="{{ asset($value->img) }}" alt="{{ $value->name }} icon" class="descr_item">
                        <p class="icon_descr">{{ $value->name }}</p>
                    </div>
                    @endforeach
                </div>
                @endif

                <a href="{{ u('customize/' . $story->id) . '/name' }}" class="personalize customize_book"
                    data-id="{{ $story->id }}">{{ t('Personalize this Story') }}</a>
            </div>
        </div>

        @endforeach

    </section>
</main>

<script>
    gtag('event', 'load', {'event_category': 'web', 'event_label': 'customize', 'value':'1'});
</script>

@endsection