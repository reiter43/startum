
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
                margin: 150,
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

    // $('.metods__slider').slick({
    //     infinite: true,
    //     slidesToShow: 4,
    //     slidesToScroll: 1,
    //     arrows: true,
    // 	prevArrow: '<div class="slick-rightArrow"></div>',
    // 	nextArrow: '<div class="slick-leftArrow"></div>',
    //     responsive: [
    //         {
    //             breakpoint: 1200,
    //             settings: {
    //                 // arrows: false,                    
    //                 centerPadding: '40px',
    //                 slidesToShow: 3
    //             }
    //         },
    //         {
    //             breakpoint: 996,
    //             settings: {
    //                 // arrows: false, 
    //                 slidesToShow: 2
    //             }
    //         },
    //         {
    //             breakpoint: 750,
    //             settings: {
    //                 arrows: false,  
    //                 slidesToShow: 2                  
    //             }
    //         },
    //         {
    //             breakpoint: 576,
    //             settings: {
    //                 arrows: false,
    //                 centerMode: true,
    //                 centerPadding: '50px',
    //                 slidesToShow: 1
    //             }
    //         },
    //         {
    //             breakpoint: 375,
    //             settings: {
    //                 arrows: false,
    //                 centerMode: true,
    //                 centerPadding: '40px',
    //                 slidesToShow: 1
    //             }
    //         }
    //     ]
    // });

    // 	//Плавный переход к якорям с помощью плагина PageScroll2
    // 	$(".nav__link").mPageScroll2id({
    // 		scrollSpeed: 1000,
    // 		offset: -80
    // 	});


    // 	//МОдальное окно с помощью плагина magnefic-popap
    // 	$('.portfolio__item').magnificPopup({
    // 		type: 'image',
    // 		zoom: {
    // 			enabled: true,
    // 			duration: 500 // продолжительность анимации
    // 		},
    // 		gallery: {
    // 			enabled: true
    // 		}
    // 	});


    // 	// Анимация цифр плагином spincrement
    // 	var show = true;
    // 	var countbox = ".indicators__items";

    // 	$(window).on("scroll load resize", function(){

    // 		if(!show) return false;

    // 		var w_top = $(window).scrollTop();
    // 		var e_top = $(countbox).offset().top;
    // 		var w_height = $(window).height();
    // 		var d_height = $(document).height();
    // 		var e_height = $(countbox).outerHeight();

    // 		if(w_top + 300 >= e_top || w_height + w_top == d_height || e_height + e_top < w_height){
    // 			$(".spincrement").spincrement({				
    // 				duration: 1200
    // 			});

    // 			show = false;
    // 		}
    // 	});
    // });


    // // Инициализация слик-слайдера
    // $(document).ready(function(){
    // $('.reviews__slider').slick({
    //     centerMode: true,
    //     centerPadding: '60px',
    //     slidesToShow: 3,
    //     responsive: [
    //       {
    //         breakpoint: 768,
    //         settings: {
    //           arrows: false,
    //           centerMode: true,
    //           centerPadding: '40px',
    //           slidesToShow: 3
    //         }
    //       },
    //       {
    //         breakpoint: 480,
    //         settings: {
    //           arrows: false,
    //           centerMode: true,
    //           centerPadding: '40px',
    //           slidesToShow: 1
    //         }
    //       }
    //     ]
    //   });
});







