!function(e){"function"==typeof define&&define.amd?define(["jquery"],e):e("object"==typeof exports?require("jquery"):window.jQuery||window.Zepto)}(function(d){function e(){}function u(e,t){g.ev.on(i+e+w,t)}function p(e,t,i,n){var o=document.createElement("div");return o.className="mfp-"+e,i&&(o.innerHTML=i),n?t&&t.appendChild(o):(o=d(o),t&&o.appendTo(t)),o}function f(e,t){g.ev.triggerHandler(i+e,t),g.st.callbacks&&(e=e.charAt(0).toLowerCase()+e.slice(1),g.st.callbacks[e]&&g.st.callbacks[e].apply(g,d.isArray(t)?t:[t]))}function m(e){return e===t&&g.currTemplate.closeBtn||(g.currTemplate.closeBtn=d(g.st.closeMarkup.replace("%title%",g.st.tClose)),t=e),g.currTemplate.closeBtn}function r(){d.magnificPopup.instance||((g=new e).init(),d.magnificPopup.instance=g)}var g,n,v,o,h,t,l="Close",c="BeforeClose",y="MarkupParse",C="Open",a="Change",i="mfp",w="."+i,b="mfp-ready",s="mfp-removing",I="mfp-prevent-close",x=!!window.jQuery,k=d(window);e.prototype={constructor:e,init:function(){var e=navigator.appVersion;g.isLowIE=g.isIE8=document.all&&!document.addEventListener,g.isAndroid=/android/gi.test(e),g.isIOS=/iphone|ipad|ipod/gi.test(e),g.supportsTransition=function(){var e=document.createElement("p").style,t=["ms","O","Moz","Webkit"];if(void 0!==e.transition)return!0;for(;t.length;)if(t.pop()+"Transition"in e)return!0;return!1}(),g.probablyMobile=g.isAndroid||g.isIOS||/(Opera Mini)|Kindle|webOS|BlackBerry|(Opera Mobi)|(Windows Phone)|IEMobile/i.test(navigator.userAgent),v=d(document),g.popupsCache={}},open:function(e){var t;if(!1===e.isObj){g.items=e.items.toArray(),g.index=0;var i,n=e.items;for(t=0;t<n.length;t++)if((i=n[t]).parsed&&(i=i.el[0]),i===e.el[0]){g.index=t;break}}else g.items=d.isArray(e.items)?e.items:[e.items],g.index=e.index||0;if(!g.isOpen){g.types=[],h="",e.mainEl&&e.mainEl.length?g.ev=e.mainEl.eq(0):g.ev=v,e.key?(g.popupsCache[e.key]||(g.popupsCache[e.key]={}),g.currTemplate=g.popupsCache[e.key]):g.currTemplate={},g.st=d.extend(!0,{},d.magnificPopup.defaults,e),g.fixedContentPos="auto"===g.st.fixedContentPos?!g.probablyMobile:g.st.fixedContentPos,g.st.modal&&(g.st.closeOnContentClick=!1,g.st.closeOnBgClick=!1,g.st.showCloseBtn=!1,g.st.enableEscapeKey=!1),g.bgOverlay||(g.bgOverlay=p("bg").on("click"+w,function(){g.close()}),g.wrap=p("wrap").attr("tabindex",-1).on("click"+w,function(e){g._checkIfClose(e.target)&&g.close()}),g.container=p("container",g.wrap)),g.contentContainer=p("content"),g.st.preloader&&(g.preloader=p("preloader",g.container,g.st.tLoading));var o=d.magnificPopup.modules;for(t=0;t<o.length;t++){var r=o[t];r=r.charAt(0).toUpperCase()+r.slice(1),g["init"+r].call(g)}f("BeforeOpen"),g.st.showCloseBtn&&(g.st.closeBtnInside?(u(y,function(e,t,i,n){i.close_replaceWith=m(n.type)}),h+=" mfp-close-btn-in"):g.wrap.append(m())),g.st.alignTop&&(h+=" mfp-align-top"),g.fixedContentPos?g.wrap.css({overflow:g.st.overflowY,overflowX:"hidden",overflowY:g.st.overflowY}):g.wrap.css({top:k.scrollTop(),position:"absolute"}),!1!==g.st.fixedBgPos&&("auto"!==g.st.fixedBgPos||g.fixedContentPos)||g.bgOverlay.css({height:v.height(),position:"absolute"}),g.st.enableEscapeKey&&v.on("keyup"+w,function(e){27===e.keyCode&&g.close()}),k.on("resize"+w,function(){g.updateSize()}),g.st.closeOnContentClick||(h+=" mfp-auto-cursor"),h&&g.wrap.addClass(h);var a=g.wH=k.height(),s={};if(g.fixedContentPos&&g._hasScrollBar(a)){var l=g._getScrollbarSize();l&&(s.marginRight=l)}g.fixedContentPos&&(g.isIE7?d("body, html").css("overflow","hidden"):s.overflow="hidden");var c=g.st.mainClass;return g.isIE7&&(c+=" mfp-ie7"),c&&g._addClassToMFP(c),g.updateItemHTML(),f("BuildControls"),d("html").css(s),g.bgOverlay.add(g.wrap).prependTo(g.st.prependTo||d(document.body)),g._lastFocusedEl=document.activeElement,setTimeout(function(){g.content?(g._addClassToMFP(b),g._setFocus()):g.bgOverlay.addClass(b),v.on("focusin"+w,g._onFocusIn)},16),g.isOpen=!0,g.updateSize(a),f(C),e}g.updateItemHTML()},close:function(){g.isOpen&&(f(c),g.isOpen=!1,g.st.removalDelay&&!g.isLowIE&&g.supportsTransition?(g._addClassToMFP(s),setTimeout(function(){g._close()},g.st.removalDelay)):g._close())},_close:function(){f(l);var e=s+" "+b+" ";if(g.bgOverlay.detach(),g.wrap.detach(),g.container.empty(),g.st.mainClass&&(e+=g.st.mainClass+" "),g._removeClassFromMFP(e),g.fixedContentPos){var t={marginRight:""};g.isIE7?d("body, html").css("overflow",""):t.overflow="",d("html").css(t)}v.off("keyup.mfp focusin"+w),g.ev.off(w),g.wrap.attr("class","mfp-wrap").removeAttr("style"),g.bgOverlay.attr("class","mfp-bg"),g.container.attr("class","mfp-container"),!g.st.showCloseBtn||g.st.closeBtnInside&&!0!==g.currTemplate[g.currItem.type]||g.currTemplate.closeBtn&&g.currTemplate.closeBtn.detach(),g.st.autoFocusLast&&g._lastFocusedEl&&d(g._lastFocusedEl).focus(),g.currItem=null,g.content=null,g.currTemplate=null,g.prevHeight=0,f("AfterClose")},updateSize:function(e){if(g.isIOS){var t=document.documentElement.clientWidth/window.innerWidth,i=window.innerHeight*t;g.wrap.css("height",i),g.wH=i}else g.wH=e||k.height();g.fixedContentPos||g.wrap.css("height",g.wH),f("Resize")},updateItemHTML:function(){var e=g.items[g.index];g.contentContainer.detach(),g.content&&g.content.detach(),e.parsed||(e=g.parseEl(g.index));var t=e.type;if(f("BeforeChange",[g.currItem?g.currItem.type:"",t]),g.currItem=e,!g.currTemplate[t]){var i=!!g.st[t]&&g.st[t].markup;f("FirstMarkupParse",i),g.currTemplate[t]=!i||d(i)}o&&o!==e.type&&g.container.removeClass("mfp-"+o+"-holder");var n=g["get"+t.charAt(0).toUpperCase()+t.slice(1)](e,g.currTemplate[t]);g.appendContent(n,t),e.preloaded=!0,f(a,e),o=e.type,g.container.prepend(g.contentContainer),f("AfterChange")},appendContent:function(e,t){(g.content=e)?g.st.showCloseBtn&&g.st.closeBtnInside&&!0===g.currTemplate[t]?g.content.find(".mfp-close").length||g.content.append(m()):g.content=e:g.content="",f("BeforeAppend"),g.container.addClass("mfp-"+t+"-holder"),g.contentContainer.append(g.content)},parseEl:function(e){var t,i=g.items[e];if((i=i.tagName?{el:d(i)}:(t=i.type,{data:i,src:i.src})).el){for(var n=g.types,o=0;o<n.length;o++)if(i.el.hasClass("mfp-"+n[o])){t=n[o];break}i.src=i.el.attr("data-mfp-src"),i.src||(i.src=i.el.attr("href"))}return i.type=t||g.st.type||"inline",i.index=e,i.parsed=!0,g.items[e]=i,f("ElementParse",i),g.items[e]},addGroup:function(t,i){function e(e){e.mfpEl=this,g._openClick(e,t,i)}var n="click.magnificPopup";(i=i||{}).mainEl=t,i.items?(i.isObj=!0,t.off(n).on(n,e)):(i.isObj=!1,i.delegate?t.off(n).on(n,i.delegate,e):(i.items=t).off(n).on(n,e))},_openClick:function(e,t,i){if((void 0!==i.midClick?i.midClick:d.magnificPopup.defaults.midClick)||!(2===e.which||e.ctrlKey||e.metaKey||e.altKey||e.shiftKey)){var n=void 0!==i.disableOn?i.disableOn:d.magnificPopup.defaults.disableOn;if(n)if(d.isFunction(n)){if(!n.call(g))return!0}else if(k.width()<n)return!0;e.type&&(e.preventDefault(),g.isOpen&&e.stopPropagation()),i.el=d(e.mfpEl),i.delegate&&(i.items=t.find(i.delegate)),g.open(i)}},updateStatus:function(e,t){if(g.preloader){n!==e&&g.container.removeClass("mfp-s-"+n),t||"loading"!==e||(t=g.st.tLoading);var i={status:e,text:t};f("UpdateStatus",i),e=i.status,t=i.text,g.preloader.html(t),g.preloader.find("a").on("click",function(e){e.stopImmediatePropagation()}),g.container.addClass("mfp-s-"+e),n=e}},_checkIfClose:function(e){if(!d(e).hasClass(I)){var t=g.st.closeOnContentClick,i=g.st.closeOnBgClick;if(t&&i)return!0;if(!g.content||d(e).hasClass("mfp-close")||g.preloader&&e===g.preloader[0])return!0;if(e===g.content[0]||d.contains(g.content[0],e)){if(t)return!0}else if(i&&d.contains(document,e))return!0;return!1}},_addClassToMFP:function(e){g.bgOverlay.addClass(e),g.wrap.addClass(e)},_removeClassFromMFP:function(e){this.bgOverlay.removeClass(e),g.wrap.removeClass(e)},_hasScrollBar:function(e){return(g.isIE7?v.height():document.body.scrollHeight)>(e||k.height())},_setFocus:function(){(g.st.focus?g.content.find(g.st.focus).eq(0):g.wrap).focus()},_onFocusIn:function(e){return e.target===g.wrap[0]||d.contains(g.wrap[0],e.target)?void 0:(g._setFocus(),!1)},_parseMarkup:function(o,e,t){var r;t.data&&(e=d.extend(t.data,e)),f(y,[o,e,t]),d.each(e,function(e,t){if(void 0===t||!1===t)return!0;if(1<(r=e.split("_")).length){var i=o.find(w+"-"+r[0]);if(0<i.length){var n=r[1];"replaceWith"===n?i[0]!==t[0]&&i.replaceWith(t):"img"===n?i.is("img")?i.attr("src",t):i.replaceWith(d("<img>").attr("src",t).attr("class",i.attr("class"))):i.attr(r[1],t)}}else o.find(w+"-"+e).html(t)})},_getScrollbarSize:function(){if(void 0===g.scrollbarSize){var e=document.createElement("div");e.style.cssText="width: 99px; height: 99px; overflow: scroll; position: absolute; top: -9999px;",document.body.appendChild(e),g.scrollbarSize=e.offsetWidth-e.clientWidth,document.body.removeChild(e)}return g.scrollbarSize}},d.magnificPopup={instance:null,proto:e.prototype,modules:[],open:function(e,t){return r(),(e=e?d.extend(!0,{},e):{}).isObj=!0,e.index=t||0,this.instance.open(e)},close:function(){return d.magnificPopup.instance&&d.magnificPopup.instance.close()},registerModule:function(e,t){t.options&&(d.magnificPopup.defaults[e]=t.options),d.extend(this.proto,t.proto),this.modules.push(e)},defaults:{disableOn:0,key:null,midClick:!1,mainClass:"",preloader:!0,focus:"",closeOnContentClick:!1,closeOnBgClick:!0,closeBtnInside:!0,showCloseBtn:!0,enableEscapeKey:!0,modal:!1,alignTop:!1,removalDelay:0,prependTo:null,fixedContentPos:"auto",fixedBgPos:"auto",overflowY:"auto",closeMarkup:'<button title="%title%" type="button" class="mfp-close">&#215;</button>',tClose:"Close (Esc)",tLoading:"Loading...",autoFocusLast:!0}},d.fn.magnificPopup=function(e){r();var t=d(this);if("string"==typeof e)if("open"===e){var i,n=x?t.data("magnificPopup"):t[0].magnificPopup,o=parseInt(arguments[1],10)||0;i=n.items?n.items[o]:(i=t,n.delegate&&(i=i.find(n.delegate)),i.eq(o)),g._openClick({mfpEl:i},t,n)}else g.isOpen&&g[e].apply(g,Array.prototype.slice.call(arguments,1));else e=d.extend(!0,{},e),x?t.data("magnificPopup",e):t[0].magnificPopup=e,g.addGroup(t,e);return t};function T(){S&&(P.after(S.addClass(_)).detach(),S=null)}var _,P,S,E="inline";d.magnificPopup.registerModule(E,{options:{hiddenClass:"hide",markup:"",tNotFound:"Content not found"},proto:{initInline:function(){g.types.push(E),u(l+"."+E,function(){T()})},getInline:function(e,t){if(T(),e.src){var i=g.st.inline,n=d(e.src);if(n.length){var o=n[0].parentNode;o&&o.tagName&&(P||(_=i.hiddenClass,P=p(_),_="mfp-"+_),S=n.after(P).detach().removeClass(_)),g.updateStatus("ready")}else g.updateStatus("error",i.tNotFound),n=d("<div>");return e.inlineElement=n}return g.updateStatus("ready"),g._parseMarkup(t,{},e),t}}});function z(){M&&d(document.body).removeClass(M)}function O(){z(),g.req&&g.req.abort()}var M,B="ajax";d.magnificPopup.registerModule(B,{options:{settings:null,cursor:"mfp-ajax-cur",tError:'<a href="%url%">The content</a> could not be loaded.'},proto:{initAjax:function(){g.types.push(B),M=g.st.ajax.cursor,u(l+"."+B,O),u("BeforeChange."+B,O)},getAjax:function(o){M&&d(document.body).addClass(M),g.updateStatus("loading");var e=d.extend({url:o.src,success:function(e,t,i){var n={data:e,xhr:i};f("ParseAjax",n),g.appendContent(d(n.data),B),o.finished=!0,z(),g._setFocus(),setTimeout(function(){g.wrap.addClass(b)},16),g.updateStatus("ready"),f("AjaxContentAdded")},error:function(){z(),o.finished=o.loadError=!0,g.updateStatus("error",g.st.ajax.tError.replace("%url%",o.src))}},g.st.ajax.settings);return g.req=d.ajax(e),""}}});var L;d.magnificPopup.registerModule("image",{options:{markup:'<div class="mfp-figure"><div class="mfp-close"></div><figure><div class="mfp-img"></div><figcaption><div class="mfp-bottom-bar"><div class="mfp-title"></div><div class="mfp-counter"></div></div></figcaption></figure></div>',cursor:"mfp-zoom-out-cur",titleSrc:"title",verticalFit:!0,tError:'<a href="%url%">The image</a> could not be loaded.'},proto:{initImage:function(){var e=g.st.image,t=".image";g.types.push("image"),u(C+t,function(){"image"===g.currItem.type&&e.cursor&&d(document.body).addClass(e.cursor)}),u(l+t,function(){e.cursor&&d(document.body).removeClass(e.cursor),k.off("resize"+w)}),u("Resize"+t,g.resizeImage),g.isLowIE&&u("AfterChange",g.resizeImage)},resizeImage:function(){var e=g.currItem;if(e&&e.img&&g.st.image.verticalFit){var t=0;g.isLowIE&&(t=parseInt(e.img.css("padding-top"),10)+parseInt(e.img.css("padding-bottom"),10)),e.img.css("max-height",g.wH-t)}},_onImageHasSize:function(e){e.img&&(e.hasSize=!0,L&&clearInterval(L),e.isCheckingImgSize=!1,f("ImageHasSize",e),e.imgHidden&&(g.content&&g.content.removeClass("mfp-loading"),e.imgHidden=!1))},findImageSize:function(t){var i=0,n=t.img[0],o=function(e){L&&clearInterval(L),L=setInterval(function(){return 0<n.naturalWidth?void g._onImageHasSize(t):(200<i&&clearInterval(L),void(3===++i?o(10):40===i?o(50):100===i&&o(500)))},e)};o(1)},getImage:function(e,t){var i=0,n=function(){e&&(e.img[0].complete?(e.img.off(".mfploader"),e===g.currItem&&(g._onImageHasSize(e),g.updateStatus("ready")),e.hasSize=!0,e.loaded=!0,f("ImageLoadComplete")):++i<200?setTimeout(n,100):o())},o=function(){e&&(e.img.off(".mfploader"),e===g.currItem&&(g._onImageHasSize(e),g.updateStatus("error",r.tError.replace("%url%",e.src))),e.hasSize=!0,e.loaded=!0,e.loadError=!0)},r=g.st.image,a=t.find(".mfp-img");if(a.length){var s=document.createElement("img");s.className="mfp-img",e.el&&e.el.find("img").length&&(s.alt=e.el.find("img").attr("alt")),e.img=d(s).on("load.mfploader",n).on("error.mfploader",o),s.src=e.src,a.is("img")&&(e.img=e.img.clone()),0<(s=e.img[0]).naturalWidth?e.hasSize=!0:s.width||(e.hasSize=!1)}return g._parseMarkup(t,{title:function(e){if(e.data&&void 0!==e.data.title)return e.data.title;var t=g.st.image.titleSrc;if(t){if(d.isFunction(t))return t.call(g,e);if(e.el)return e.el.attr(t)||""}return""}(e),img_replaceWith:e.img},e),g.resizeImage(),e.hasSize?(L&&clearInterval(L),e.loadError?(t.addClass("mfp-loading"),g.updateStatus("error",r.tError.replace("%url%",e.src))):(t.removeClass("mfp-loading"),g.updateStatus("ready"))):(g.updateStatus("loading"),e.loading=!0,e.hasSize||(e.imgHidden=!0,t.addClass("mfp-loading"),g.findImageSize(e))),t}}});var H;d.magnificPopup.registerModule("zoom",{options:{enabled:!1,easing:"ease-in-out",duration:300,opener:function(e){return e.is("img")?e:e.find("img")}},proto:{initZoom:function(){var e,r=g.st.zoom,t=".zoom";if(r.enabled&&g.supportsTransition){function i(e){var t=e.clone().removeAttr("style").removeAttr("class").addClass("mfp-animated-image"),i="all "+r.duration/1e3+"s "+r.easing,n={position:"fixed",zIndex:9999,left:0,top:0,"-webkit-backface-visibility":"hidden"},o="transition";return n["-webkit-"+o]=n["-moz-"+o]=n["-o-"+o]=n[o]=i,t.css(n),t}function n(){g.content.css("visibility","visible")}var o,a,s=r.duration;u("BuildControls"+t,function(){if(g._allowZoom()){if(clearTimeout(o),g.content.css("visibility","hidden"),!(e=g._getItemToZoom()))return void n();(a=i(e)).css(g._getOffset()),g.wrap.append(a),o=setTimeout(function(){a.css(g._getOffset(!0)),o=setTimeout(function(){n(),setTimeout(function(){a.remove(),e=a=null,f("ZoomAnimationEnded")},16)},s)},16)}}),u(c+t,function(){if(g._allowZoom()){if(clearTimeout(o),g.st.removalDelay=s,!e){if(!(e=g._getItemToZoom()))return;a=i(e)}a.css(g._getOffset(!0)),g.wrap.append(a),g.content.css("visibility","hidden"),setTimeout(function(){a.css(g._getOffset())},16)}}),u(l+t,function(){g._allowZoom()&&(n(),a&&a.remove(),e=null)})}},_allowZoom:function(){return"image"===g.currItem.type},_getItemToZoom:function(){return!!g.currItem.hasSize&&g.currItem.img},_getOffset:function(e){var t,i=(t=e?g.currItem.img:g.st.zoom.opener(g.currItem.el||g.currItem)).offset(),n=parseInt(t.css("padding-top"),10),o=parseInt(t.css("padding-bottom"),10);i.top-=d(window).scrollTop()-n;var r={width:t.width(),height:(x?t.innerHeight():t[0].offsetHeight)-o-n};return void 0===H&&(H=void 0!==document.createElement("p").style.MozTransform),H?r["-moz-transform"]=r.transform="translate("+i.left+"px,"+i.top+"px)":(r.left=i.left,r.top=i.top),r}}});function A(e){if(g.currTemplate[F]){var t=g.currTemplate[F].find("iframe");t.length&&(e||(t[0].src="//about:blank"),g.isIE8&&t.css("display",e?"block":"none"))}}var F="iframe";d.magnificPopup.registerModule(F,{options:{markup:'<div class="mfp-iframe-scaler"><div class="mfp-close"></div><iframe class="mfp-iframe" src="//about:blank" frameborder="0" allowfullscreen></iframe></div>',srcAction:"iframe_src",patterns:{youtube:{index:"youtube.com",id:"v=",src:"//www.youtube.com/embed/%id%?autoplay=1"},vimeo:{index:"vimeo.com/",id:"/",src:"//player.vimeo.com/video/%id%?autoplay=1"},gmaps:{index:"//maps.google.",src:"%id%&output=embed"}}},proto:{initIframe:function(){g.types.push(F),u("BeforeChange",function(e,t,i){t!==i&&(t===F?A():i===F&&A(!0))}),u(l+"."+F,function(){A()})},getIframe:function(e,t){var i=e.src,n=g.st.iframe;d.each(n.patterns,function(){return-1<i.indexOf(this.index)?(this.id&&(i="string"==typeof this.id?i.substr(i.lastIndexOf(this.id)+this.id.length,i.length):this.id.call(this,i)),i=this.src.replace("%id%",i),!1):void 0});var o={};return n.srcAction&&(o[n.srcAction]=i),g._parseMarkup(t,o,e),g.updateStatus("ready"),t}}});function j(e){var t=g.items.length;return t-1<e?e-t:e<0?t+e:e}function N(e,t,i){return e.replace(/%curr%/gi,t+1).replace(/%total%/gi,i)}d.magnificPopup.registerModule("gallery",{options:{enabled:!1,arrowMarkup:'<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>',preload:[0,2],navigateByImgClick:!0,arrows:!0,tPrev:"Previous (Left arrow key)",tNext:"Next (Right arrow key)",tCounter:"%curr% of %total%"},proto:{initGallery:function(){var r=g.st.gallery,e=".mfp-gallery";return g.direction=!0,!(!r||!r.enabled)&&(h+=" mfp-gallery",u(C+e,function(){r.navigateByImgClick&&g.wrap.on("click"+e,".mfp-img",function(){return 1<g.items.length?(g.next(),!1):void 0}),v.on("keydown"+e,function(e){37===e.keyCode?g.prev():39===e.keyCode&&g.next()})}),u("UpdateStatus"+e,function(e,t){t.text&&(t.text=N(t.text,g.currItem.index,g.items.length))}),u(y+e,function(e,t,i,n){var o=g.items.length;i.counter=1<o?N(r.tCounter,n.index,o):""}),u("BuildControls"+e,function(){if(1<g.items.length&&r.arrows&&!g.arrowLeft){var e=r.arrowMarkup,t=g.arrowLeft=d(e.replace(/%title%/gi,r.tPrev).replace(/%dir%/gi,"left")).addClass(I),i=g.arrowRight=d(e.replace(/%title%/gi,r.tNext).replace(/%dir%/gi,"right")).addClass(I);t.click(function(){g.prev()}),i.click(function(){g.next()}),g.container.append(t.add(i))}}),u(a+e,function(){g._preloadTimeout&&clearTimeout(g._preloadTimeout),g._preloadTimeout=setTimeout(function(){g.preloadNearbyImages(),g._preloadTimeout=null},16)}),void u(l+e,function(){v.off(e),g.wrap.off("click"+e),g.arrowRight=g.arrowLeft=null}))},next:function(){g.direction=!0,g.index=j(g.index+1),g.updateItemHTML()},prev:function(){g.direction=!1,g.index=j(g.index-1),g.updateItemHTML()},goTo:function(e){g.direction=e>=g.index,g.index=e,g.updateItemHTML()},preloadNearbyImages:function(){var e,t=g.st.gallery.preload,i=Math.min(t[0],g.items.length),n=Math.min(t[1],g.items.length);for(e=1;e<=(g.direction?n:i);e++)g._preloadItem(g.index+e);for(e=1;e<=(g.direction?i:n);e++)g._preloadItem(g.index-e)},_preloadItem:function(e){if(e=j(e),!g.items[e].preloaded){var t=g.items[e];t.parsed||(t=g.parseEl(e)),f("LazyLoad",t),"image"===t.type&&(t.img=d('<img class="mfp-img" />').on("load.mfploader",function(){t.hasSize=!0}).on("error.mfploader",function(){t.hasSize=!0,t.loadError=!0,f("LazyLoadError",t)}).attr("src",t.src)),t.preloaded=!0}}}});var W="retina";d.magnificPopup.registerModule(W,{options:{replaceSrc:function(e){return e.src.replace(/\.\w+$/,function(e){return"@2x"+e})},ratio:1},proto:{initRetina:function(){if(1<window.devicePixelRatio){var i=g.st.retina,n=i.ratio;1<(n=isNaN(n)?n():n)&&(u("ImageHasSize."+W,function(e,t){t.img.css({"max-width":t.img[0].naturalWidth/n,width:"100%"})}),u("ElementParse."+W,function(e,t){t.src=i.replaceSrc(t,n)}))}}}}),r()});