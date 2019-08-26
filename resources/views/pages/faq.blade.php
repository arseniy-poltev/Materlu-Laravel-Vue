@extends('layouts.app')

@section('content')

    <main>

        <h1 class="page_title">{{ t('FAQs') }}</h1>

        <div class="faq faq-page">

            @foreach(json_decode($page->questions) as $key => $item)
                <article class="faq_item {{ $key == 0 ? 'first' : '' }}">
                    <h2 class="faq_item-title">{{ $item->title }}</h2>
                    <div class="answer">{{ $item->desc }}</div>
                </article>
            @endforeach

        </div>


    </main>

@endsection