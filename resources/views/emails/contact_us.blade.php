@component('mail::message')

{!! nl2br($email->content) !!}

@endcomponent