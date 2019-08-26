@extends('layouts.app')

@section('content')

    <main>
        <h1 class="page_title">{{ $page->title }}</h1>
        <div class="faq content-page">
            <article class="faq_item first">
                <div class="answer">{!!  $page->content  !!}</div>
            </article>
        </div>
    </main>

@endsection