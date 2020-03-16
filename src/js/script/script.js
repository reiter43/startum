window.addEventListener('DOMContentLoaded', function () {

	// Скрыть/показать меню
	let burger = document.querySelector('.burger');
	let nav = document.querySelector('.nav');
	let bod = document.querySelector('body');

	burger.addEventListener('click', (event) => {
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
	function filter(btnFilter, itemContent, data, activeClass) {
		const tabs = document.querySelectorAll(btnFilter);

		if (tabs) {
			tabs.forEach(el => {
				el.addEventListener('click', run);

				if (el.tagName != 'button') {
					el.addEventListener('keydown', (event) => {
						if (event.keyCode == 13 || event.keyCode == 32) {
							run();
						}
					});
				}

				function run() {
					event.preventDefault();

					tabs.forEach(el => {
						el.classList.remove(activeClass);
						event.target.classList.add(activeClass);
					});

					const items = document.querySelectorAll(itemContent);
					const dataAtr = el.getAttribute(data);

					items.forEach(el => {
						el.setAttribute('hidden', 'hidden')

						if (dataAtr === 'all') {
							el.removeAttribute('hidden');
						}

						if (el.classList.contains(dataAtr)) {
							el.removeAttribute('hidden');
						}
					})
				}
			})
		}
	}

	// Фильтрация вопросов и статей
	filter('.faq__quest > li', '.faq__answer > div', 'data-answer', 'active');
	filter('.mainArticles__cat button', '.metodsItem--article', 'data-cat', 'active');


	// Фильтрация центров и карт в контактах
	const centers = document.querySelectorAll('.listCenter ul li button');

	if (centers) {
		centers.forEach(el => {
			el.addEventListener('click', (event) => {
				document.querySelector('.mapContacts p').classList.add('hide');

				centers.forEach(el => {
					el.classList.remove('active');
					event.target.classList.add('active');
				});

				const map = document.querySelectorAll('.mapContacts iframe');
				const centersData = el.getAttribute('data-center');

				map.forEach(el => {
					el.setAttribute('hidden', 'hidden')

					if (el.classList.contains(centersData)) {
						el.src = el.getAttribute('data-map');
						el.removeAttribute('hidden');;
					}
				});
			});
		});
	}


	//Скрипт для маски ввода телефона
	function createMask(event) {
		let matrix = '+7 (___) ___ __ __';
		let i = 0;
		let def = matrix.replace(/\D/g, '');
		let val = this.value.replace(/\D/g, '');

		if (def.length >= val.length) {
			val = def;
		}

		this.value = matrix.replace(/./g, function (a) {
			return /[_\d]/.test(a) && i < val.length ? val.charAt(i++) : i >= val.length ? '' : a;
		});

		if (event.type === 'blur') {
			if (this.value.length == 2) {
				this.value = '';
			}
		} else {
			setCursorPosition(this.value.length, this);
		}
	}

	const setCursorPosition = (pos, elem) => {
		elem.focus();

		if (elem.setSelectionRange) {
			elem.setSelectionRange(pos, pos);
		} else if (elem.createTextRange) {
			let range = elem.createTextRange();

			range.collapse(true);
			range.moveEnd('character', pos);
			range.moveStart('character', pos);
			range.select();
		}
	};

	let inputs = document.querySelectorAll('.form__phone');

	inputs.forEach(input => {
		input.addEventListener('input', createMask);
		input.addEventListener('focus', createMask);
		input.addEventListener('blur', createMask);
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

	if (window.location.pathname == "/smartumStat/" || window.location.pathname == "/index.html" || window.location.pathname == "/" || window.location.pathname == "/build/") {
		sticky('.topLine--home', 140);
	}


	// Плавный скролл к якорям
	let anchors = document.querySelectorAll('.topLine nav a[href*=anchor]');
	let speed = 0.3;  // скорость, может иметь дробное значение через точку (чем меньше значение - тем больше скорость)

	anchors.forEach(anchor => {
		anchor.addEventListener('click', function (e) {
			e.preventDefault();

			let widthTop = window.pageYOffset;  // производим прокрутка прокрутка
			let hash = this.hash;  // к id элемента, к которому нужно перейти
			let toBlock = document.querySelector(hash).getBoundingClientRect().top;  // отступ от окна браузера до id 		
			let start = null;

			requestAnimationFrame(step);  // подробнее про функцию анимации [developer.mozilla.org]

			function step(time) {
				if (start === null) {
					start = time;
				}

				let progress = time - start;
				let rrorr = (toBlock < 0 ? Math.max(widthTop - progress / speed, widthTop + toBlock) : Math.min(widthTop + progress / speed, widthTop + toBlock));

				window.scrollTo(0, rrorr);

				if (rrorr != widthTop + toBlock) {
					requestAnimationFrame(step)
				} else {
					location.hash = hash  // URL с хэшем
				}
			}
		});
	})

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


	// Анимация цифр
	// const time = 2000; // время анимации
	// const step = 20 // шаг

	// function animateNumber(number, elem) {
	// 	let el = document.querySelector(elem),
	// 	n = 0;
	// 	console.log(el);
	// 	let t = Math.round(time/(number/step));
	// 	console.log(t);

	// 	let interval = setInterval(() => {
	// 		n = n + step;
	// 		if (n == number) {
	// 			clearInterval(interval);
	// 		}
	// 		el.innerHTML = n;
	// 	}, t)
	// }

	// animateNumber(900, '.counter1')
})



