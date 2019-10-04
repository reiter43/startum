// $(document).ready(function () {

// 	//Инициализация слайдера owl-carousel
// 	$(".owl-carousel").owlCarousel({
// 		items: 4,
// 		loop: true,
// 		dots: true,
// 		smartSpeed: 500,
// 		// nav: true,
// 		// autoHeight: true,               
// 		center: true,
// 		// margin: 20,
// 		responsive: { 
// 			0: {
// 				items: 1,
// 			},
// 			320: {
// 				items: 1,
// 			},
// 			576: {
// 				items: 2,
// 			},
// 			720: {
// 				items: 3,
// 			},
// 			992: {
// 				items: 3,
// 			},
// 			1200: {
// 				items: 4,
// 			}
// 		}
// 	});


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










