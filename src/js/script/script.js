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

burger.addEventListener('click',  event => {
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


// // Включение видеоролика

// let video = document.querySelector('.video__wrapper');
// let btnVideo = document.querySelector('.btnVideo');

// btnVideo.addEventListener('click',  event => {		

// 	if (video.classList.contains('hide')) {
// 		video.classList.remove('hide');		
// 		btnVideo.innerHTML = '<svg class="btnVideo--stop"><use xlink:href="img/svg/sprite.svg#stopButton"></use></svg>';		
// 	}
// 	else{
// 		video.classList.add('hide');	
// 		btnVideo.innerHTML = '<svg class="btnVideo--play"><use xlink:href="img/svg/sprite.svg#playArrow"></use></svg>';	
// 	}
// });


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

