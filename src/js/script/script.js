
// Скрыть/показать меню
let burger = document.querySelector('.burger');
let nav = document.querySelector('nav.nav');
let bod = document.querySelector('body');

burger.addEventListener('click', event => {
	event.preventDefault;

	if (burger.classList.contains('burger--active')) {
		burger.classList.remove('burger--active');
		document.querySelector('header').style.position = 'relative';
		nav.classList.remove('nav--active');
		nav.style.marginLeft = '101%';
		nav.style.width = '0';
	}
	else {
		burger.classList.add('burger--active');
		document.querySelector('header').style.position = 'static';
		nav.style.marginLeft = '0';
		nav.style.width = '100%';
		nav.classList.add('nav--active');
	}
});


// Показ кнопки на определенной карточке программы
window.addEventListener('resize', function () {
	let screen = document.documentElement.clientWidth;
	let programItems = document.querySelectorAll('.programItem');

	programItems.forEach(elem => {
		if (screen < 1920 && screen > 1200) {
			elem.classList.remove('programItem--button');
			programItems[3].classList.add('programItem--button');
		}
		else if (screen < 1200 && screen > 996) {
			elem.classList.remove('programItem--button');
			programItems[2].classList.add('programItem--button');
		}
		else if (screen < 996 && screen > 576) {
			elem.classList.remove('programItem--button');
			programItems[1].classList.add('programItem--button');
		}
		else {
			elem.classList.remove('programItem--button');
		}
	})
}, false);


// Запуск видеоотзыва в слайдере
let btnVideo = document.querySelectorAll('.btnVideoSlider__wrapper');

btnVideo.forEach(elem => {
	elem.onclick = (event) => {
		elem.parentNode.innerHTML = '<iframe width="560" height="315" src="https://www.youtube.com/embed/lTKr_Sb4xq4" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
	};
});


// Фильтрация центров и карт в контактах
let centers = document.querySelectorAll('.listCenter ul li button');

centers.forEach(elem => {
	elem.onclick = (event) => {
		event.preventDefault();
		document.querySelector('.mapContacts p').classList.add('hide');

		centers.forEach(elem => {
			elem.classList.remove('active');
			event.target.classList.add('active');
		});

		let map = document.querySelectorAll('.mapContacts iframe');
		let centersData = elem.getAttribute('data-center');

		map.forEach(elem => {
			elem.classList.add('hide');
			if (elem.classList.contains(centersData)) {
				elem.src = elem.getAttribute('data-map');
				elem.classList.remove('hide');
			}
		})
	}
})

// Фильтрация вопросов
let quests = document.querySelectorAll('.faq .faq__content .faq__quest>p');

quests.forEach(item => {
	item.onclick = (event) => {
		event.preventDefault();

		quests.forEach(item => {
			item.classList.remove('active');
			event.target.classList.add('active');
		});

		let answers = document.querySelectorAll('.faq__answer div');
		let questsData = item.getAttribute('data-answer');

		answers.forEach(item => {
			item.classList.add('hide');
			if (item.classList.contains(questsData)) {
				item.classList.remove('hide');
			}
		})
	};
});


// Запуск видеоролика о центре в москве
let btnVi = document.querySelectorAll('.btnVideo__wrapperCenters');

btnVi.forEach(elem => {
	elem.onclick = (event) => {
		elem.parentNode.innerHTML = '<iframe width="560" height="315" src="https://www.youtube.com/embed/XClbPtMlQVo"  allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
	};
});


//Скрипт для маски ввода телефона
window.addEventListener("DOMContentLoaded", function () {
	[].forEach.call(document.querySelectorAll('.form__phone'), function (input) {
		let keyCode;

		function mask(event) {
			event.keyCode && (keyCode = event.keyCode);
			let pos = this.selectionStart;
			if (pos < 3) event.preventDefault();

			let matrix = "+7 (___) ___ ____",
				i = 0,
				def = matrix.replace(/\D/g, ""),
				val = this.value.replace(/\D/g, ""),
				new_value = matrix.replace(/[_\d]/g, function (a) {
					return i < val.length ? val.charAt(i++) || def.charAt(i) : a
				});
			i = new_value.indexOf("_");

			if (i != -1) {
				i < 5 && (i = 3);
				new_value = new_value.slice(0, i)
			}

			let reg = matrix.substr(0, this.value.length).replace(/_+/g,
				function (a) {
					return "\\d{1," + a.length + "}"
				}).replace(/[+()]/g, "\\$&");

			reg = new RegExp("^" + reg + "$");

			if (!reg.test(this.value) || this.value.length < 5 || keyCode > 47 && keyCode < 58) this.value = new_value;
			if (event.type == "blur" && this.value.length < 5) this.value = ""
		}

		input.addEventListener("input", mask, false);
		input.addEventListener("focus", mask, false);
		input.addEventListener("blur", mask, false);
		input.addEventListener("keydown", mask, false)
	});
});


