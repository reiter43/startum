"use strict";var burger=document.querySelector(".burger"),nav=document.querySelector("nav.nav"),bod=document.querySelector("body");burger.addEventListener("click",function(e){e.preventDefault,burger.classList.contains("burger--active")?(burger.classList.remove("burger--active"),document.querySelector("header").style.position="relative",nav.classList.remove("nav--active"),nav.style.marginLeft="101%",nav.style.width="0"):(burger.classList.add("burger--active"),document.querySelector("header").style.position="static",nav.style.marginLeft="0",nav.style.width="100%",nav.classList.add("nav--active"))}),window.addEventListener("resize",function(){var t=document.documentElement.clientWidth,n=document.querySelectorAll(".programItem");n.forEach(function(e){t<1920&&1200<t?(e.classList.remove("programItem--button"),n[3].classList.add("programItem--button")):t<1200&&996<t?(e.classList.remove("programItem--button"),n[2].classList.add("programItem--button")):t<996&&576<t?(e.classList.remove("programItem--button"),n[1].classList.add("programItem--button")):e.classList.remove("programItem--button")})},!1);var btnVideo=document.querySelectorAll(".btnVideoSlider__wrapper");btnVideo.forEach(function(t){t.onclick=function(e){t.parentNode.innerHTML='<iframe width="560" height="315" src="https://www.youtube.com/embed/lTKr_Sb4xq4" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'}});var centers=document.querySelectorAll(".listCenter ul li button");centers.forEach(function(r){r.onclick=function(t){t.preventDefault(),document.querySelector(".mapContacts p").classList.add("hide"),centers.forEach(function(e){e.classList.remove("active"),t.target.classList.add("active")});var e=document.querySelectorAll(".mapContacts iframe"),n=r.getAttribute("data-center");e.forEach(function(e){e.classList.add("hide"),e.classList.contains(n)&&(e.src=e.getAttribute("data-map"),e.classList.remove("hide"))})}});var quests=document.querySelectorAll(".faq .faq__content .faq__quest>p");quests.forEach(function(r){r.onclick=function(t){t.preventDefault(),quests.forEach(function(e){e.classList.remove("active"),t.target.classList.add("active")});var e=document.querySelectorAll(".faq__answer div"),n=r.getAttribute("data-answer");e.forEach(function(e){e.classList.add("hide"),e.classList.contains(n)&&e.classList.remove("hide")})}});var btnVi=document.querySelectorAll(".btnVideo__wrapperCenters");btnVi.forEach(function(t){t.onclick=function(e){t.parentNode.innerHTML='<iframe width="560" height="315" src="https://www.youtube.com/embed/XClbPtMlQVo"  allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'}}),window.addEventListener("DOMContentLoaded",function(){[].forEach.call(document.querySelectorAll(".form__phone"),function(e){var i;function t(e){e.keyCode&&(i=e.keyCode),this.selectionStart<3&&e.preventDefault();var t="+7 (___) ___ ____",n=0,r=t.replace(/\D/g,""),c=this.value.replace(/\D/g,""),a=t.replace(/[_\d]/g,function(e){return n<c.length?c.charAt(n++)||r.charAt(n):e});-1!=(n=a.indexOf("_"))&&(n<5&&(n=3),a=a.slice(0,n));var o=t.substr(0,this.value.length).replace(/_+/g,function(e){return"\\d{1,"+e.length+"}"}).replace(/[+()]/g,"\\$&");(!(o=new RegExp("^"+o+"$")).test(this.value)||this.value.length<5||47<i&&i<58)&&(this.value=a),"blur"==e.type&&this.value.length<5&&(this.value="")}e.addEventListener("input",t,!1),e.addEventListener("focus",t,!1),e.addEventListener("blur",t,!1),e.addEventListener("keydown",t,!1)})}),"/smartum/index.html"==window.location.pathname&&(window.onscroll=function(){var e=window.pageYOffset||document.documentElement.scrollTop,t=document.querySelector(".topLine--home"),n=document.querySelector(".btnBase--home");140<e?(t.classList.add("sticky"),n.classList.add("btnBase--sticky")):(t.classList.remove("sticky"),n.classList.remove("btnBase--sticky"))});for(var anchors=document.querySelectorAll(".topLine nav a[href*=anchor]"),V=.15,i=0;i<anchors.length;i++)anchors[i].addEventListener("click",function(e){e.preventDefault();var c=window.pageYOffset,a=this.href.replace(/[^#]*(.*)/,"$1"),o=document.querySelector(a).getBoundingClientRect().top,i=null;requestAnimationFrame(function e(t){null===i&&(i=t);var n=t-i,r=o<0?Math.max(c-n/V,c+o):Math.min(c+n/V,c+o);window.scrollTo(0,r);r!=c+o?requestAnimationFrame(e):location.hash=a})},!1);var itemsMenu=document.querySelectorAll(".topLine nav ul li a");itemsMenu.forEach(function(e){e.onclick=function(t){itemsMenu.forEach(function(e){e.classList.remove("active"),t.target.classList.add("active")})}});var buttons=document.querySelectorAll(".articles__cat button");buttons.forEach(function(e){e.onclick=function(t){t.preventDefault(),buttons.forEach(function(e){e.classList.remove("active"),t.target.classList.add("active")});var n=e.getAttribute("data-cat");document.querySelectorAll(".metodsItem--article").forEach(function(e){e.style.display="none","all"==n&&(e.style.display="block"),e.classList.contains(n)&&(e.style.display="block",e.style.marginRight="1%")})}});var inputs=document.querySelectorAll(".form__file");Array.prototype.forEach.call(inputs,function(t){var n=t.nextElementSibling;t.addEventListener("change",function(e){n.querySelector(".labelFile span").innerHTML="Прикреплен файл: "+t.value})});var forms=document.querySelectorAll(".formAll");forms.forEach(function(r){r.onsubmit=function(e){e.preventDefault();var t=new FormData(r),n=new XMLHttpRequest;n.open("POST","mail.php"),n.send(t),n.onreadystatechange=function(){4==this.readyState&&200==this.status&&(r.reset(),document.querySelector("#thanks").classList.remove("mfp-hide"),document.querySelector("#closeModal").onclick=function(){document.querySelector("#thanks").classList.add("mfp-hide")})}}});var city=document.querySelectorAll(".modalCity__content a");city.forEach(function(t){t.onclick=function(e){e.preventDefault(),document.querySelector(".topLine__btn span").innerText=t.innerText,document.querySelector("#ci").classList.add("mfp-hide")},document.querySelector(".btnModal").onclick=function(){document.querySelector("#ci").classList.add("mfp-hide"),document.querySelector("#cce").classList.remove("mfp-hide")}});