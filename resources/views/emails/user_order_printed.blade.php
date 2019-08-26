@component('mail::message')

{!! nl2br($email->content) !!}

@component('mail::button', ['url' => $data->OrderLink])
    {{ t('View order') }}
@endcomponent

@endcomponent