<form action="{{ u('contact-us') }}" method="post" class="check_in">
    @csrf
    <input type="text" name="name" required class="check_in_item" placeholder="{{ t('Name') }}">
    <input type="email" name="email" required class="check_in_item" placeholder="{{ t('Your Email') }}">
    <input type="text" name="phone" required class="check_in_item" placeholder="{{ t('Your Telephone') }}">
    <input type="text" name="text" class="check_in_item check_in_text">
    <input type="submit" class="check_in_item contact_send" value="{{ t('Send') }}">
    <div class="privacy_policy">
        <input type="checkbox" name="check" required class="check">
        <span class="agree">{{ t('I have read and agree') }} <a href="{{ u('privacy')}}" class="privacy_link"> {{ t('Privacy Policy') }}</a></span>
    </div>
</form>