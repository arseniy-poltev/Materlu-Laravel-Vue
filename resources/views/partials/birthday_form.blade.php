<form action="{{ u('birthday') }}" method="post" class="offer_check_in">
    @csrf
    <img src="{{ asset('images/indexPage/monster2.svg') }}" width="251" height="265" class="birsday_monster" alt="M">
    <div class="birthday_text-fields">
        <input type="text" name="name" required class="offer_item offer_item-first" placeholder="{{ t('Kids Name') }}">
        <input type="text" name="email" required class="offer_item" placeholder="{{ t('Your Email') }}">
        <input type="text" name="date" required class="offer_item" placeholder="{{ t('Full Birth Date') }}">
    </div>
    <div class="form_footer">
        <input type="submit" class="offer_send" value="{{ t('Send') }}"><br>
        <input type="checkbox" name="privacy" required class="check">
        <span class="agree">{{ t('I have read and agree') }} <a href="{{ u('privacy')}}" class="privacy_link"> {{ t('Privacy Policy') }}</a></span>
    </div>
</form>