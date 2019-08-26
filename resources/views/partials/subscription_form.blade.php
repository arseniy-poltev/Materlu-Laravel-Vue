<form action="{{ u('subscribe') }}" method="post">
    @csrf
    <input type="email" name="email" required placeholder="{{ t('Your Email')}}" class="promotion_mail">
    <input type="submit" value="{{ t('Send')}}" class="promotion_send">
    <div class="promotion_convention">
        <input type="checkbox" name="check" required class="check">
        <span class="agree">{{ t('I have read and agree') }} <a href="{{ u('privacy')}}" class="privacy_link"> {{ t('Privacy Policy') }}</a></span>
    </div>
</form>