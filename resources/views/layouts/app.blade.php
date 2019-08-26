<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>{{ isset($page->meta_title) && $page->meta_title ? $page->meta_title : $page->title }}</title>

    <meta name="description"
        content="{{ isset($page->meta_description) && $page->meta_description ? $page->meta_description : '' }}">
    <meta name="keywords"
        content="{{ isset($page->meta_keywords) && $page->meta_keywords ? $page->meta_keywords : '' }}">

    <meta name="site-url" content="{{ config('app.url') }}">

    <link rel="canonical" href="{{ URL::current() }}">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    @if($page->slug == '/')
    <link rel="stylesheet" href="{{ asset('css/index_style.css') }}">
    @else
    <link rel="stylesheet" href="{{ asset('css/common.css') }}">
    @endif

    <link rel="stylesheet" href="{{ asset('css/normalize.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
    <link rel="stylesheet" href="{{ asset('css/intel_phone/intlTelInput.css') }}">
    <link rel="stylesheet" href="{{ asset('css/phone_number.validate.css') }}">


    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
        integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <link rel="shortcut icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-129498328-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-129498328-1');
    </script>

</head>

<body class="{{ $bodyClass }}">

    @if($page->slug != '/')
    <section class="main_wrapper">
        @endif

        @include('layouts.header')
        @yield('content')

        @if($page->slug != '/')
    </section>
    @endif

    @include('layouts.footer')

    <input type="hidden" name="stripe_public_key" value="{{ env('STRIPE_PUBLIC_KEY') }}">

    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('js/modernizr.js') }}"></script>
    <script src="{{ asset('js/jquery.bookblock.js') }}"></script>
    <script src="{{ asset('js/common.js') }}"></script>
    <script src="https://js.stripe.com/v1/"></script>
    <script src="{{ asset('js/jquery.mask.js') }}"></script>
    <script src="{{ asset('js/custom.js') }}"></script>
    <script src="{{ asset('js/character.js') }}"></script>
    <script src="{{ asset('js/intel_phone/intlTelInput.js') }}"></script>
    <script src="{{ asset('js/phone_number.validate.js') }}"></script>

</body>

</html>