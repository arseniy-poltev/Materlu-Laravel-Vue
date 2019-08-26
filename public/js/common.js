$(document).ready(function() {

    /*----------delivery type dropdown------------ */
    $('#basket_type_delivery_drop_items').on('click', function(e) {
        e.preventDefault();
        $('#dropdownDeliveryType').toggleClass('dropdown2');
    });
    $('#basket_type_delivery_drop_items .dropdown_item2').on('click', function(e) {
        e.preventDefault();
        $('#select_type').text($(this).find('.dropdown_inner_item2-text').text());
    });




    $(".faq-page .faq_item").click(function() {
        $(this).find(".answer").slideToggle(200);
    });

    $('#language').on('click', function() {
        $('#dropdown').toggleClass('dropdown');
    });

    $('#language2').on('click', function() {
        $('#dropdown3').toggleClass('dropdown3');
    });

    $('.currency').on('click', function() {
        $('#dropdown4').toggleClass('dropdown4');
    });

    $('.category').on('click', function() {
        $('#dropdown6').toggleClass('dropdown6');
    });

    $('#dropDown1').on('click', function() {
        $('#dropdown0').toggleClass('dropdown0');
    });

    let drop1 = document.querySelector("#language1");
    let dropList1 = document.querySelector("#dropdown2");
    let dropList1Items = document.querySelectorAll(".l1");
    let charBox = document.querySelector("#charBox");
    let charCountry = document.querySelector("#charCountry");

    if (drop1) {
        drop1.onclick = function() {
            dropList1.classList.toggle("dropdown1");
        };


        for (let i = 0; i < dropList1Items.length; i++) {
            dropList1Items[i].onclick = function() {
                charBox.innerHTML = dropList1Items[i].nextSibling.parentNode.textContent;
                charCountry.src = dropList1Items[i].previousSibling.previousSibling.getAttribute("src");
                dropList1.classList.remove("dropdown1");
            }
        }
    }
    ////////////////////////

    $(".cancel_popup-js").on("click", function() {
        $(".popup-js").addClass("pop_hidden");
        $(".popup_bg-js").addClass("pop_hidden");

    });

    $(".discount__holder-question-js").on("click", function() {
        $(".discount__holder-question").addClass("none");
        $(".discount__holder-disabled").addClass("discount__holder-active");
    });

    $(window).scroll(function() {
        $(".popup-js").css({ 'top': $(window).scrollTop() + 100 })
    });

    $('#basket_country_delivery_drop_items').on('click', function(e) {
        e.preventDefault();
        $('#dropdown2').toggleClass('dropdown2');
    });

    $('#basket_country_delivery_drop_items .dropdown_item2').on('click', function(e) {
        e.preventDefault();
        $('#selectCountry').text($(this).find('.dropdown_inner_item2-text').text());



        var form = $(this).closest('form');
        $.post(
            form.attr('action'), {
                '_token': form.find('[name=_token]').val(),
                'country_id': $(this).data('country-id')
            },
            function(response) {
                if (response.status) {
                    $('.delivery-days').text(response.data.delivery_days);
                    $('.shipping_price-count').text(response.data.price);
                    $('.delivery_price').text(response.data.price);
                    $('.total_price').text(response.total_price);
                }
            }
        );
    });

    ///////////////////////

    $('#country_delivery_drop').on('click', function() {
        $('#country_delivery_drop_items').toggleClass('dropdown2');
    });
    $('#country_delivery_drop_items .dropdown_item2').on('click', function(e) {
        e.preventDefault();
        e.stopPropagation();

        $('#country_delivery_drop .select_country').text($(this).find('label').text());
        $('#country_delivery_drop_items').removeClass('dropdown2');

        var form = $(this).closest('form');
        $.post(
            form.attr('action'), {
                '_token': form.find('[name=_token]').val(),
                'country_id': $(this).find('[name=country_id]').val()
            },
            function(response) {
                if (response.status) {
                    $('.delivery-days').text(response.data.delivery_days);
                }
            }
        );
    });

    $('.payment-drop #drop2').on('click', function() {
        $('.payment-drop #dropdown5').toggleClass('dropdown5');
    });
    $('.payment-drop #drop3').on('click', function() {
        $('.payment-drop #dropdown6').toggleClass('dropdown6');
    });

    // added by Xiuna 2019/07/17





    function changeCountry(id) {
        $.post(
            $('[name=action_url]').val(), {
                '_token': $('[name=_token]').val(),
                'country_id': id
            },
            function(response) {
                if (response.status) {
                    $('.shipping_price-count').text(response.data.price);
                    $('.delivery_price').text(response.data.price);
                    $('.total_price').text(response.total_price);
                }
            }
        );
    }
    $("#btnSearchAccessPoint").on('click', function(e) {
        var country = $('.payment-drop #dropdown6 .dropdown_item2').find('[name=delivery_country_id]').val();
        var zipCode = $('#delivery_zip_code').val();
        console.log(country + zipCode);
    });
    $("#btnToHomeDelivery").on('click', function(e) {
        e.preventDefault();
        $("#address_mode").val(0);
        $("#select-access-point").css('display', 'none');
        $("#select-home-delivery").css('display', '');

    });
    $("#btnToAccessPoint").on('click', function(e) {

        e.preventDefault();
        $("#address_mode").val(1);
        $("#select-access-point").css('display', '');
        $("#select-home-delivery").css('display', 'none');

    });
    $('.payment-drop #dropdown6 .dropdown_item2').on('click', function(e) {
        e.preventDefault();
        $('.payment-drop #dropdown6').removeClass('dropdown6');
        $('.payment-drop #drop3 #selectCountry').text($(this).find('label').text());
        changeCountry($(this).find('[name=delivery_country_id]').val());
    });

    $('.payment-drop #dropdown5 .dropdown_item2').on('click', function(e) {
        e.preventDefault();
        $('.payment-drop #dropdown5').removeClass('dropdown5');
        $('.payment-drop #drop2 #selectCountry').text($(this).find('label').text());
        changeCountry($(this).find('[name=delivery_country_id]').val());
    });
    // -------------------------------------------------------------------

    // TODO
    // $('#drop2').on('click', function () {
    //     $('#dropdown5').toggleClass('dropdown5');
    // });
    // $('#dropdown5 .dropdown_item2').on('click', function () {
    //     $('#dropdown5').removeClass('dropdown5');
    //     $('#drop2 #selectCountry').text($(this).find('label').text());
    // });

    $('#dropdown6 .l3').on('click', function() {
        $(this).closest('form').submit();
    });
    $('#dropdown4 .l3').on('click', function() {
        $(this).closest('form').submit();
    });

    $('#dropdown0 .l3').on('click', function() {
        $(this).closest('form').submit();
    });

    $('.l1').on('click', function(e) {
        e.stopPropagation();
        $(this).closest('form').find('#countryBox2').attr('src', $(this).siblings('img').attr('src'));
        $(this).closest('form').find('#headerLanguage').text($(this).siblings('label').text());

        $('#dropdown').removeClass('dropdown');
    });

    if ($('#manual').length) {
        var slideIndex = 0;
        showSlides();

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var slides1 = document.getElementsByClassName("mySlides2");
            var dots = document.getElementsByClassName("dot");
            var dots1 = document.getElementsByClassName("dot1");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
                slides1[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
                dots1[i].className = dots1[i].className.replace(" active1", "");
            }
            slides[slideIndex - 1].style.display = "block";
            slides1[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            dots1[slideIndex - 1].className += " active1";
            var timer = setTimeout(showSlides, 10000); // Change image every 10 seconds

        }
    }

});