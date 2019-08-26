$( document ).ready(function() {

    $('.stripe-form-submit').on('click', function () {
        $('.stripe-payment-form').submit();
    });

    $('.review_submit_butt').on('click', function () {
        $('#customize_review_form').submit();
    });

    $('.remote_code').on('click', function () {
        $('#discountCode').submit();
    });
   

    Stripe.setPublishableKey($('[name=stripe_public_key]').val());
    function stripeResponseHandler(status, response) {
        if (response.error) {
            // re-enable the submit button
            $('.submit-button').removeAttr("disabled");
            // show the errors on the form
            $(".payment-errors").html(response.error.message);
        } else {
            var form$ = $(".stripe-payment-form");
            // token contains id, last4, and card type
            var token = response['id'];
            // insert the token into the form so it gets submitted to the server
            form$.append("<input type='hidden' name='stripeToken' value='" + token + "' />");
            // and submit
            form$.get(0).submit();
        }
    }

    $(".stripe-payment-form").submit(function(event) {
        // disable the submit button to prevent repeated clicks
        // $('.submit-button').attr("disabled", "disabled");
        // createToken returns immediately - the supplied callback submits the form if there are no errors
        Stripe.createToken({
            number: $(".stripe-payment-form").find('[name=card_number]').val(),
            cvc: $(".stripe-payment-form").find('[name=cvc]').val(),
            exp_month: $(".stripe-payment-form").find('[name=date]').val().split('/')[0],
            exp_year: $(".stripe-payment-form").find('[name=date]').val().split('/')[1]
        }, stripeResponseHandler);
        return false; // submit from callback
    });

    $('.stripe-payment-form').find('[name=card_number]').mask('0000 0000 0000 0000');
    $('.stripe-payment-form').find('[name=cvc]').mask('0000');
    $('.stripe-payment-form').find('[name=date]').mask('00/00');
    
    $('input[name=dedication_picture]').on('change', function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.dedication_picture_preview img').attr('src', e.target.result);
                $('.dedication_picture_preview').addClass('image_exists');
            };

            reader.readAsDataURL(this.files[0]);
        }
    });

    $('#remove_dedication_picture').on('click', function (e) {
        e.preventDefault();
        $('.dedication_picture_preview').removeClass('image_exists');
        $('.dedication_picture_preview img').attr('src', '');
        $('[name=dedication_picture]').val('');
        $('[name=dedication_picture_old]').val('');
        $(this).hide();
    });

    /////////// ETAGS /////////////
    $('#create_story_btn').on('click', function () {
        gtag('event', 'create_story', {'event_category': 'web', 'event_label': 'main_web', 'value':'1'});
    });
    $('#create_story_customized_form').on('submit', function () {
        gtag('event', 'create_story_customized', {'event_category': 'web', 'event_label': 'main_web', 'value':'1'});
    });
    $('.customize_book').on('click', function (e) {
        gtag('event', 'to_customize_' + $(this).data('id'), {'event_category': 'web', 'event_label': 'customize', 'value':'1'});
    });
    $('#customize_name_form').on('submit', function () {
        gtag('event', 'to_appearance_' + $('[name=story_id]').val(), {'event_category': 'customize', 'event_label': 'name', 'value':'1'});
    });
    $('#customize_appearance_form').on('submit', function () {
        gtag('event', 'to_dedication_' + $('[name=story_id]').val(), {'event_category': 'customize', 'event_label': 'appearance', 'value':'1'});
    });
    $('#customize_dedication_form').on('submit', function () {
        gtag('event', 'to_review_' + $('[name=story_id]').val(), {'event_category': 'customize', 'event_label': 'dedication', 'value':'1'});
    });
    $('#customize_review_form').on('submit', function () {
        gtag('event', 'to_review_' + $('[name=story_id]').val(), {'event_category': 'customize', 'event_label': 'review', 'value':'1'});
    });
    $('.go_to_checkout_btn').on('click', function () {
        gtag('event', 'to_checkout', {'event_category': 'basket', 'event_label': 'main_web', 'value':'1'});
    });
    $('#checkout-form').on('submit', function () {
        if($(this).find('[name=payment_method]').val() === 'card') {
            gtag('event', 'to_stripe', {'event_category': 'basket', 'event_label': 'checkout', 'value':'1'});
        }
    });
    $('.stripe-payment-form').on('submit', function () {
        gtag('event', 'to_pay', {'event_category': 'basket', 'event_label': 'stripe', 'value':'1'});
    });

    $('.scrollable-menu a').on('click', function (e) {
        e.preventDefault();

        var anchor = $($(this).data('anchor'));

        if(anchor.length){
            $('html, body').animate({
                scrollTop: $(anchor).offset().top
            }, 500);
        } else {
            location.href = $(this).attr('href');
        }
    });

    $('.customize_name_form_btn').on('click', function () {
        $('form#customize_name_form').submit();
    });
    $('.customize_appearance_form_btn').on('click', function () {
        $('form#customize_appearance_form').submit();
    });
    $('.customize_dedication_form_btn').on('click', function () {
        $('form#customize_dedication_form').submit();
    });


    /* Скрипт на менюху надо его куда-то добавить ибо его нет */
    let menuIcon = document.querySelector("#menuIcon");
    let navigation = document.querySelector("#navigation");
    let cancelMenu = document.querySelector("#cancelMenu");
    menuIcon.onclick = function () {
        navigation.classList.remove("navigation");
        navigation.classList.add("show_menu");
        menuIcon.style.display = "none";
        cancelMenu.style.display = "block";

    }
    cancelMenu.onclick = function () {
        navigation.classList.remove("show_menu");
        navigation.classList.add("navigation");
        menuIcon.style.display = "block";
        cancelMenu.style.display = "none";

        if (menuIcon.style.display === "block") {
            menuIcon.removeAttribute("style");
        }


    }

    /* Слайдер на хоум странице для блока Faq  добавить*/

    let faqPrevious = document.querySelector("#faqPrevious");
    let faqWrapp = document.querySelector("#faqWrapp");
    if(faqPrevious) {
        faqPrevious.onclick = function () {
            faqWrapp.classList.add("next_faq-item");

        }
    }

    let faqNext = document.querySelector("#faqNext");

    if(faqNext) {
        faqNext.onclick = function () {
            if (faqWrapp.classList.contains("next_faq-item")) {
                faqWrapp.classList.remove("next_faq-item");
            }

        }
    }

    /* Слайдер на хоум странице для блока About  добавить*/
    let aboutSliderPrev = document.querySelector("#aboutSliderPrev");
    let aboutSliderNext = document.querySelector("#aboutSliderNext");
    let aboutWrapp = document.querySelector("#aboutWrapp");

    if(aboutSliderPrev) {
        aboutSliderPrev.onclick = function () {
            aboutWrapp.classList.add("next_about-item");
        }
    }

    if(aboutSliderNext) {
        aboutSliderNext.onclick = function () {
            if (aboutWrapp.classList.contains("next_about-item")) {
                aboutWrapp.classList.remove("next_about-item");
            }

        }
    }

    function check_progress_bar() {
        if ($('.progress2').outerWidth() == 65) {
            $('.on_progress2-desktop').removeClass('on_progress2-desktop').addClass('on_progress2-mobile');
        } else {
            $('.on_progress2-mobile').removeClass('on_progress2-mobile').addClass('on_progress2-desktop');
        }
    }
    $(window).resize(function () {
        check_progress_bar();
    });
    check_progress_bar();

    $('.language-check').on('click', function () {
        location.href = $(this).data('href');
    });

    $("#faqWrapp.owl-carousel").owlCarousel({
        // loop:true,
        responsiveClass:true,
        // autoplay:true,
        responsive:{
            0:{
                items:2,
                nav:false
            },
            800:{
                items:3,
                nav:false
            }
        }
    });

});