// Липкая шапка
if (window.location.pathname == "/") {
	window.onscroll = function () {
		let scrolled = window.pageYOffset || document.documentElement.scrollTop;
		let fix = document.querySelector('.topLine--home');
		let btnFix = document.querySelector('.btnBase--home');

		if (scrolled > 140) {
			fix.classList.add('sticky');
			btnFix.classList.add('btnBase--sticky');
		}
		else {
			fix.classList.remove('sticky');
			btnFix.classList.remove('btnBase--sticky');
		}
	}
}


// Плавный скролл к якорям
const anchors = document.querySelectorAll('.topLine nav a[href*=anchor]');


let V = 0.15;  // скорость, может иметь дробное значение через точку (чем меньше значение - тем больше скорость)
for (let i = 0; i < anchors.length; i++) {
	anchors[i].addEventListener('click', function (e) { //по клику на ссылку
		e.preventDefault(); //отменяем стандартное поведение

		let w = window.pageYOffset,  // производим прокрутка прокрутка
			hash = this.href.replace(/[^#]*(.*)/, '$1');  // к id элемента, к которому нужно перейти
		let t = document.querySelector(hash).getBoundingClientRect().top,  // отступ от окна браузера до id 		
			start = null;

		requestAnimationFrame(step);  // подробнее про функцию анимации [developer.mozilla.org]

		function step(time) {
			if (start === null) start = time;
			let progress = time - start,
				r = (t < 0 ? Math.max(w - progress / V, w + t) : Math.min(w + progress / V, w + t));
			window.scrollTo(0, r);
			if (r != w + t) {
				requestAnimationFrame(step)
			} else {
				location.hash = hash  // URL с хэшем
			}
		}
	}, false);
}

// Выделение активного пункта меню
const itemsMenu = document.querySelectorAll('.topLine nav ul li a');

itemsMenu.forEach(elem => {
	elem.onclick = (event) => {
		itemsMenu.forEach(elem => {
			elem.classList.remove('active');
			event.target.classList.add('active');
		})
	};
});


// Фильтрация статей по категориям
let buttons = document.querySelectorAll('.articles__cat button');

buttons.forEach(elem => {
	elem.onclick = (event) => {
		event.preventDefault();

		buttons.forEach(elem => {
			elem.classList.remove('active');
			event.target.classList.add('active');
		});

		let buttonFilter = elem.getAttribute('data-cat');

		let articlesItems = document.querySelectorAll('.metodsItem--article');

		articlesItems.forEach(elem => {
			elem.style.display = 'none';

			if (buttonFilter == 'all') {
				elem.style.display = 'block';
			}

			if (elem.classList.contains(buttonFilter)) {
				elem.style.display = 'block';
				// document.querySelector('.articles__content').style.justifyContent = 'flex-start';
				elem.style.marginRight = '1%';
			}
		})
	}
});

// Стилизация инпут-файл
let inputs = document.querySelectorAll('.form__file');
Array.prototype.forEach.call(inputs, function (input) {
	let label = input.nextElementSibling;

	input.addEventListener('change', function (e) {
		label.querySelector('.labelFile span').innerHTML = 'Прикреплен файл: ' + input.value;
	});
});


console.log(document.querySelector('.center button'))

// // Аякс-запрос формы обратной связи

// let form = document.querySelector('#form');

// form.onsubmit = function (event) { 
//     event.preventDefault();

//     let formData = new FormData(form);    

//     let xhttp = new XMLHttpRequest(); 
//     xhttp.open('POST', 'mail.php'); 
//     xhttp.send(formData); 

//     xhttp.onreadystatechange = function () { 
//         if (this.readyState == 4 && this.status == 200) {
//             form.reset();             
//             chips('Спасибо за обращение! <br> В ближайшее время мы с вами свяжемся', 5000);
//         }
//     }    
// }
// /*==================================================================*/

