
$(document).ready(function () {

    //Инициализация слайдера owl-carousel в секции reviews
    var owl = $(".reviews__slider");
    owl.owlCarousel({
        items: 1,
        loop: true,
        dots: false,
        smartSpeed: 800,
        nav: false,
        margin: 80,
        lazyLoad: true,
        responsive: {
            750: {
                items: 1,
                margin: 150,
                nav: true,
                navText: [
                    "<span class='slider-prev'></span>",
                    "<span class='slider-next'></span>",
                ],
            },
            996: {
                items: 1,
                margin: 150,
                nav: true,
                navText: [
                    "<span class='slider-prev'></span>",
                    "<span class='slider-next'></span>",
                ],
            },
            1200: {
                items: 1,
                center: true,
                margin: 200,
                autoWidth: true,
                nav: true,
                navText: [
                    "<span class='slider-prev'></span>",
                    "<span class='slider-next'></span>",
                ],
            },
            1450: {
                items: 1,
                center: true,
                margin: 250,
                autoWidth: true,
                nav: true,
                navText: [
                    "<span class='slider-prev'></span>",
                    "<span class='slider-next'></span>",
                ],
            },
            1750: {
                items: 1,
                center: true,
                margin: 300,
                autoWidth: true,
                nav: true,
                navText: [
                    "<span class='slider-prev'></span>",
                    "<span class='slider-next'></span>",
                ],
            },
            1930: {
                items: 1,
                center: true,
                margin: 300,
                autoWidth: true,
                nav: true,
                navText: [
                    "<span class='slider-prev'></span>",
                    "<span class='slider-next'></span>",
                ],
            }
        }
    });

    owl.owlCarousel();

    $(".navSlider__next").click(function () {
        owl.trigger("next.owl.carousel");
    });
    $(".navSlider__prev").click(function () {
        owl.trigger("prev.owl.carousel");
    });

    //Инициализация слайдера owl-carousel в секции metods
    $(".metods__slider").owlCarousel({
        items: 4,
        loop: true,
        dots: false,
        smartSpeed: 800,
        nav: true,
        navText: [
            "<span class='slider-prev'></span>",
            "<span class='slider-next'></span>",
        ],
        lazyLoad: true,
        margin: 30,
        center: false,
        responsive: {
            1200: {
                items: 4,
            },
            996: {
                items: 3,
            },
            750: {
                items: 3,
                nav: false,
            },
            576: {
                items: 2,
            },
            0: {
                items: 1,
                center: true,
                stagePadding: 50,
            },
        }
    });

    //Модальное окно с помощью плагина magnific-popap
    $('.gullery__magnefic').magnificPopup({
        type: 'image',
        zoom: {
            enabled: true,
            duration: 800 // продолжительность анимации
        },
        gallery: {
            enabled: true
        }
    });

    $('a[href*=qu],a[href*=ci],a[href*=oor],a[href*=re],a[href*=cce]').magnificPopup({
        type: 'inline',
        closeBtnInside: false,
        removalDelay: 250,
        mainClass: 'my-mfp-zoom-in ',
    });


    // Скрипт для анимации цифр
    if (window.location.pathname == "/smartum/index.html") {
        var a = 0;
        $(window).scroll(function () {
            var oTop = $('.indicators__item').offset().top - window.innerHeight;

            if (a == 0 && $(window).scrollTop() > oTop + 300) {
                $('.counter').each(function () {
                    $(this).prop('Counter', 0).animate({
                        Counter: $(this).text()
                    }, {
                        duration: 3500,
                        easing: 'swing',
                        step: function (now) {
                            $(this).text(Math.ceil(now));
                        }
                    });
                });
                a = 1;
            }
        });
    }

    // Аякс-запрос с формы magnific
    $(".formModal").submit(function () {
        var th = $(this);
        $.ajax({
            type: "POST",
            url: "mail.php",
            data: th.serialize()
        }).done(function () {
            $.magnificPopup.close();
            th.trigger("reset");
            $('#thanks').removeClass('mfp-hide');
            $('#closeModal').click(function () {
                $('#thanks').addClass('mfp-hide');
            })
        });
        return false;
    });

});







