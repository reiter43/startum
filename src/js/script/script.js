// // Фильтрация по категориям

// let buttons = document.querySelectorAll('.buttonCat');

// buttons.forEach(elem => {
//     elem.onclick = (event) => {
// 		event.preventDefault();

// 		buttons.forEach(elem => {
// 			elem.classList.remove('buttonCat--active');
// 			event.target.classList.add('buttonCat--active');
//         });

//         let buttonFilter = elem.getAttribute('data-filter');        

//         let portfolioItems = document.querySelectorAll('.portfolio__item');

//         portfolioItems.forEach(elem => {
//             elem.style.display = 'none';

//             if (buttonFilter == 'all'){
//                 elem.style.display = 'block';
//             }

//             if(elem.classList.contains(buttonFilter)){                
//                 elem.style.display = 'block';
//             }                
//         })
//     }
// }); 	


// Скрыть/показать меню
let burger = document.querySelector('.burger');
let nav = document.querySelector('nav.nav');
let bod = document.querySelector('body');

burger.addEventListener('click', event => {
	event.preventDefault;

	if (burger.classList.contains('burger--active')) {
		burger.classList.remove('burger--active');
		nav.style.marginLeft = '101%';
		nav.style.width = '0';
		bod.style.overflow = 'auto';
	}
	else {
		burger.classList.add('burger--active');
		nav.style.marginLeft = '0';
		nav.style.width = '100%';
		bod.style.overflow = 'hidden';
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

