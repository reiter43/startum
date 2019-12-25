
// Скрыть/показать меню
let burger = document.querySelector('.burger');
let nav = document.querySelector('.nav');
let bod = document.querySelector('body');

burger.addEventListener('click', event => {
	event.preventDefault;

	if (burger.classList.contains('burger--active')) {
		burger.classList.remove('burger--active');
		document.querySelector('header').style.position = 'relative';
		nav.classList.remove('nav--active');
	}
	else {
		burger.classList.add('burger--active');
		document.querySelector('header').style.position = 'static';
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
	elem.onclick = () => {
		elem.parentNode.innerHTML = '<iframe width="560" height="315" src="https://www.youtube.com/embed/lTKr_Sb4xq4" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
	};
});


// Общая функция фильтрации
function filter(btnFilter, itemContent, getAtr, getAtr2) {
	let btn = document.querySelectorAll(btnFilter);

	btn.forEach(el => {
		el.onclick = event => {
			event.preventDefault();

			btn.forEach(el => {
				el.classList.remove('active');
				event.target.classList.add('active');
			});

			let item = document.querySelectorAll(itemContent);
			let atr = el.getAttribute(getAtr);

			item.forEach(el => {
				el.classList.add('modal--hide');

				if (atr === 'all') {
					el.classList.remove('modal--hide');
				}

				if (el.hasAttribute(getAtr2)) {
					el.src = el.getAttribute(getAtr2);
				}

				if (el.classList.contains(atr)) {
					el.classList.remove('modal--hide');
				}
			})
		}
	})
}

// Фильтрация вопросов и статей
filter('.faq__quest > p', '.faq__answer div', 'data-answer');
filter('.mainArticles__cat button', '.metodsItem--article', 'data-cat');


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

// filter('.listCenter ul li button', '.mapContacts iframe', 'data-center', 'data-map');



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
function sticky(elemSticky, offset) {
	window.onscroll = function () {
		let scrolled = window.pageYOffset || document.documentElement.scrollTop;
		let fix = document.querySelector(elemSticky);

		if (scrolled > offset) {
			fix.classList.add('sticky');
		}
		else {
			fix.classList.remove('sticky');
		}
	}
}

if (window.location.pathname == "/") {
	sticky('.topLine--home', 140);
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
		event.preventDefault;
		itemsMenu.forEach(elem => {
			elem.classList.remove('active');
			event.target.classList.add('active');
		})
	};
});

// Стилизация инпут-файл
let inputs = document.querySelectorAll('.form__file');

Array.prototype.forEach.call(inputs, function (input) {
	let label = input.nextElementSibling;

	input.addEventListener('change', function (e) {
		label.querySelector('.labelFile span').innerHTML = 'Прикреплен файл: ' + input.value;
	});
});

// Аякс-запрос формы обратной связи
let forms = document.querySelectorAll('.formAll');

forms.forEach(elem => {
	elem.onsubmit = function (event) {
		event.preventDefault();

		let formData = new FormData(elem);

		let xhttp = new XMLHttpRequest();
		xhttp.open('POST', 'mail.php');
		xhttp.send(formData);

		xhttp.onreadystatechange = function () {
			if (this.readyState == 4 && this.status == 200) {
				elem.reset();
				document.querySelector('#thanks').classList.remove('mfp-hide');
				document.querySelector('#closeModal').onclick = function () {
					document.querySelector('#thanks').classList.add('mfp-hide');
				}
			}
		}
	}
})

// Выбор города
let city = document.querySelectorAll('.modalCity__content a');

city.forEach(elem => {
	elem.onclick = (event) => {
		event.preventDefault();

		document.querySelector('.topLine__btn span').innerText = elem.innerText;
		document.querySelector('.centers > p').innerText = 'Пройдите 3D-тур по центру в г. ' + elem.innerText;
		document.querySelector('#ci').classList.add('mfp-hide');
	}
});

// Запуск видеоролика о центре в москве
let btnVi = document.querySelectorAll('.btnVideo__wrapperCenters');

btnVi.forEach(elem => {
	elem.onclick = (event) => {
		elem.parentNode.innerHTML = '<iframe width="560" height="315" src="https://www.youtube.com/embed/XClbPtMlQVo"  allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
	};
});


