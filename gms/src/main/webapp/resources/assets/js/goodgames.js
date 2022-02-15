/*!-----------------------------------------------------------------
    Name: GoodGames - Game Portal / Store and eSports HTML Template
    Version: 1.5.4
    Author: nK
    Website: https://nkdev.info/
    Purchase: https://1.envato.market/goodgames
    Support: https://nk.ticksy.com/
    License: You must have a valid license purchased only from ThemeForest (the above link) in order to legally use the theme for your project.
    Copyright 2021.
-------------------------------------------------------------------*/
    /******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 3);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */,
/* 1 */,
/* 2 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "options", function() { return options; });
/*------------------------------------------------------------------

  Theme Options

-------------------------------------------------------------------*/
var options = {
  scrollToAnchorSpeed: 700,
  templates: {
    secondaryNavbarBackItem: 'Back',
    plainVideoIcon: '<span class="nk-video-icon"><span class="fa fa-play pl-5"></span></span>',
    plainVideoLoadIcon: '<span class="nk-video-icon"><span class="nk-loading-icon"></span></span>',
    audioPlainButton: "<div class=\"nk-audio-plain-play-pause\">\n                <span class=\"nk-audio-plain-play\">\n                    <span class=\"ion-play ml-3\"></span>\n                </span>\n                <span class=\"nk-audio-plain-pause\">\n                    <span class=\"ion-pause\"></span>\n                </span>\n            </div>",
    instagram: "<div class=\"col-4\">\n                <a href=\"{{link}}\" target=\"_blank\">\n                    <img src=\"{{image}}\" alt=\"{{caption}}\" class=\"nk-img-stretch\">\n                </a>\n            </div>",
    instagramLoadingText: 'Loading...',
    instagramFailText: 'Failed to fetch data',
    instagramApiPath: 'php/instagram/instagram.php',
    twitter: "<div class=\"nk-twitter\">\n                <span class=\"nk-twitter-icon fab fa-twitter\"></span>\n                <div class=\"nk-twitter-name\">\n                      <a href=\"https://twitter.com/{{screen_name}}\" target=\"_blank\">@{{screen_name}}</a>\n                </div>\n                <div class=\"nk-twitter-date\">\n                    <span>{{date}}</span>\n                </div>\n                <div class=\"nk-twitter-text\">\n                   {{tweet}}\n                </div>\n            </div>",
    twitterLoadingText: 'Loading...',
    twitterFailText: 'Failed to fetch data',
    twitterApiPath: 'php/twitter/tweet.php',
    countdown: "<div class=\"nk-hexagon\">\n                <div class=\"nk-hexagon-inner\"></div>\n                <span>%D</span>\n                <small>Days</small>\n            </div>\n            <div class=\"nk-hexagon\">\n                <div class=\"nk-hexagon-inner\"></div>\n                <span>%H</span>\n                <small>Hours</small>\n            </div>\n            <div class=\"nk-hexagon\">\n                <div class=\"nk-hexagon-inner\"></div>\n                <span>%M</span>\n                <small>Minutes</small>\n            </div>\n            <div class=\"nk-hexagon\">\n                <div class=\"nk-hexagon-inner\"></div>\n                <span>%S</span>\n                <small>Seconds</small>\n            </div>"
  }
};


/***/ }),
/* 3 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(4);


/***/ }),
/* 4 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _parts_options__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(2);
/* harmony import */ var _parts_utility__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(5);
/* harmony import */ var _parts_setOptions__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(6);
/* harmony import */ var _parts_initNavbar__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(7);
/* harmony import */ var _parts_initNavbarSide__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(8);
/* harmony import */ var _parts_initNavbarDropEffect1__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(9);
/* harmony import */ var _parts_initBackgrounds__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(10);
/* harmony import */ var _parts_initCounters__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(11);
/* harmony import */ var _parts_initStore__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(12);
/* harmony import */ var _parts_initNewsBox__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(13);
/* harmony import */ var _parts_initAnchors__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(14);
/* harmony import */ var _parts_initVideoBlocks__WEBPACK_IMPORTED_MODULE_11__ = __webpack_require__(15);
/* harmony import */ var _parts_initGIF__WEBPACK_IMPORTED_MODULE_12__ = __webpack_require__(16);
/* harmony import */ var _parts_initInfoBoxes__WEBPACK_IMPORTED_MODULE_13__ = __webpack_require__(17);
/* harmony import */ var _parts_initForms__WEBPACK_IMPORTED_MODULE_14__ = __webpack_require__(18);
/* harmony import */ var _parts_initFormsMailChimp__WEBPACK_IMPORTED_MODULE_15__ = __webpack_require__(19);
/* harmony import */ var _parts_initAudioPlayer__WEBPACK_IMPORTED_MODULE_16__ = __webpack_require__(20);
/* harmony import */ var _parts_initImageSlider__WEBPACK_IMPORTED_MODULE_17__ = __webpack_require__(21);
/* harmony import */ var _parts_initFacebook__WEBPACK_IMPORTED_MODULE_18__ = __webpack_require__(22);
/* harmony import */ var _parts_initInstagram__WEBPACK_IMPORTED_MODULE_19__ = __webpack_require__(23);
/* harmony import */ var _parts_initTwitter__WEBPACK_IMPORTED_MODULE_20__ = __webpack_require__(24);
/* harmony import */ var _parts_initPluginStickySidebar__WEBPACK_IMPORTED_MODULE_21__ = __webpack_require__(25);
/* harmony import */ var _parts_initPluginFastClick__WEBPACK_IMPORTED_MODULE_22__ = __webpack_require__(26);
/* harmony import */ var _parts_initPluginNano__WEBPACK_IMPORTED_MODULE_23__ = __webpack_require__(27);
/* harmony import */ var _parts_initPluginJarallax__WEBPACK_IMPORTED_MODULE_24__ = __webpack_require__(28);
/* harmony import */ var _parts_initPluginFlickity__WEBPACK_IMPORTED_MODULE_25__ = __webpack_require__(29);
/* harmony import */ var _parts_initPluginPhotoswipe__WEBPACK_IMPORTED_MODULE_26__ = __webpack_require__(30);
/* harmony import */ var _parts_initPluginModal__WEBPACK_IMPORTED_MODULE_27__ = __webpack_require__(31);
/* harmony import */ var _parts_initPluginTabs__WEBPACK_IMPORTED_MODULE_28__ = __webpack_require__(32);
/* harmony import */ var _parts_initPluginAccordions__WEBPACK_IMPORTED_MODULE_29__ = __webpack_require__(33);
/* harmony import */ var _parts_initPluginCountdown__WEBPACK_IMPORTED_MODULE_30__ = __webpack_require__(34);
/* harmony import */ var _parts_initPluginSeiyriaBootstrapSlider__WEBPACK_IMPORTED_MODULE_31__ = __webpack_require__(35);
/* harmony import */ var _parts_initPluginSummernote__WEBPACK_IMPORTED_MODULE_32__ = __webpack_require__(36);
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }






















/* Plugins */













/*------------------------------------------------------------------

  Khaki Class

-------------------------------------------------------------------*/

var GOODGAMES = /*#__PURE__*/function () {
  function GOODGAMES() {
    _classCallCheck(this, GOODGAMES);

    this.options = _parts_options__WEBPACK_IMPORTED_MODULE_0__["options"];
  }

  _createClass(GOODGAMES, [{
    key: "init",
    value: function init() {
      // prt:sc:dm
      var self = this; // run sidebar first because of may occurs some troubles with other functions

      self.initPluginStickySidebar();
      self.initNavbar();
      self.initNavbarSide();
      self.initNavbarDropEffect1();
      self.initStore();
      self.initBackgrounds();
      self.initCounters();
      self.initNewsBox();
      self.initAnchors();
      self.initVideoBlocks();
      self.initGIF();
      self.initInfoBoxes();
      self.initForms();
      self.initFormsMailChimp();
      self.initAudioPlayer();
      self.initImageSlider();
      self.initFacebook();
      self.initInstagram();
      self.initTwitter(); // init plugins

      self.initPluginFastClick();
      self.initPluginNano();
      self.initPluginJarallax();
      self.initPluginFlickity();
      self.initPluginPhotoswipe();
      self.initPluginModal();
      self.initPluginTabs();
      self.initPluginAccordions();
      self.initPluginCountdown();
      self.initPluginSeiyriaBootstrapSlider();
      self.initPluginSummernote();
      return self;
    }
  }, {
    key: "setOptions",
    value: function setOptions(newOpts) {
      return _parts_setOptions__WEBPACK_IMPORTED_MODULE_2__["setOptions"].call(this, newOpts);
    }
  }, {
    key: "debounceResize",
    value: function debounceResize(func) {
      return _parts_utility__WEBPACK_IMPORTED_MODULE_1__["debounceResize"].call(this, func);
    }
  }, {
    key: "throttleScroll",
    value: function throttleScroll(callback) {
      return _parts_utility__WEBPACK_IMPORTED_MODULE_1__["throttleScroll"].call(this, callback);
    }
  }, {
    key: "bodyOverflow",
    value: function bodyOverflow(type) {
      return _parts_utility__WEBPACK_IMPORTED_MODULE_1__["bodyOverflow"].call(this, type);
    }
  }, {
    key: "isInViewport",
    value: function isInViewport($item, returnRect) {
      return _parts_utility__WEBPACK_IMPORTED_MODULE_1__["isInViewport"].call(this, $item, returnRect);
    }
  }, {
    key: "scrollTo",
    value: function scrollTo($to, callback) {
      return _parts_utility__WEBPACK_IMPORTED_MODULE_1__["scrollTo"].call(this, $to, callback);
    }
  }, {
    key: "initNavbar",
    value: function initNavbar() {
      return _parts_initNavbar__WEBPACK_IMPORTED_MODULE_3__["initNavbar"].call(this);
    }
  }, {
    key: "initNavbarSide",
    value: function initNavbarSide() {
      return _parts_initNavbarSide__WEBPACK_IMPORTED_MODULE_4__["initNavbarSide"].call(this);
    }
  }, {
    key: "initNavbarDropEffect1",
    value: function initNavbarDropEffect1() {
      return _parts_initNavbarDropEffect1__WEBPACK_IMPORTED_MODULE_5__["initNavbarDropEffect1"].call(this);
    }
  }, {
    key: "initBackgrounds",
    value: function initBackgrounds($context) {
      return _parts_initBackgrounds__WEBPACK_IMPORTED_MODULE_6__["initBackgrounds"].call(this, $context);
    }
  }, {
    key: "initCounters",
    value: function initCounters() {
      return _parts_initCounters__WEBPACK_IMPORTED_MODULE_7__["initCounters"].call(this);
    }
  }, {
    key: "initStore",
    value: function initStore() {
      return _parts_initStore__WEBPACK_IMPORTED_MODULE_8__["initStore"].call(this);
    }
  }, {
    key: "initNewsBox",
    value: function initNewsBox() {
      return _parts_initNewsBox__WEBPACK_IMPORTED_MODULE_9__["initNewsBox"].call(this);
    }
  }, {
    key: "initAnchors",
    value: function initAnchors() {
      return _parts_initAnchors__WEBPACK_IMPORTED_MODULE_10__["initAnchors"].call(this);
    }
  }, {
    key: "initVideoBlocks",
    value: function initVideoBlocks() {
      return _parts_initVideoBlocks__WEBPACK_IMPORTED_MODULE_11__["initVideoBlocks"].call(this);
    }
  }, {
    key: "initGIF",
    value: function initGIF() {
      return _parts_initGIF__WEBPACK_IMPORTED_MODULE_12__["initGIF"].call(this);
    }
  }, {
    key: "initInfoBoxes",
    value: function initInfoBoxes() {
      return _parts_initInfoBoxes__WEBPACK_IMPORTED_MODULE_13__["initInfoBoxes"].call(this);
    }
  }, {
    key: "initForms",
    value: function initForms() {
      return _parts_initForms__WEBPACK_IMPORTED_MODULE_14__["initForms"].call(this);
    }
  }, {
    key: "initFormsMailChimp",
    value: function initFormsMailChimp() {
      return _parts_initFormsMailChimp__WEBPACK_IMPORTED_MODULE_15__["initFormsMailChimp"].call(this);
    }
  }, {
    key: "initAudioPlayer",
    value: function initAudioPlayer() {
      return _parts_initAudioPlayer__WEBPACK_IMPORTED_MODULE_16__["initAudioPlayer"].call(this);
    }
  }, {
    key: "initImageSlider",
    value: function initImageSlider() {
      return _parts_initImageSlider__WEBPACK_IMPORTED_MODULE_17__["initImageSlider"].call(this);
    }
  }, {
    key: "initFacebook",
    value: function initFacebook() {
      return _parts_initFacebook__WEBPACK_IMPORTED_MODULE_18__["initFacebook"].call(this);
    }
  }, {
    key: "initInstagram",
    value: function initInstagram() {
      return _parts_initInstagram__WEBPACK_IMPORTED_MODULE_19__["initInstagram"].call(this);
    }
  }, {
    key: "initTwitter",
    value: function initTwitter() {
      return _parts_initTwitter__WEBPACK_IMPORTED_MODULE_20__["initTwitter"].call(this);
    }
  }, {
    key: "initPluginStickySidebar",
    value: function initPluginStickySidebar() {
      return _parts_initPluginStickySidebar__WEBPACK_IMPORTED_MODULE_21__["initPluginStickySidebar"].call(this);
    }
  }, {
    key: "initPluginFastClick",
    value: function initPluginFastClick() {
      return _parts_initPluginFastClick__WEBPACK_IMPORTED_MODULE_22__["initPluginFastClick"].call(this);
    }
  }, {
    key: "initPluginNano",
    value: function initPluginNano($context) {
      return _parts_initPluginNano__WEBPACK_IMPORTED_MODULE_23__["initPluginNano"].call(this, $context);
    }
  }, {
    key: "initPluginJarallax",
    value: function initPluginJarallax($context) {
      return _parts_initPluginJarallax__WEBPACK_IMPORTED_MODULE_24__["initPluginJarallax"].call(this, $context);
    }
  }, {
    key: "initPluginFlickity",
    value: function initPluginFlickity($context) {
      return _parts_initPluginFlickity__WEBPACK_IMPORTED_MODULE_25__["initPluginFlickity"].call(this, $context);
    }
  }, {
    key: "initPluginPhotoswipe",
    value: function initPluginPhotoswipe($context) {
      return _parts_initPluginPhotoswipe__WEBPACK_IMPORTED_MODULE_26__["initPluginPhotoswipe"].call(this, $context);
    }
  }, {
    key: "initPluginModal",
    value: function initPluginModal($context) {
      return _parts_initPluginModal__WEBPACK_IMPORTED_MODULE_27__["initPluginModal"].call(this, $context);
    }
  }, {
    key: "initPluginTabs",
    value: function initPluginTabs($context) {
      return _parts_initPluginTabs__WEBPACK_IMPORTED_MODULE_28__["initPluginTabs"].call(this, $context);
    }
  }, {
    key: "initPluginAccordions",
    value: function initPluginAccordions($context) {
      return _parts_initPluginAccordions__WEBPACK_IMPORTED_MODULE_29__["initPluginAccordions"].call(this, $context);
    }
  }, {
    key: "initPluginCountdown",
    value: function initPluginCountdown($context) {
      return _parts_initPluginCountdown__WEBPACK_IMPORTED_MODULE_30__["initPluginCountdown"].call(this, $context);
    }
  }, {
    key: "initPluginSeiyriaBootstrapSlider",
    value: function initPluginSeiyriaBootstrapSlider($context) {
      return _parts_initPluginSeiyriaBootstrapSlider__WEBPACK_IMPORTED_MODULE_31__["initPluginSeiyriaBootstrapSlider"].call(this, $context);
    }
  }, {
    key: "initPluginSummernote",
    value: function initPluginSummernote($context) {
      return _parts_initPluginSummernote__WEBPACK_IMPORTED_MODULE_32__["initPluginSummernote"].call(this, $context);
    }
  }]);

  return GOODGAMES;
}();
/*------------------------------------------------------------------

  Init GoodGames

-------------------------------------------------------------------*/


window.GoodGames = new GOODGAMES();

/***/ }),
/* 5 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "$", function() { return $; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "tween", function() { return tween; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "isIOs", function() { return isIOs; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "isMobile", function() { return isMobile; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "isFireFox", function() { return isFireFox; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "isTouch", function() { return isTouch; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "$wnd", function() { return $wnd; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "$doc", function() { return $doc; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "$body", function() { return $body; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "wndW", function() { return wndW; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "wndH", function() { return wndH; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "docH", function() { return docH; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "debounceResize", function() { return debounceResize; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "throttleScroll", function() { return throttleScroll; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "bodyOverflow", function() { return bodyOverflow; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "isBodyOverflowed", function() { return isBodyOverflowed; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "isInViewport", function() { return isInViewport; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "scrollTo", function() { return scrollTo; });
/*------------------------------------------------------------------

  Utility

-------------------------------------------------------------------*/
var $ = jQuery;
var tween = window.TweenMax;
var isIOs = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
var isMobile = /Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/g.test(navigator.userAgent || navigator.vendor || window.opera);
var isFireFox = typeof InstallTrigger !== 'undefined';
var isTouch = 'ontouchstart' in window || window.DocumentTouch && document instanceof DocumentTouch; // add 'is-mobile' or 'is-desktop' classname to html tag

$('html').addClass(isMobile ? 'is-mobile' : 'is-desktop');
/**
 * window size
 */

var $wnd = $(window);
var $doc = $(document);
var $body = $('body');
var wndW = 0;
var wndH = 0;
var docH = 0;

function getWndSize() {
  wndW = $wnd.width();
  wndH = $wnd.height();
  docH = $doc.height();
}

getWndSize();
$wnd.on('resize load orientationchange', getWndSize);
/**
 * Debounce resize
 */

var resizeArr = [];
var resizeTimeout;

function debounceResized() {
  clearTimeout(resizeTimeout);
  resizeTimeout = setTimeout(function () {
    if (resizeArr.length) {
      for (var k = 0; k < resizeArr.length; k++) {
        resizeArr[k]();
      }
    }
  }, 50);
}

$wnd.on('ready load resize orientationchange', debounceResized);
debounceResized();

function debounceResize(func) {
  if (typeof func === 'function') {
    resizeArr.push(func);
  } else {
    window.dispatchEvent(new Event('resize'));
  }
}
/**
 * Throttle scroll
 * thanks: https://jsfiddle.net/mariusc23/s6mLJ/31/
 */


var hideOnScrollList = [];
var didScroll;
var lastST = 0;
$wnd.on('scroll load resize orientationchange', function () {
  if (hideOnScrollList.length) {
    didScroll = true;
  }
});

function hasScrolled() {
  var ST = $wnd.scrollTop();
  var type = ''; // [up, down, end, start]

  if (ST > lastST) {
    type = 'down';
  } else if (ST < lastST) {
    type = 'up';
  } else {
    type = 'none';
  }

  if (ST === 0) {
    type = 'start';
  } else if (ST >= docH - wndH) {
    type = 'end';
  }

  hideOnScrollList.forEach(function (item) {
    if (typeof item === 'function') {
      item(type, ST, lastST, $wnd);
    }
  });
  lastST = ST;
}

setInterval(function () {
  if (didScroll) {
    didScroll = false;
    window.requestAnimationFrame(hasScrolled);
  }
}, 250);

function throttleScroll(callback) {
  hideOnScrollList.push(callback);
}
/**
 * Body Overflow
 * Thanks https://jsfiddle.net/mariusc23/s6mLJ/31/
 * Usage:
 *    // enable
 *    bodyOverflow(1);
 *
 *    // disable
 *    bodyOverflow(0);
 */


var bodyOverflowEnabled;
var isBodyOverflowing;
var scrollbarWidth;
var originalBodyPadding;
var $headerContent = $('.nk-header > *');

function isBodyOverflowed() {
  return bodyOverflowEnabled;
}

function bodyGetScrollbarWidth() {
  // thx d.walsh
  var scrollDiv = document.createElement('div');
  scrollDiv.className = 'nk-body-scrollbar-measure';
  $body[0].appendChild(scrollDiv);
  var result = scrollDiv.offsetWidth - scrollDiv.clientWidth;
  $body[0].removeChild(scrollDiv);
  return result;
}

function bodyCheckScrollbar() {
  var fullWindowWidth = window.innerWidth;

  if (!fullWindowWidth) {
    // workaround for missing window.innerWidth in IE8
    var documentElementRect = document.documentElement.getBoundingClientRect();
    fullWindowWidth = documentElementRect.right - Math.abs(documentElementRect.left);
  }

  isBodyOverflowing = $body[0].clientWidth < fullWindowWidth;
  scrollbarWidth = bodyGetScrollbarWidth();
}

function bodySetScrollbar() {
  if (typeof originalBodyPadding === 'undefined') {
    originalBodyPadding = $body.css('padding-right') || '';
  }

  if (isBodyOverflowing) {
    $body.add($headerContent).css('paddingRight', "".concat(scrollbarWidth, "px"));
  }
}

function bodyResetScrollbar() {
  $body.css('paddingRight', originalBodyPadding);
  $headerContent.css('paddingRight', '');
}

function bodyOverflow(enable) {
  if (enable && !bodyOverflowEnabled) {
    bodyOverflowEnabled = 1;
    bodyCheckScrollbar();
    bodySetScrollbar();
    $body.css('overflow', 'hidden');
  } else if (!enable && bodyOverflowEnabled) {
    bodyOverflowEnabled = 0;
    $body.css('overflow', '');
    bodyResetScrollbar();
  }
}
/**
 * In Viewport checker
 * return visible percent from 0 to 1
 */


function isInViewport($item, returnRect) {
  var rect = $item[0].getBoundingClientRect();
  var result = 1;

  if (rect.right <= 0 || rect.left >= wndW) {
    result = 0;
  } else if (rect.bottom < 0 && rect.top <= wndH) {
    result = 0;
  } else {
    var beforeTopEnd = Math.max(0, rect.height + rect.top);
    var beforeBottomEnd = Math.max(0, rect.height - (rect.top + rect.height - wndH));
    var afterTop = Math.max(0, -rect.top);
    var beforeBottom = Math.max(0, rect.top + rect.height - wndH);

    if (rect.height < wndH) {
      result = 1 - (afterTop || beforeBottom) / rect.height;
    } else if (beforeTopEnd <= wndH) {
      result = beforeTopEnd / wndH;
    } else if (beforeBottomEnd <= wndH) {
      result = beforeBottomEnd / wndH;
    }

    result = result < 0 ? 0 : result;
  }

  if (returnRect) {
    return [result, rect];
  }

  return result;
}
/**
 * Scroll To
 */


function scrollTo($to, callback) {
  var scrollPos = false;
  var speed = this.options.scrollToAnchorSpeed / 1000;

  if ($to === 'top') {
    scrollPos = 0;
  } else if ($to === 'bottom') {
    scrollPos = Math.max(0, docH - wndH);
  } else if (typeof $to === 'number') {
    scrollPos = $to;
  } else {
    scrollPos = $to.offset ? $to.offset().top : false;
  }

  if (scrollPos !== false && $wnd.scrollTop() !== scrollPos) {
    tween.to($wnd, speed, {
      scrollTo: {
        y: scrollPos,
        // disable autokill on iOs (buggy scrolling)
        autoKill: !isIOs
      },
      ease: Power2.easeOut,
      overwrite: 5
    });

    if (callback) {
      tween.delayedCall(speed, callback);
    }
  } else if (typeof callback === 'function') {
    callback();
  }
}



/***/ }),
/* 6 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "setOptions", function() { return setOptions; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Set Custom Options

-------------------------------------------------------------------*/

function setOptions(newOpts) {
  var self = this;
  var optsTemplates = _utility__WEBPACK_IMPORTED_MODULE_0__["$"].extend({}, this.options.templates, newOpts && newOpts.templates || {});
  var optsShortcuts = _utility__WEBPACK_IMPORTED_MODULE_0__["$"].extend({}, this.options.shortcuts, newOpts && newOpts.shortcuts || {});
  var optsEvents = _utility__WEBPACK_IMPORTED_MODULE_0__["$"].extend({}, this.options.events, newOpts && newOpts.events || {});
  self.options = _utility__WEBPACK_IMPORTED_MODULE_0__["$"].extend({}, self.options, newOpts);
  self.options.templates = optsTemplates;
  self.options.shortcuts = optsShortcuts;
  self.options.events = optsEvents;
}



/***/ }),
/* 7 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initNavbar", function() { return initNavbar; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Navbar

-------------------------------------------------------------------*/

function initNavbar() {
  var self = this;
  var $navbarTop = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-navbar-top'); // add mobile navbar

  var $mobileNavItems = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('[data-nav-mobile]');

  if ($mobileNavItems.length) {
    $mobileNavItems.each(function () {
      var $nav = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).html());
      var $mobileNav = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-nav-mobile')); // insert into mobile nav

      $mobileNav.find('.nk-navbar-mobile-content > ul.nk-nav').append($nav);
    });
    var $nav = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-navbar-mobile-content > ul.nk-nav'); // remove background images

    $nav.find('.bg-image, .bg-video').remove(); // remove mega menus

    $nav.find('.nk-mega-item > .dropdown').each(function () {
      var $drop = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).children('ul').addClass('dropdown'); // fix mega menu columns

      $drop.find('> li > label').each(function () {
        Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).next().addClass('dropdown');
        Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).parent().addClass('nk-drop-item');
        Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).replaceWith(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('<a href="#"></a>').html(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).html()));
      });
      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).replaceWith($drop);
    });
    $nav.find('.nk-mega-item').removeClass('nk-mega-item');
  } // sticky navbar


  var navbarTop = $navbarTop.length ? $navbarTop.offset().top : 0; // fake hidden navbar to prevent page jumping on stick

  var $navbarFake = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('<div>').hide();

  function onScrollNav() {
    var stickyOn = _utility__WEBPACK_IMPORTED_MODULE_0__["$wnd"].scrollTop() >= navbarTop;

    if (stickyOn) {
      $navbarTop.addClass('nk-navbar-fixed');
      $navbarFake.show();
    } else {
      $navbarTop.removeClass('nk-navbar-fixed');
      $navbarFake.hide();
    }
  }

  if ($navbarTop.hasClass('nk-navbar-sticky')) {
    $navbarTop.after($navbarFake);
    $navbarFake.height($navbarTop.innerHeight());
    self.debounceResize(function () {
      $navbarFake.height($navbarTop.innerHeight());
    });
    _utility__WEBPACK_IMPORTED_MODULE_0__["$wnd"].on('scroll resize', onScrollNav);
    onScrollNav();
  } // correct dropdown position


  function correctDropdown($item) {
    var $dropdown = $item.children('.dropdown');

    if ($item.parent().is('.nk-nav')) {
      var $parent = $item.closest('.nk-navbar');
      var $parentContainer = $parent.children('.container');
      $parentContainer = $parentContainer.length ? $parentContainer : $parent; // fix right value when sub menu is not hidden

      var css = {
        marginLeft: '',
        marginRight: '',
        marginTop: 0
      };
      $dropdown.css(css);
      var rect = $dropdown[0].getBoundingClientRect();
      var rectContainer = $parentContainer[0].getBoundingClientRect();
      var itemRect = $item[0].getBoundingClientRect(); // move dropdown from right corner (right corner will check in nav container)

      if (rect.right > rectContainer.right) {
        css.marginLeft = rectContainer.right - rect.right;
        $dropdown.css(css);
        rect = $dropdown[0].getBoundingClientRect();
      } // move dropdown from left corner


      if (rect.left < 0) {
        css.marginLeft = -rect.left;
        $dropdown.css(css);
        rect = $dropdown[0].getBoundingClientRect();
      } // check if dropdown not under item


      var currentLeftPost = rect.left + (css.marginLeft || 0);

      if (currentLeftPost > itemRect.left) {
        css.marginLeft = (css.marginLeft || 0) - (currentLeftPost - itemRect.left);
      } // correct top position
      // 10 - transform value


      css.marginTop = $parent.innerHeight() - $dropdown.offset().top + $parent.offset().top + 10;
      $dropdown.css(css);
    } else {
      $item.removeClass('nk-drop-item-reverse');

      var _rect = $dropdown[0].getBoundingClientRect();

      if (_rect.left + _rect.width > _utility__WEBPACK_IMPORTED_MODULE_0__["wndW"]) {
        $item.addClass('nk-drop-item-reverse');
      }
    }
  }

  $navbarTop.on('mouseenter', 'li.nk-drop-item', function () {
    correctDropdown(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this));
  }); // correct on page load.

  $navbarTop.find('li.nk-drop-item').each(function () {
    correctDropdown(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this));
  }); // hide / show
  // add / remove solid color

  var $autohideNav = $navbarTop.filter('.nk-navbar-autohide');
  self.throttleScroll(function (type, scroll) {
    var start = 400;
    var hideClass = 'nk-onscroll-hide';
    var showClass = 'nk-onscroll-show'; // hide / show

    if (type === 'down' && scroll > start) {
      $autohideNav.removeClass(showClass).addClass(hideClass);
    } else if (type === 'up' || type === 'end' || type === 'start') {
      $autohideNav.removeClass(hideClass).addClass(showClass);
    } // add solid color


    if ($navbarTop.hasClass('nk-navbar-transparent') && $navbarTop.hasClass('nk-navbar-sticky')) {
      $navbarTop["".concat(scroll > 70 ? 'add' : 'remove', "Class")]('nk-navbar-solid');
    }
  });
}



/***/ }),
/* 8 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initNavbarSide", function() { return initNavbarSide; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Navbar Side

-------------------------------------------------------------------*/

function initNavbarSide() {
  var self = this;
  var $overlay = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('<div class="nk-navbar-overlay">').appendTo(_utility__WEBPACK_IMPORTED_MODULE_0__["$body"]); // side navbars

  var $leftSide = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-navbar-left-side');
  var $rightSide = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-navbar-right-side');
  var $sideNavs = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-navbar-side'); // toggle navbars

  function updateTogglers() {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('[data-nav-toggle]').each(function eachNavToggle() {
      var active = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-nav-toggle')).hasClass('open');
      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this)["".concat(active ? 'add' : 'remove', "Class")]('active');
    });
  }

  self.toggleSide = function ($side, speed) {
    self[$side.hasClass('open') ? 'closeSide' : 'openSide']($side, speed);
  };

  self.openSide = function ($side, speed) {
    if ($side.css('display') === 'none') {
      return;
    }

    $side.addClass('open'); // show sidebar

    _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to($side, speed || 0.4, {
      x: $side.hasClass('nk-navbar-left-side') ? '100%' : '-100%',
      force3D: true
    }); // show overlay

    if ($side.hasClass('nk-navbar-overlay-content')) {
      _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to($overlay, 0.3, {
        opacity: 0.8,
        display: 'block',
        force3D: true
      });
    }

    updateTogglers();
  };

  self.closeSide = function ($side, speed) {
    $side.each(function eachSide() {
      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).removeClass('open'); // hide sidebar

      _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to(this, speed || 0.4, {
        x: '0%',
        force3D: true
      });
      updateTogglers();
    });

    if (!$sideNavs.filter('.nk-navbar-overlay-content.open').length) {
      // hide overlay
      _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to($overlay, 0.3, {
        opacity: 0,
        display: 'none',
        force3D: true
      });
    }
  };

  _utility__WEBPACK_IMPORTED_MODULE_0__["$doc"].on('click', '[data-nav-toggle]', function onNavToggleClick(e) {
    var $nav = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-nav-toggle'));

    if ($nav.hasClass('open')) {
      self.closeSide($nav);
    } else {
      // hide another navigations
      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('[data-nav-toggle]').each(function eachNavToggle() {
        self.closeSide(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-nav-toggle')));
      });
      self.openSide($nav);
    }

    e.preventDefault();
  }); // overlay

  _utility__WEBPACK_IMPORTED_MODULE_0__["$doc"].on('click', '.nk-navbar-overlay', function () {
    self.closeSide($sideNavs);
  }); // hide sidebar if it invisible

  self.debounceResize(function () {
    $sideNavs.filter('.open').each(function eachOpenedNavs() {
      if (!Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).is(':visible')) {
        self.closeSide(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this));
      }
    });
  }); // swipe side navbars

  if (!_utility__WEBPACK_IMPORTED_MODULE_0__["isTouch"] || typeof Hammer === 'undefined') {
    return;
  }

  var swipeStartSize = 50;
  var $swipeItem;
  var navSize;
  var openNav;
  var closeNav;
  var isRightSide;
  var isLeftSide;
  var isScrolling = 0;
  var swipeDir;
  var sidePos = false;
  var startSwipe = false;
  var endSwipe = false; // strange solution to fix pan events on the latest Chrome
  // https://github.com/hammerjs/hammer.js/issues/1065

  var mc = new Hammer.Manager(document, {
    touchAction: 'auto',
    inputClass: Hammer.SUPPORT_POINTER_EVENTS ? Hammer.PointerEventInput : Hammer.TouchInput,
    recognizers: [[Hammer.Pan, {
      direction: Hammer.DIRECTION_HORIZONTAL
    }]]
  }); // If we detect a scroll before a panleft/panright, disable panning
  // thanks: https://github.com/hammerjs/hammer.js/issues/771

  mc.on('panstart', function (e) {
    if (e.additionalEvent === 'panup' || e.additionalEvent === 'pandown') {
      isScrolling = 1;
    }
  }); // Reenable panning

  mc.on('panend', function (e) {
    if (!isScrolling) {
      if ($swipeItem) {
        var swipeSize;

        if (sidePos) {
          if (openNav) {
            swipeSize = sidePos;
          } else if (closeNav) {
            swipeSize = navSize - sidePos;
          } else {
            swipeSize = 0;
          }
        } else {
          swipeSize = 0;
        }

        var transitionTime = Math.max(0.15, 0.4 * (navSize - swipeSize) / navSize);
        var swiped = 0;

        if (swipeSize && swipeSize > 10) {
          var velocityTest = Math.abs(e.velocityX) > 0.7;

          if (swipeSize >= navSize / 3 || velocityTest) {
            swiped = 1;

            if (openNav) {
              self.openSide($swipeItem, transitionTime);
            } else {
              self.closeSide($swipeItem, transitionTime);
            }
          }
        }

        if (!swiped) {
          if (openNav) {
            self.closeSide($swipeItem, transitionTime);
          } else {
            self.openSide($swipeItem, transitionTime);
          }
        }
      }

      openNav = false;
      closeNav = false;
      isRightSide = false;
      isLeftSide = false;
      swipeDir = false;
      sidePos = false;
      $swipeItem = false;
      startSwipe = false;
      endSwipe = false;
    }

    isScrolling = 0;
  });
  mc.on('panleft panright panup pandown', function (e) {
    if (isScrolling) {
      return;
    }

    var isFirst = false;
    var isFinal = e.isFinal;

    if (startSwipe === false) {
      startSwipe = e.center.x;
      isFirst = true;
    }

    endSwipe = e.center.x; // init

    if (isFirst) {
      if (e.direction === 2) {
        swipeDir = 'left';
      } else if (e.direction === 4) {
        swipeDir = 'right';
      } else {
        swipeDir = false;
      } // right side


      if ($rightSide && $rightSide.length) {
        navSize = $rightSide.width(); // open

        if (_utility__WEBPACK_IMPORTED_MODULE_0__["wndW"] - startSwipe <= swipeStartSize && !$rightSide.hasClass('open') && !$leftSide.hasClass('open')) {
          openNav = 1;
          isRightSide = 1; // close
        } else if (_utility__WEBPACK_IMPORTED_MODULE_0__["wndW"] - startSwipe >= navSize - 100 && $rightSide.hasClass('open')) {
          closeNav = 1;
          isRightSide = 1;
        }
      } // left side


      if ($leftSide && $leftSide.length && !isRightSide && $leftSide.is(':visible')) {
        navSize = $leftSide.width(); // open

        if (startSwipe <= swipeStartSize && !$rightSide.hasClass('open') && !$leftSide.hasClass('open')) {
          openNav = 1;
          isLeftSide = 1; // close
        } else if (startSwipe >= navSize - 100 && $leftSide.hasClass('open')) {
          closeNav = 1;
          isLeftSide = 1;
        }
      } // swipe item


      if (isLeftSide) {
        $swipeItem = $leftSide;
      } else if (isRightSide) {
        $swipeItem = $rightSide;
      } else {
        $swipeItem = false;
      } // move

    } else if (!isFinal && $swipeItem) {
      if (isRightSide && (openNav && swipeDir === 'left' || closeNav && swipeDir === 'right')) {
        // open side navbar
        if (openNav) {
          sidePos = Math.min(navSize, Math.max(0, startSwipe - endSwipe));
        } // close side navbar


        if (closeNav) {
          var curPos = startSwipe - endSwipe;

          if (startSwipe < _utility__WEBPACK_IMPORTED_MODULE_0__["wndW"] - navSize) {
            curPos = _utility__WEBPACK_IMPORTED_MODULE_0__["wndW"] - navSize - endSwipe;
          }

          sidePos = navSize - Math.abs(Math.max(-navSize, Math.min(0, curPos)));
        }

        _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].set($swipeItem, {
          x: "".concat(-100 * sidePos / navSize, "%")
        });
      } else if (isLeftSide && (openNav && swipeDir === 'right' || closeNav && swipeDir === 'left')) {
        // open mobile navbar
        if (openNav) {
          sidePos = Math.min(navSize, Math.max(0, endSwipe - startSwipe));
        } // close mobile navbar


        if (closeNav) {
          var curPos2 = endSwipe - startSwipe;

          if (startSwipe > navSize) {
            curPos2 = endSwipe - navSize;
          }

          sidePos = navSize - Math.abs(Math.max(-navSize, Math.min(0, curPos2)));
        }

        _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].set($swipeItem, {
          x: "".concat(100 * sidePos / navSize, "%")
        });
      }
    }
  }); // prevent scrolling when opening/hiding navigation

  window.addEventListener('touchmove', function (e) {
    if (isRightSide || isLeftSide) {
      e.preventDefault();
    }
  }, {
    passive: false
  });
}



/***/ }),
/* 9 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initNavbarDropEffect1", function() { return initNavbarDropEffect1; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Dropdown Effect 1 for side navbars and fullscreen

-------------------------------------------------------------------*/

function initNavbarDropEffect1() {
  var self = this;
  var $navbars = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-navbar-side, .nk-navbar-full'); // add back item for dropdowns

  $navbars.find('.dropdown').prepend("<li class=\"bropdown-back\"><a href=\"#\">".concat(self.options.templates.secondaryNavbarBackItem, "</a></li>")); // change height of opened dropdown

  function updateSideNavDropdown($item) {
    var $nav = $item.parents('.nk-navbar:eq(0)');
    var $khNav = $nav.find('.nk-nav');
    var $nanoCont = $khNav.children('.nano-content');
    var $khNavRow = $khNav.parent();
    var $drop = $nav.find('.nk-drop-item.open > .dropdown:not(.closed)');

    if ($drop.length) {
      var dropHeight = $drop.innerHeight(); // vertical center for dropdown

      if ($khNavRow.hasClass('nk-nav-row-center')) {
        $drop.css({
          top: 0
        });
        $khNav.hide();
        var nanoHeight = $khNavRow.innerHeight();
        $khNav.show();
        var nanoNavRowHeight = nanoHeight;
        var nanoTop = $khNavRow.offset().top;
        var dropTop = $drop.offset().top;
        var top = nanoTop - dropTop;

        if (dropHeight < nanoNavRowHeight) {
          top += (nanoHeight - dropHeight) / 2;
        }

        $drop.css({
          top: top
        });
      }

      $khNav.css('height', dropHeight);
      self.initPluginNano($nav); // scroll to top

      _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to($nanoCont, 0.3, {
        scrollTo: {
          y: 0
        },
        delay: 0.2
      });
    } else {
      $khNav.css('height', '');
    }

    self.initPluginNano($nav);
  } // open / close submenu


  function toggleSubmenu(open, $drop) {
    var $newItems = $drop.find('> .dropdown > li > a');
    var $oldItems = $drop.parent().find('> li > a');

    if (open) {
      $drop.addClass('open').parent().addClass('closed');
    } else {
      $drop.removeClass('open').parent().removeClass('closed');
      var tmp = $newItems;
      $newItems = $oldItems;
      $oldItems = tmp;
    } // show items


    _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].set($newItems, {
      x: open ? '20%' : '-20%',
      opacity: 0,
      display: 'block'
    }, 0.1);
    _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].staggerTo($newItems, 0.2, {
      x: '0%',
      opacity: 1,
      delay: 0.1
    }, 0.05); // hide items

    _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].staggerTo($oldItems, 0.2, {
      x: open ? '-20%' : '20%',
      opacity: 0
    }, 0.05, function () {
      $oldItems.css('display', 'none');
    });
  }

  $navbars.on('click', '.nk-drop-item > a', function (e) {
    toggleSubmenu(true, Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).parent());
    updateSideNavDropdown(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this));
    e.preventDefault();
  });
  $navbars.on('click', '.bropdown-back > a', function (e) {
    toggleSubmenu(false, Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).parent().parent().parent());
    updateSideNavDropdown(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this));
    e.preventDefault();
  });
}



/***/ }),
/* 10 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initBackgrounds", function() { return initBackgrounds; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* Bootstrap Backgrounds */

function initBackgrounds() {
  if (typeof MutationObserver === 'undefined') {
    return;
  } // fix page backgrounds right offset when body padding changed (for example when showed bootstrap modal).


  var $backgrounds = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-page-background-top, .nk-page-background-bottom, .nk-page-background-fixed');

  if ($backgrounds.length) {
    var observer = new MutationObserver(function (mutations) {
      mutations.forEach(function () {
        var right = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('body').css('padding-right');

        if (right) {
          $backgrounds.css('width', "calc(100% - ".concat(right, ")"));
        } else {
          $backgrounds.css('width', '');
        }
      });
    });
    observer.observe(_utility__WEBPACK_IMPORTED_MODULE_0__["$body"][0], {
      attributes: true,
      attributeFilter: ['style']
    });
  }
}



/***/ }),
/* 11 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initCounters", function() { return initCounters; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Counters

-------------------------------------------------------------------*/

function initCounters() {
  var self = this;
  var $progressCount = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-progress.nk-count');
  var $numberCount = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-count:not(.nk-progress)'); // set default progress

  $progressCount.each(function () {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-nk-count', Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-progress')).attr('data-nk-mask', Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-progress-mask')).find('.nk-progress-line > div').css('width', "".concat(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-nk-count-from') || '0', "%")).find('.nk-progress-percent').html('');
  }); // set default numbers

  $numberCount.each(function () {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-nk-count', Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-nk-count') || parseInt(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).text(), 10)).html(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-nk-count-from') || '0');
  });
  var countersNum = 1;

  function runCounters() {
    if (!countersNum) {
      return;
    }

    var progress = $progressCount.filter('[data-nk-count]');
    var numbers = $numberCount.filter('[data-nk-count]');
    countersNum = progress.length + numbers.length; // progress

    $progressCount.filter('[data-nk-count]').each(function () {
      var $item = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);

      if (self.isInViewport($item)) {
        var count = {
          curr: $item.attr('data-nk-count-from') || '0',
          to: $item.attr('data-nk-count'),
          mask: $item.attr('data-nk-mask') || '{$}%'
        };
        var $itemLine = $item.find('.nk-progress-line > div');
        var $itemLabel = $item.find('.nk-progress-percent');
        _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to($itemLine, 1, {
          width: "".concat(count.to, "%")
        });
        _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to(count, 1, {
          curr: count.to,
          roundProps: 'curr',
          ease: Circ.easeIn,
          onUpdate: function onUpdate() {
            $itemLabel.text(count.mask.replace('{$}', count.curr));
          }
        });
        $item.removeAttr('data-nk-count');
      }
    }); // number

    $numberCount.filter('[data-nk-count]').each(function () {
      var $item = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);

      if (self.isInViewport($item)) {
        var count = {
          curr: $item.text(),
          to: $item.attr('data-nk-count')
        };
        $item.removeAttr('data-nk-count data-nk-count-from');
        _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to(count, 1, {
          curr: count.to,
          roundProps: 'curr',
          ease: Circ.easeIn,
          onUpdate: function onUpdate() {
            $item.text(count.curr);
          }
        });
      }
    });
  }

  self.throttleScroll(runCounters);
  runCounters();
}



/***/ }),
/* 12 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initStore", function() { return initStore; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Store

-------------------------------------------------------------------*/

function initStore() {
  var self = this; // scroll to ratings

  _utility__WEBPACK_IMPORTED_MODULE_0__["$doc"].on('click', 'a.nk-product-rating', function (e) {
    var isHash = this.hash;

    if (isHash) {
      var $hashBlock = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(isHash).parents('.nk-tabs:eq(0)');

      if ($hashBlock.length) {
        self.scrollTo($hashBlock);
      }

      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-tabs').find("[data-toggle=\"tab\"][href=\"".concat(isHash, "\"]")).click();
    }

    e.preventDefault();
  });
}



/***/ }),
/* 13 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initNewsBox", function() { return initNewsBox; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

 Init News Box

 -------------------------------------------------------------------*/

function initNewsBox() {
  _utility__WEBPACK_IMPORTED_MODULE_0__["$doc"].on('click', '.nk-news-box .nk-news-box-item', function () {
    var $this = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
    var $info = $this.parents('.nk-news-box:eq(0)').find('.nk-news-box-each-info'); // get data

    var data = {
      title: $this.find('.nk-news-box-item-title').html(),
      img: $this.find('.nk-news-box-item-full-img').attr('src'),
      img_alt: $this.find('.nk-news-box-item-full-img').attr('alt'),
      categories: $this.find('.nk-news-box-item-categories').html(),
      text: $this.find('.nk-news-box-item-text').html(),
      url: $this.find('.nk-news-box-item-url').attr('href'),
      date: $this.find('.nk-news-box-item-date').html()
    }; // set data

    $info.find('.nk-news-box-item-title').html(data.title);

    if ($info.find('.nk-news-box-item-image > img').length) {
      $info.find('.nk-news-box-item-image > img').attr('src', data.img).attr('alt', data.img_alt);
    } else {
      $info.find('.nk-news-box-item-image').css('background-image', "url(\"".concat(data.img, "\")"));
    }

    $info.find('.nk-news-box-item-categories').html(data.categories);
    $info.find('.nk-news-box-item-text').html(data.text);
    $info.find('.nk-news-box-item-more').attr('href', data.url);
    $info.find('.nk-news-box-item-date').html(data.date); // activate item

    $this.addClass('nk-news-box-item-active').siblings().removeClass('nk-news-box-item-active');
  }); // click on active item on load

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-news-box .nk-news-box-item-active').trigger('click');
}



/***/ }),
/* 14 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initAnchors", function() { return initAnchors; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Anchors

-------------------------------------------------------------------*/

function initAnchors() {
  var self = this; // click on anchors

  var $leftSideNav = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-navbar-left-side');
  var $rightSideNav = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-navbar-right-side');

  function closeNavs() {
    self.closeSide($leftSideNav);
    self.closeSide($rightSideNav);
    self.closeFullscreenNavbar();
  }

  _utility__WEBPACK_IMPORTED_MODULE_0__["$doc"].on('click', '.navbar a, .nk-navbar a, a.btn, a.nk-btn, a.nk-anchor', function (e) {
    var isHash = this.hash;
    var isURIsame = this.baseURI === window.location.href;

    if (isHash && isURIsame) {
      // sometimes hashs have no valid selector like ##hash, it will throw errors
      try {
        var $hashBlock = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(isHash);
        var hash = isHash.replace(/^#/, '');

        if ($hashBlock.length || hash === 'top' || hash === 'bottom') {
          // close navigations
          closeNavs(); // scroll to block

          self.scrollTo($hashBlock.length ? $hashBlock : hash);
          e.preventDefault();
        } // eslint-disable-next-line

      } catch (evt) {}
    }
  }); // add active class on navbar items

  var $anchorItems = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-navbar .nk-nav > li > a[href*="#"]');
  var anchorBlocks = [];

  function hashInArray(item) {
    for (var k = 0; k < anchorBlocks.length; k++) {
      if (anchorBlocks[k].hash === item) {
        return k;
      }
    }

    return false;
  } // get all anchors + blocks on the page


  $anchorItems.each(function () {
    var hash = this.hash.replace(/^#/, '');

    if (!hash) {
      return;
    }

    var $item = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).parent();
    var $block = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])("#".concat(hash));

    if (hash && $block.length || hash === 'top') {
      var inArray = hashInArray(hash);

      if (inArray === false) {
        anchorBlocks.push({
          hash: hash,
          $item: $item,
          $block: $block
        });
      } else {
        anchorBlocks[inArray].$item = anchorBlocks[inArray].$item.add($item);
      }
    }
  }); // prepare anchor list and listen for scroll to activate items in navbar

  function updateAnchorItemsPositions() {
    for (var k = 0; k < anchorBlocks.length; k++) {
      var item = anchorBlocks[k];
      var blockTop = 0;
      var blockH = _utility__WEBPACK_IMPORTED_MODULE_0__["wndH"];

      if (item.$block.length) {
        blockTop = item.$block.offset().top;
        blockH = item.$block.innerHeight();
      }

      item.activate = blockTop - _utility__WEBPACK_IMPORTED_MODULE_0__["wndH"] / 2;
      item.deactivate = blockTop + blockH - _utility__WEBPACK_IMPORTED_MODULE_0__["wndH"] / 2;
    }
  }

  function setAnchorActiveItem(type, ST) {
    for (var k = 0; k < anchorBlocks.length; k++) {
      var item = anchorBlocks[k];
      var active = ST >= item.activate && ST < item.deactivate;
      item.$item[active ? 'addClass' : 'removeClass']('active');
    }
  }

  if (anchorBlocks.length) {
    updateAnchorItemsPositions();
    setAnchorActiveItem('static', _utility__WEBPACK_IMPORTED_MODULE_0__["$wnd"].scrollTop());
    self.throttleScroll(setAnchorActiveItem);
    self.debounceResize(updateAnchorItemsPositions);
  }
}



/***/ }),
/* 15 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initVideoBlocks", function() { return initVideoBlocks; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Video Blocks

-------------------------------------------------------------------*/

function initVideoBlocks() {
  if (typeof window.VideoWorker === 'undefined') {
    return;
  }

  var self = this; // init plain video

  function addPlainPlayButton($plainCont) {
    $plainCont.find('.nk-video-plain-toggle').html(self.options.templates.plainVideoIcon);
  }

  function addPlainLoadButton($plainCont) {
    $plainCont.find('.nk-video-plain-toggle').html(self.options.templates.plainVideoLoadIcon || self.options.templates.plainVideoIcon);
  }

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-plain-video[data-video]').each(function () {
    var $plainCont = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
    var $plainIframe;
    var url = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-video');
    var thumb = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-video-thumb');
    var api = new VideoWorker(url, {
      autoplay: 0,
      loop: 0,
      mute: 0,
      controls: 1
    });

    if (api && api.isValid()) {
      var loaded = 0;
      var clicked = 0; // add play event

      $plainCont.on('click', function () {
        if (_utility__WEBPACK_IMPORTED_MODULE_0__["isMobile"]) {
          window.open(api.url);
          return;
        }

        if (clicked) {
          return;
        }

        clicked = 1; // add loading button

        if (!loaded) {
          addPlainLoadButton($plainCont);
          api.getIframe(function (iframe) {
            // add iframe
            $plainIframe = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(iframe);
            var $parent = $plainIframe.parent();
            _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].set(iframe, {
              opacity: 0,
              left: '101%'
            });
            $plainIframe.appendTo($plainCont);
            $parent.remove();
            api.play();
          });
        } else {
          api.play();
        }
      }); // add play button

      $plainCont.append('<span class="nk-video-plain-toggle"></span>');
      addPlainPlayButton($plainCont); // set thumb

      if (thumb) {
        $plainCont.css('background-image', "url(\"".concat(thumb, "\")"));
      } else {
        api.getImageURL(function (imgSrc) {
          $plainCont.css('background-image', "url(\"".concat(imgSrc, "\")"));
        });
      }

      if (_utility__WEBPACK_IMPORTED_MODULE_0__["isMobile"]) {
        return;
      }

      api.on('ready', function () {
        api.play();
      });
      api.on('play', function () {
        _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].set($plainIframe, {
          left: '0%'
        });
        _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to($plainIframe, 0.5, {
          opacity: 1,
          onComplete: function onComplete() {
            // add play button
            if (!loaded) {
              addPlainPlayButton($plainCont);
              loaded = 1;
            }
          }
        }); // pause audio

        if (typeof soundManager !== 'undefined') {
          soundManager.pauseAll();
        }
      });
    }
  });
}



/***/ }),
/* 16 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initGIF", function() { return initGIF; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init GIFs

-------------------------------------------------------------------*/

function initGIF() {
  var self = this; // load gif in background

  function loadGif(url, cb) {
    var temp = new Image();

    temp.onload = function () {
      cb();
    };

    temp.src = url;
  } // play gif


  function playGif(item) {
    var $item = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(item);

    if (!item.gifPlaying) {
      item.gifPlaying = true;

      if (item.khGifLoaded) {
        $item.addClass('nk-gif-playing');
        $item.find('img').attr('src', $item.find('img').attr('data-gif'));
      } else if (!item.khGifLoading) {
        item.khGifLoading = 1;
        $item.addClass('nk-gif-loading');
        loadGif($item.find('img').attr('data-gif'), function () {
          item.khGifLoaded = 1;
          $item.removeClass('nk-gif-loading');

          if (item.gifPlaying) {
            item.gifPlaying = false;
            playGif(item);
          }
        });
      }
    }
  } // stop playing gif


  function stopGif(item) {
    var $item = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(item);

    if (item.gifPlaying) {
      item.gifPlaying = false;
      $item.removeClass('nk-gif-playing');
      $item.find('img').attr('src', $item.find('img').attr('data-gif-static'));
    }
  } // prepare gif containers


  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-gif').each(function () {
    var $this = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this); // add toggle button

    $this.append("<a class=\"nk-gif-toggle\">".concat(self.options.templates.gifIcon, "</a>")); // add loading circle

    $this.append('<div class="nk-loading-spinner"><i></i></div>');
    $this.find('img').attr('data-gif-static', $this.find('img').attr('src'));
  }); // hover gif

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-gif-hover').on('mouseenter', function () {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).addClass('hover');
    playGif(this);
  }).on('mouseleave', function () {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).removeClass('hover');
    stopGif(this);
  }); // click gif

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-gif-click').on('click', function () {
    if (this.gifPlaying) {
      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).removeClass('hover');
      stopGif(this);
    } else {
      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).addClass('hover');
      playGif(this);
    }
  }); // autoplay in viewport

  var $gifVP = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-gif-viewport');

  if ($gifVP.length) {
    self.throttleScroll(function () {
      $gifVP.each(function () {
        var inVP = self.isInViewport(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this), 1);

        if (inVP[0]) {
          if (inVP[1].height / _utility__WEBPACK_IMPORTED_MODULE_0__["wndH"] < 0.7) {
            if (inVP[0] === 1) {
              playGif(this);
            } else {
              stopGif(this);
            }
          } else if (inVP[0] >= 0.7) {
            playGif(this);
          } else {
            stopGif(this);
          }
        } else {
          stopGif(this);
        }
      });
    });
  } // autoplay gif


  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-gif:not(.nk-gif-click):not(.nk-gif-hover):not(.nk-gif-viewport)').each(function () {
    playGif(this);
  });
}



/***/ }),
/* 17 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initInfoBoxes", function() { return initInfoBoxes; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Info Boxes / Alerts

-------------------------------------------------------------------*/

function initInfoBoxes() {
  var self = this; // close

  _utility__WEBPACK_IMPORTED_MODULE_0__["$doc"].on('click', '.nk-info-box .nk-info-box-close', function (e) {
    e.preventDefault();
    var $box = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).parents('.nk-info-box:eq(0)');
    _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to($box, 0.3, {
      opacity: 0,
      onComplete: function onComplete() {
        _utility__WEBPACK_IMPORTED_MODULE_0__["tween"].to($box, 0.3, {
          height: 0,
          padding: 0,
          margin: 0,
          display: 'none',
          onComplete: function onComplete() {
            self.debounceResize();
          }
        });
      }
    });
  });
}



/***/ }),
/* 18 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initForms", function() { return initForms; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init AJAX Forms

-------------------------------------------------------------------*/

function initForms() {
  if (typeof _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator === 'undefined') {
    return;
  }

  var self = this; // Validate Khaki Forms

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('form:not(.nk-form-ajax):not(.nk-mchimp):not([novalidate])').each(function () {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).validate({
      errorClass: 'nk-error',
      errorElement: 'div',
      errorPlacement: function errorPlacement(error, element) {
        var $parent = element.parent('.input-group');

        if ($parent.length) {
          $parent.after(error);
        } else {
          element.after(error);
        }

        self.debounceResize();
      }
    });
  }); // ajax form

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('form.nk-form-ajax:not([novalidate])').each(function () {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).validate({
      errorClass: 'nk-error',
      errorElement: 'div',
      errorPlacement: function errorPlacement(error, element) {
        var $parent = element.parent('.input-group');

        if ($parent.length) {
          $parent.after(error);
        } else {
          element.after(error);
        }

        self.debounceResize();
      },
      // Submit the form via ajax (see: jQuery Form plugin)
      submitHandler: function submitHandler(form) {
        var $responseSuccess = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(form).find('.nk-form-response-success');
        var $responseError = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(form).find('.nk-form-response-error');
        var $form = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(form);
        _utility__WEBPACK_IMPORTED_MODULE_0__["$"].ajax({
          type: 'POST',
          url: $form.attr('action'),
          data: $form.serialize(),
          success: function success(response) {
            response = JSON.parse(response);

            if (response.type && response.type === 'success') {
              $responseError.hide();
              $responseSuccess.html(response.response).show();
              form.reset();
            } else {
              $responseSuccess.hide();
              $responseError.html(response.response).show();
            }

            self.debounceResize();
          },
          error: function error(response) {
            $responseSuccess.hide();
            $responseError.html(response.responseText).show();
            self.debounceResize();
          }
        });
      }
    });
  });
}



/***/ }),
/* 19 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initFormsMailChimp", function() { return initFormsMailChimp; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init MailChimp

-------------------------------------------------------------------*/

function initFormsMailChimp() {
  var $mchimp = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('form.nk-mchimp');

  if (typeof _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator === 'undefined' || !$mchimp.length) {
    return;
  }

  var self = this; // Additional Validate Methods From MailChimp
  // Validate a multifield birthday

  _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.addMethod('mc_birthday', function (date, element, groupingClass) {
    var isValid = false;
    var $fields = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('input:not(:hidden)', Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(element).closest(groupingClass));

    if ($fields.filter(':filled').length === 0 && this.optional(element)) {
      isValid = true; // None have been filled out, so no error
    } else {
      var dateArray = [];
      dateArray.month = $fields.filter('input[name*="[month]"]').val();
      dateArray.day = $fields.filter('input[name*="[day]"]').val(); // correct month value

      dateArray.month -= 1;
      var testDate = new Date(1970, dateArray.month, dateArray.day);

      if (testDate.getDate() !== dateArray.day || testDate.getMonth() !== dateArray.month) {
        isValid = false;
      } else {
        isValid = true;
      }
    }

    return isValid;
  }, 'Please enter a valid month and day.'); // Validate a multifield date

  _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.addMethod('mc_date', function (date, element, groupingClass) {
    var isValid = false;
    var $fields = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('input:not(:hidden)', Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(element).closest(groupingClass));

    if ($fields.filter(':filled').length === 0 && this.optional(element)) {
      isValid = true; // None have been filled out, so no error
    } else {
      var dateArray = [];
      dateArray.month = $fields.filter('input[name*="[month]"]').val();
      dateArray.day = $fields.filter('input[name*="[day]"]').val();
      dateArray.year = $fields.filter('input[name*="[year]"]').val(); // correct month value

      dateArray.month -= 1; // correct year value

      if (dateArray.year.length < 4) {
        dateArray.year = parseInt(dateArray.year, 10) < 50 ? 2000 + parseInt(dateArray.year, 10) : 1900 + parseInt(dateArray.year, 10);
      }

      var testDate = new Date(dateArray.year, dateArray.month, dateArray.day);

      if (testDate.getDate() !== dateArray.day || testDate.getMonth() !== dateArray.month || testDate.getFullYear() !== dateArray.year) {
        isValid = false;
      } else {
        isValid = true;
      }
    }

    return isValid;
  }, 'Please enter a valid date'); // Validate a multifield phone number

  _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.addMethod('mc_phone', function (phoneNumber, element, groupingClass) {
    var isValid = false;
    var $fields = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('input:filled:not(:hidden)', Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(element).closest(groupingClass));

    if ($fields.length === 0 && this.optional(element)) {
      isValid = true; // None have been filled out, so no error
    } else {
      phoneNumber = $fields.eq(0).val() + $fields.eq(1).val() + $fields.eq(2).val();
      isValid = phoneNumber.length === 10 && phoneNumber.match(/[0-9]{9}/);
    }

    return isValid;
  }, 'Please specify a valid phone number');
  _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.addMethod('skip_or_complete_group', function (value, element, groupingClass) {
    var $fields = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('input:not(:hidden)', Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(element).closest(groupingClass));
    var $fieldsFirst = $fields.eq(0);
    var validator = $fieldsFirst.data('valid_skip') ? $fieldsFirst.data('valid_skip') : _utility__WEBPACK_IMPORTED_MODULE_0__["$"].extend({}, this);
    var numberFilled = $fields.filter(function () {
      return validator.elementValue(this);
    }).length;
    var isValid = numberFilled === 0 || numberFilled === $fields.length; // Store the cloned validator for future validation

    $fieldsFirst.data('valid_skip', validator); // If element isn't being validated, run each field's validation rules

    if (!Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(element).data('being_validated')) {
      $fields.data('being_validated', true);
      $fields.each(function () {
        validator.element(this);
      });
      $fields.data('being_validated', false);
    }

    return isValid;
  }, _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.format('Please supply missing fields.'));
  _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.addMethod('skip_or_fill_minimum', function (value, element, options) {
    var $fields = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(options[1], element.form);
    var $fieldsFirst = $fields.eq(0);
    var validator = $fieldsFirst.data('valid_skip') ? $fieldsFirst.data('valid_skip') : _utility__WEBPACK_IMPORTED_MODULE_0__["$"].extend({}, this);
    var numberFilled = $fields.filter(function () {
      return validator.elementValue(this);
    }).length;
    var isValid = numberFilled === 0 || numberFilled >= options[0]; // Store the cloned validator for future validation

    $fieldsFirst.data('valid_skip', validator); // If element isn't being validated, run each skip_or_fill_minimum field's validation rules

    if (!Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(element).data('being_validated')) {
      $fields.data('being_validated', true);
      $fields.each(function () {
        validator.element(this);
      });
      $fields.data('being_validated', false);
    }

    return isValid;
  }, _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.format('Please either skip these fields or fill at least {0} of them.'));
  _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.addMethod('zipcodeUS', function (value, element) {
    return this.optional(element) || /^\d{5}-\d{4}$|^\d{5}$/.test(value);
  }, 'The specified US ZIP Code is invalid');
  $mchimp.each(function () {
    var $form = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);

    if (!$form.length) {
      return;
    }

    var validator = $form.validate({
      errorClass: 'nk-error',
      errorElement: 'div',
      // Grouping fields makes jQuery Validation display one error for all the fields in the group
      // It doesn't have anything to do with how the fields are validated (together or separately),
      // it's strictly for visual display of errors
      groups: function groups() {
        var groups = {};
        $form.find('.input-group').each(function () {
          // TODO: What about non-text inputs like number?
          var inputs = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).find('input:text:not(:hidden)');

          if (inputs.length > 1) {
            var mergeName = inputs.first().attr('name');
            var fieldNames = _utility__WEBPACK_IMPORTED_MODULE_0__["$"].map(inputs, function (f) {
              return f.name;
            });
            groups[mergeName.substring(0, mergeName.indexOf('['))] = fieldNames.join(' ');
          }
        });
        return groups;
      },
      // Place a field's inline error HTML just before the div.input-group closing tag
      errorPlacement: function errorPlacement(error, element) {
        element.closest('.input-group').after(error);
        self.debounceResize();
      },
      // Submit the form via ajax (see: jQuery Form plugin)
      submitHandler: function submitHandler() {
        var $responseSuccess = $form.find('.nk-form-response-success');
        var $responseError = $form.find('.nk-form-response-error');
        var url = $form.attr('action');
        url = url.replace('/post?u=', '/post-json?u=');
        url += '&c=?';
        _utility__WEBPACK_IMPORTED_MODULE_0__["$"].ajax({
          dataType: 'jsonp',
          url: url,
          data: $form.serializeArray(),
          success: function success(resp) {
            $responseSuccess.hide();
            $responseError.hide(); // On successful form submission, display a success message and reset the form

            if (resp.result === 'success') {
              $responseSuccess.show().html(resp.msg);
              $form[0].reset(); // If the form has errors, display them, inline if possible, or appended to #mce-error-response
            } else {
              // Example errors - Note: You only get one back at a time even if you submit several that are bad.
              // Error structure - number indicates the index of the merge field that was invalid, then details
              // Object {result: "error", msg: "6 - Please enter the date"}
              // Object {result: "error", msg: "4 - Please enter a value"}
              // Object {result: "error", msg: "9 - Please enter a complete address"}
              // Try to parse the error into a field index and a message.
              // On failure, just put the dump thing into in the msg letiable.
              var index = -1;
              var msg;

              try {
                var parts = resp.msg.split(' - ', 2);

                if (typeof parts[1] === 'undefined') {
                  msg = resp.msg;
                } else {
                  var i = parseInt(parts[0], 10);

                  if (i.toString() === parts[0]) {
                    index = parts[0];
                    msg = parts[1];
                  } else {
                    index = -1;
                    msg = resp.msg;
                  }
                }
              } catch (e) {
                index = -1;
                msg = resp.msg;
              }

              try {
                // If index is -1 if means we don't have data on specifically which field was invalid.
                // Just lump the error message into the generic response div.
                if (index === -1) {
                  $responseError.show().html(msg);
                } else {
                  var fieldName = $form.find("input[name]:eq(".concat(index, ")")).attr('name'); // Make sure this exists

                  var data = {};
                  data[fieldName] = msg;
                  validator.showErrors(data);
                }
              } catch (e) {
                $responseError.show().html(msg);
              }
            }

            self.debounceResize();
          },
          error: function error(response) {
            $responseSuccess.hide();
            $responseError.html(response.responseText).show();
            self.debounceResize();
          }
        });
      }
    });
  }); // Custom validation methods for fields with certain css classes

  _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.addClassRules('birthday', {
    digits: true,
    mc_birthday: '.datefield'
  });
  _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.addClassRules('datepart', {
    digits: true,
    mc_date: '.datefield'
  });
  _utility__WEBPACK_IMPORTED_MODULE_0__["$"].validator.addClassRules('phonepart', {
    digits: true,
    mc_phone: '.phonefield'
  });
}



/***/ }),
/* 20 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initAudioPlayer", function() { return initAudioPlayer; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

 Init Audio Player

 -------------------------------------------------------------------*/

function initAudioPlayer() {
  if (typeof soundManager === 'undefined') {
    return;
  }

  var _self = this;

  var progressBusy = false; // busy when user drag progress bar

  /* Plain audio players */

  var $playersPlain = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-audio-plain'); // add play and pause buttons

  $playersPlain.prepend(_self.options.templates.audioPlainButton);

  var PlayersPlain = function PlayersPlain($item) {
    var self = this;
    self.$item = $item;
    self.url = $item.attr('data-src');
    self.$playPauseBtn = $item.find('.nk-audio-plain-play-pause');
    self.$progress = $item.find('.nk-audio-progress-current');
    self.$timer = $item.find('.nk-audio-plain-duration');
    self.$timer.attr('data-duration', self.$timer.text());

    function onPlay() {
      $item.addClass('nk-audio-plain-playing');
    }

    function onStop() {
      self.seek(0);
      self.step();
      self.$item.removeClass('nk-audio-plain-playing');
      self.$timer.text(self.$timer.attr('data-duration'));
    }

    self.api = soundManager.createSound({
      volume: 100,
      whileplaying: function whileplaying() {
        self.step();
      },
      onplay: onPlay,
      onresume: onPlay,
      onpause: function onpause() {
        self.$item.removeClass('nk-audio-plain-playing');
        self.$timer.text(self.$timer.attr('data-duration'));
      },
      onstop: onStop,
      onfinish: onStop,
      onload: function onload(ok) {
        if (!ok && this._iO && this._iO.onerror) {
          this._iO.onerror();
        }
      }
    });
    self.$playPauseBtn.on('click', function () {
      if (!self.api.paused && self.api.playState && self.api.url) {
        self.pause();
      } else {
        self.play();
      }
    });
  };

  PlayersPlain.prototype = {
    /**
     * Play a song in the playlist.
     * @param  {Number} index Index of the song in the playlist (leave empty to play the first or current).
     */
    play: function play() {
      // pause all players
      soundManager.pauseAll(); // Begin playing the sound.

      this.api.play({
        url: this.url
      });
    },

    /**
     * Pause the currently playing track.
     */
    pause: function pause() {
      // Puase the sound.
      soundManager.pauseAll();
    },

    /**
     * Seek to a new position in the currently playing track.
     * @param  {Number} per Percentage through the song to skip.
     */
    seek: function seek(per) {
      this.api.setPosition(this.api.duration * per);
    },

    /**
     * The step called within requestAnimationFrame to update the playback position.
     */
    step: function step() {
      var self = this; // Determine our current seek position.

      var seek = self.api.position || 0;
      self.progress = seek / self.api.duration;
      self.$timer[0].innerHTML = self.formatTime(Math.round(seek));

      if (!progressBusy) {
        self.$progress[0].style.width = "".concat(self.progress * 100 || 0, "%");
      }
    },

    /**
     * Format the time from seconds to M:SS.
     * @param  {Number} secs Seconds to format.
     * @return {String}      Formatted time.
     */
    formatTime: function formatTime(msec) {
      var secs = Math.round(msec / 1000) || 0;
      var minutes = Math.floor(secs / 60) || 0;
      minutes = (minutes < 10 ? '0' : 0) + minutes;
      var seconds = secs - minutes * 60;
      return "".concat(minutes, ":").concat(seconds < 10 ? '0' : '').concat(seconds);
    }
  }; // progress

  if (typeof Hammer !== 'undefined') {
    var $progresses = $playersPlain.find('.nk-audio-progress');
    $progresses.each(function () {
      var $curProgressCont = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
      var $curProgres = $curProgressCont.children();
      var curApi;
      var progressW;
      var progressCurW;
      var progressStart = false;
      var HammerProgress = new Hammer.Manager($curProgressCont[0]);
      HammerProgress.add(new Hammer.Pan({
        pointers: 1,
        threshold: 0
      }));
      HammerProgress.add(new Hammer.Press({
        time: 1
      }));
      HammerProgress.on('pan press pressup', function (e) {
        // start
        if (e.type === 'press' || progressStart === false) {
          progressBusy = true;
          progressW = $curProgressCont.width();
          progressStart = e.pointers[0].clientX - $curProgressCont[0].getBoundingClientRect().left;
          $curProgressCont.addClass('hover');
        } // each


        progressCurW = Math.min(1, Math.max(0, (progressStart + e.deltaX) / progressW));
        $curProgres[0].style.width = "".concat(progressCurW * 100, "%"); // end

        if (e.isFinal || e.type === 'pressup') {
          if (!curApi) {
            curApi = $curProgressCont.parents('.nk-audio-player-main, .nk-audio-plain')[0].audioAPI;
          }

          if (curApi) {
            curApi.seek(progressCurW);
          }

          $curProgressCont.removeClass('hover');
          progressBusy = false;
          progressStart = false;
        }

        e.preventDefault();
      });
    });
  }

  soundManager.onready(function () {
    if ($playersPlain.length) {
      $playersPlain.each(function () {
        this.audioAPI = new PlayersPlain(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this));
      });
    }
  });
}



/***/ }),
/* 21 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initImageSlider", function() { return initImageSlider; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

 Init Image Slider

 -------------------------------------------------------------------*/

function initImageSlider() {
  if (typeof window.Flickity === 'undefined') {
    return;
  }

  var $sliders = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-image-slider');

  if (!$sliders.length) {
    return;
  }

  var intervalCallbacks = [];
  setInterval(function () {
    intervalCallbacks.forEach(function (cb) {
      cb(100);
    });
  }, 100); // prepare each slider

  $sliders.each(function () {
    var $this = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
    var autoplay = parseFloat($this.attr('data-autoplay'), 10) || false;
    var slides = []; // parse all slides

    $this.find('.nk-image-slider-item').each(function () {
      var $slide = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
      var $content = $slide.find('.nk-image-slider-content');
      slides.push({
        image: $slide.find('.nk-image-slider-img').attr('src'),
        thumb: $slide.find('.nk-image-slider-img').attr('data-thumb'),
        content: $content.html() || ''
      });
      $content.remove();
    }); // no slides

    if (!slides.length) {
      $this.remove();
      return;
    }

    $this.flickity({
      pageDots: false,
      autoPlay: false,
      prevNextButtons: false,
      wrapAround: true,
      imagesLoaded: true
    }); // Content.

    $this.append("\n            <div class=\"nk-image-slider-content\">\n                <div class=\"nano\">\n                    <div class=\"nano-content\"></div>\n                </div>\n            </div>\n        ");
    var $content = $this.find('.nk-image-slider-content'); // Display slide content.

    function displayContent(i) {
      if (slides[i]) {
        $content.find('.nano-content').html(slides[i].content);
        $content[slides[i].content ? 'addClass' : 'removeClass']('nk-image-slider-content-visible'); // update nano

        if (typeof _utility__WEBPACK_IMPORTED_MODULE_0__["$"].fn.nanoScroller !== 'undefined') {
          $content.find('.nano').nanoScroller();
        }
      }
    }

    displayContent(0);
    $this.on('change.flickity', function (event, index) {
      displayContent(index);
    }); // Add thumbs.

    var thumbs = '';
    slides.forEach(function (slideData) {
      thumbs += "<div class=\"nk-image-slider-thumbs-item\"><img src=\"".concat(slideData.thumb, "\" alt=\"\"></div>");
    });
    $this.append("\n            <div class=\"nk-image-slider-thumbs\">\n                ".concat(thumbs, "\n            </div>\n        "));
    var $thumbs = $this.find('.nk-image-slider-thumbs');
    $thumbs.flickity({
      asNavFor: $this[0],
      contain: true,
      pageDots: false,
      prevNextButtons: false,
      cellAlign: 'left'
    }); // Countdown.

    var $countdown = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('<div class="nk-image-slider-thumbs-count"></div>');

    function insertCountdown(i) {
      if (slides[i]) {
        $thumbs.find(".nk-image-slider-thumbs-item:eq(".concat(slides[i + 1] ? i + 1 : 0, ")")).append($countdown);
      }
    } // Autoplay.


    if (autoplay) {
      // Pause control
      var isPaused = false;
      $this.on('mouseenter', function () {
        isPaused = true;
      });
      $this.on('mouseleave', function () {
        isPaused = false;
      });
      var percentTime = 0;
      var currentTimer = 0;
      insertCountdown(0);
      $thumbs.on('change.flickity', function (event, index) {
        insertCountdown(index);
        percentTime = 0;
      });
      intervalCallbacks.push(function (step) {
        if (!isPaused) {
          percentTime += step;

          if (percentTime >= autoplay) {
            $this.flickity('next');
            percentTime = 0;
          }
        }

        var newTimer = Math.ceil((autoplay - percentTime) / 1000);

        if (currentTimer !== newTimer) {
          currentTimer = newTimer;
          $countdown.html(newTimer);
        }
      });
    }
  });
}



/***/ }),
/* 22 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initFacebook", function() { return initFacebook; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Facebook

-------------------------------------------------------------------*/

function initFacebook() {
  if (!Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.fb-page').length) {
    return;
  }

  _utility__WEBPACK_IMPORTED_MODULE_0__["$body"].append('<div id="fb-root"></div>');

  (function (d, s, id) {
    if (window.location.protocol === 'file:') {
      return;
    }

    var fjs = d.getElementsByTagName(s)[0];

    if (d.getElementById(id)) {
      return;
    }

    var js = d.createElement(s);
    js.id = id;
    js.src = '//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4';
    fjs.parentNode.insertBefore(js, fjs);
  })(document, 'script', 'facebook-jssdk');
}



/***/ }),
/* 23 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initInstagram", function() { return initInstagram; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Instagram

-------------------------------------------------------------------*/

function initInstagram() {
  var self = this;
  var $instagram = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-instagram');

  if (!$instagram.length || !self.options.templates.instagram) {
    return;
  }
  /**
   * Templating a instagram item using '{{ }}' braces
   * @param  {Object} data Instagram item details are passed
   * @return {String} Templated string
   */


  function templating(data, temp) {
    var tempVariables = ['link', 'image', 'caption'];

    for (var i = 0, len = tempVariables.length; i < len; i++) {
      temp = temp.replace(new RegExp("{{".concat(tempVariables[i], "}}"), 'gi'), data[tempVariables[i]]);
    }

    return temp;
  }

  $instagram.each(function () {
    var $this = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
    var options = {
      userID: $this.attr('data-instagram-user-id') || null,
      count: $this.attr('data-instagram-count') || 6,
      template: $this.attr('data-instagram-template') || self.options.templates.instagram,
      quality: $this.attr('data-instagram-quality') || 'sm',
      // sm, md, lg
      loadingText: self.options.templates.instagramLoadingText,
      failText: self.options.templates.instagramFailText,
      apiPath: self.options.templates.instagramApiPath
    }; // stop if running in file protocol

    if (window.location.protocol === 'file:') {
      $this.html("<div class=\"col-12\">".concat(options.failText, "</div>")); // eslint-disable-next-line

      console.error('You should run you website on webserver with PHP to get working Instagram');
      return;
    }

    $this.html("<div class=\"col-12\">".concat(options.loadingText, "</div>")); // Fetch instagram images

    _utility__WEBPACK_IMPORTED_MODULE_0__["$"].getJSON(options.apiPath, {
      userID: options.userID,
      count: options.count
    }, function (response) {
      $this.html('');

      for (var i = 0; i < options.count; i++) {
        var instaItem = false;

        if (response[i]) {
          instaItem = response[i];
        } else if (response.statuses && response.statuses[i]) {
          instaItem = response.statuses[i];
        } else {
          break;
        }

        var resolution = 'thumbnail';

        if (options.quality === 'md') {
          resolution = 'low_resolution';
        }

        if (options.quality === 'lg') {
          resolution = 'standard_resolution';
        }

        var tempData = {
          link: instaItem.link,
          image: instaItem.images[resolution].url,
          caption: instaItem.caption
        };
        $this.append(templating(tempData, options.template));
      } // resize window


      self.debounceResize();
    }).fail(function (a) {
      $this.html("<div class=\"col-12\">".concat(options.failText, "</div>"));
      _utility__WEBPACK_IMPORTED_MODULE_0__["$"].error(a.responseText);
    });
  });
}



/***/ }),
/* 24 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initTwitter", function() { return initTwitter; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Twitter

-------------------------------------------------------------------*/

function initTwitter() {
  var self = this;
  var $twtFeeds = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-twitter-list');

  if (!$twtFeeds.length || !self.options.templates.twitter) {
    return;
  }
  /**
   * Templating a tweet using '{{ }}' braces
   * @param  {Object} data Tweet details are passed
   * @return {String}      Templated string
   */


  function templating(data, temp) {
    var tempVariables = ['date', 'tweet', 'avatar', 'url', 'retweeted', 'screen_name', 'user_name'];

    for (var i = 0, len = tempVariables.length; i < len; i++) {
      temp = temp.replace(new RegExp("{{".concat(tempVariables[i], "}}"), 'gi'), data[tempVariables[i]]);
    }

    return temp;
  }

  $twtFeeds.each(function () {
    var $this = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
    var options = {
      username: $this.attr('data-twitter-user-name') || null,
      list: null,
      hashtag: $this.attr('data-twitter-hashtag') || null,
      count: $this.attr('data-twitter-count') || 2,
      hideReplies: $this.attr('data-twitter-hide-replies') === 'true',
      template: $this.attr('data-twitter-template') || self.options.templates.twitter,
      loadingText: self.options.templates.twitterLoadingText,
      failText: self.options.templates.twitterFailText,
      apiPath: self.options.templates.twitterApiPath
    }; // stop if running in file protocol

    if (window.location.protocol === 'file:') {
      $this.html(options.failText); // eslint-disable-next-line

      console.error('You should run you website on webserver with PHP to get working Twitter');
      return;
    } // Set loading


    $this.html("<span>".concat(options.loadingText, "</span>")); // Fetch tweets

    _utility__WEBPACK_IMPORTED_MODULE_0__["$"].getJSON(options.apiPath, {
      username: options.username,
      list: options.list,
      hashtag: options.hashtag,
      count: options.count,
      exclude_replies: options.hideReplies
    }, function (twt) {
      $this.html('');

      for (var i = 0; i < options.count; i++) {
        var tweet = false;

        if (twt[i]) {
          tweet = twt[i];
        } else if (twt.statuses && twt.statuses[i]) {
          tweet = twt.statuses[i];
        } else {
          break;
        }

        var tempData = {
          user_name: tweet.user.name,
          date: tweet.date_formatted,
          tweet: tweet.text_entitled,
          avatar: "<img src=\"".concat(tweet.user.profile_image_url, "\" />"),
          url: "https://twitter.com/".concat(tweet.user.screen_name, "/status/").concat(tweet.id_str),
          retweeted: tweet.retweeted,
          screen_name: tweet.user.screen_name
        };
        $this.append(templating(tempData, options.template));
      } // resize window


      self.debounceResize();
    }).fail(function (a) {
      $this.html(options.failText);
      _utility__WEBPACK_IMPORTED_MODULE_0__["$"].error(a.responseText);
    });
  });
}



/***/ }),
/* 25 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginStickySidebar", function() { return initPluginStickySidebar; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Plugin Sticky Sidebar

-------------------------------------------------------------------*/

function initPluginStickySidebar() {
  if (typeof _utility__WEBPACK_IMPORTED_MODULE_0__["$"].fn.stick_in_parent === 'undefined') {
    return;
  }

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-sidebar-sticky').each(function () {
    var $this = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
    var $parent = $this.parent();
    $parent.addClass('nk-sidebar-sticky-parent');
    $this.wrapInner('<div>').children().stick_in_parent({
      parent: $parent,
      recalc_every: 50,
      offset_top: parseInt($this.attr('data-offset-top'), 10) || 130,
      // fixed ADS reloading issue https://github.com/leafo/sticky-kit/issues/45
      spacer: false
    }) // we need to set min height on parent block (in theme it is equal height column) to prevent sidebar content jumping
    .on('sticky_kit:unbottom sticky_kit:stick sticky_kit:bottom', function () {
      $parent.css('min-height', Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).height());
    }).on('sticky_kit:unstick', function () {
      $parent.css('min-height', '');
    });
  });
}



/***/ }),
/* 26 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginFastClick", function() { return initPluginFastClick; });
/* FastClick */
function initPluginFastClick() {
  if (typeof FastClick !== 'undefined') {
    FastClick.attach(document.body);
  }
}



/***/ }),
/* 27 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginNano", function() { return initPluginNano; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* Nano Scroller */

function initPluginNano($context) {
  if (typeof _utility__WEBPACK_IMPORTED_MODULE_0__["$"].fn.nanoScroller !== 'undefined') {
    ($context || _utility__WEBPACK_IMPORTED_MODULE_0__["$doc"]).find('.nano').nanoScroller();
  }
}



/***/ }),
/* 28 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginJarallax", function() { return initPluginJarallax; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* Jarallax */

function initPluginJarallax() {
  if (typeof _utility__WEBPACK_IMPORTED_MODULE_0__["$"].fn.jarallax === 'undefined') {
    return;
  }

  var self = this; // video backgrounds

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.bg-video[data-video]').each(function () {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-jarallax-video', Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-video'));
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).removeAttr('data-video');
  }); // primary parallax

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.bg-image-parallax, .bg-video-parallax').jarallax({
    speed: self.options.parallaxSpeed
  }); // video without parallax

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.bg-video:not(.bg-video-parallax)').jarallax({
    speed: 1
  });
}



/***/ }),
/* 29 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginFlickity", function() { return initPluginFlickity; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* Flickity */

function initPluginFlickity() {
  if (typeof window.Flickity === 'undefined') {
    return;
  }

  function addDefaultArrows($carousel) {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('<div class="nk-flickity-arrow nk-flickity-arrow-prev"><span class="ion-ios-arrow-back"></span></div>').on('click', function () {
      $carousel.flickity('previous');
    }).appendTo($carousel);
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('<div class="nk-flickity-arrow nk-flickity-arrow-next"><span class="ion-ios-arrow-forward"></span></div>').on('click', function () {
      $carousel.flickity('next');
    }).appendTo($carousel);
  } // prevent click event fire when drag carousel


  function noClickEventOnDrag($carousel) {
    $carousel.on('dragStart.flickity', function () {
      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).find('.flickity-viewport').addClass('is-dragging');
    });
    $carousel.on('dragEnd.flickity', function () {
      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).find('.flickity-viewport').removeClass('is-dragging');
    });
  } // carousel


  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-carousel > .nk-carousel-inner').each(function () {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).flickity({
      pageDots: Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).parent().attr('data-dots') === 'true' || false,
      autoPlay: parseFloat(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).parent().attr('data-autoplay')) || false,
      prevNextButtons: false,
      wrapAround: true,
      imagesLoaded: true,
      cellAlign: Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).parent().attr('data-cell-align') || 'center'
    });

    if (Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).parent().attr('data-arrows') === 'true') {
      addDefaultArrows(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this));
    }

    noClickEventOnDrag(Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this));
  });
}



/***/ }),
/* 30 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginPhotoswipe", function() { return initPluginPhotoswipe; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* PhotoSwipe */

function initPluginPhotoswipe() {
  var $gallery = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-popup-gallery');

  if (typeof PhotoSwipe === 'undefined' || !$gallery.length) {
    return;
  } // prepare photoswipe markup


  var markup = "<div id=\"gallery\" class=\"pswp\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n          <div class=\"pswp__bg\"></div>\n          <div class=\"pswp__scroll-wrap\">\n            <div class=\"pswp__container\">\n              <div class=\"pswp__item\"></div>\n              <div class=\"pswp__item\"></div>\n              <div class=\"pswp__item\"></div>\n            </div>\n            <div class=\"pswp__ui pswp__ui--hidden\">\n              <div class=\"pswp__top-bar\">\n                <div class=\"pswp__counter\"></div>\n                <button class=\"pswp__button pswp__button--close\" title=\"Close (Esc)\"></button>\n                <button class=\"pswp__button pswp__button--zoom\" title=\"Zoom in/out\"></button>\n                <div class=\"pswp__preloader\">\n                  <div class=\"pswp__preloader__icn\">\n                    <div class=\"pswp__preloader__cut\">\n                      <div class=\"pswp__preloader__donut\"></div>\n                    </div>\n                  </div>\n                </div>\n              </div>\n              <div class=\"pswp__loading-indicator\"><div class=\"pswp__loading-indicator__line\"></div></div>\n              <button class=\"pswp__button pswp__button--arrow--left\" title=\"Previous (arrow left)\"></button>\n              <button class=\"pswp__button pswp__button--arrow--right\" title=\"Next (arrow right)\"></button>\n              <div class=\"pswp__caption\">\n                <div class=\"pswp__caption__center\">\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>";
  _utility__WEBPACK_IMPORTED_MODULE_0__["$body"].append(markup); // init code

  function parseThumbnailElements(el) {
    var thumbElements = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(el).find('a.nk-gallery-item');
    var items = [];
    var descrElement;
    var size;
    var item;
    thumbElements.each(function eachThumbs() {
      descrElement = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).next('.nk-gallery-item-description');
      size = (this.getAttribute('data-size') || '1920x1080').split('x'); // create slide object

      item = {
        src: this.getAttribute('href'),
        w: parseInt(size[0], 10),
        h: parseInt(size[1], 10),
        author: this.getAttribute('data-author')
      };

      if (descrElement.length) {
        item.title = descrElement.html();
      }

      var mediumSrc = this.getAttribute('data-med') || item.src;

      if (mediumSrc) {
        size = (this.getAttribute('data-med-size') || this.getAttribute('data-size') || '1920x1080').split('x'); // "medium-sized" image

        item.m = {
          src: mediumSrc,
          w: parseInt(size[0], 10),
          h: parseInt(size[1], 10)
        };
      } // original image


      item.o = {
        src: item.src,
        w: item.w,
        h: item.h
      };
      items.push(item);
    });
    return items;
  }

  function openPhotoSwipe(index, galleryElement, disableAnimation, fromURL) {
    var pswpElement = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.pswp')[0];
    var items = parseThumbnailElements(galleryElement); // define options (if needed)

    var options = {
      captionAndToolbarShowEmptyCaptions: false,
      mainClass: 'pswp--minimal--dark',
      barsSize: {
        top: 0,
        bottom: 0
      },
      captionEl: true,
      fullscreenEl: false,
      shareEl: false,
      bgOpacity: 0.85,
      tapToClose: true,
      tapToToggleControls: false,
      showHideOpacity: true,
      // Function builds caption markup
      addCaptionHTMLFn: function addCaptionHTMLFn(item, captionEl) {
        // item      - slide object
        // captionEl - caption DOM element
        // isFake    - true when content is added to fake caption container
        //             (used to get size of next or previous caption)
        if (!item.title && !item.author) {
          captionEl.children[0].innerHTML = '';
          return false;
        }

        var caption = '';

        if (item.title) {
          caption += item.title;
        }

        if (item.author) {
          if (item.title) {
            caption += '<br>';
          }

          caption += "<small>".concat(item.author, "</small>");
        }

        captionEl.children[0].innerHTML = caption;
        return true;
      },
      galleryUID: galleryElement.getAttribute('data-pswp-uid')
    };

    if (fromURL) {
      if (options.galleryPIDs) {
        // parse real index when custom PIDs are used
        // http://photoswipe.com/documentation/faq.html#custom-pid-in-url
        for (var j = 0; j < items.length; j++) {
          if (items[j].pid === index) {
            options.index = j;
            break;
          }
        }
      } else {
        options.index = parseInt(index, 10) - 1;
      }
    } else {
      options.index = parseInt(index, 10);
    } // exit if index not found


    if (Number.isNaN(options.index)) {
      return;
    }

    if (disableAnimation) {
      options.showAnimationDuration = 0;
    } // Pass data to PhotoSwipe and initialize it


    var gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, items, options); // see: http://photoswipe.com/documentation/responsive-images.html

    var realViewportWidth;
    var useLargeImages = false;
    var firstResize = true;
    var imageSrcWillChange;
    gallery.listen('beforeResize', function () {
      var dpiRatio = window.devicePixelRatio ? window.devicePixelRatio : 1;
      dpiRatio = Math.min(dpiRatio, 2.5);
      realViewportWidth = gallery.viewportSize.x * dpiRatio;

      if (realViewportWidth >= 1200 || !gallery.likelyTouchDevice && realViewportWidth > 800 || _utility__WEBPACK_IMPORTED_MODULE_0__["wndW"] > 1200) {
        if (!useLargeImages) {
          useLargeImages = true;
          imageSrcWillChange = true;
        }
      } else if (useLargeImages) {
        useLargeImages = false;
        imageSrcWillChange = true;
      }

      if (imageSrcWillChange && !firstResize) {
        gallery.invalidateCurrItems();
      }

      if (firstResize) {
        firstResize = false;
      }

      imageSrcWillChange = false;
    });
    gallery.listen('gettingData', function (idx, item) {
      if (useLargeImages) {
        item.src = item.o.src;
        item.w = item.o.w;
        item.h = item.o.h;
      } else {
        item.src = item.m.src;
        item.w = item.m.w;
        item.h = item.m.h;
      }
    });
    gallery.init();
  }

  function photoswipeParseHash() {
    var hash = window.location.hash.substring(1);
    var params = {};

    if (hash.length < 5) {
      // pid=1
      return params;
    }

    var vars = hash.split('&');

    for (var _i = 0; _i < vars.length; _i++) {
      if (!vars[_i]) {
        continue;
      }

      var pair = vars[_i].split('=');

      if (pair.length < 2) {
        continue;
      }

      params[pair[0]] = pair[1];
    }

    if (params.gid) {
      params.gid = parseInt(params.gid, 10);
    }

    return params;
  } // select all gallery elements


  var i = 0;
  $gallery.each(function eachGallery() {
    var $thisGallery = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
    $thisGallery.attr('data-pswp-uid', i + 1);
    $thisGallery.on('click', 'a.nk-gallery-item', function onGalleryItemClick(e) {
      e.preventDefault();
      var index = 0;
      var clicked = this;
      $thisGallery.find('a.nk-gallery-item').each(function eachGalleryItem(idx) {
        if (this === clicked) {
          index = idx;
          return false;
        }

        return true;
      });
      openPhotoSwipe(index, $thisGallery[0]);
    });
    i++;
  }); // Parse URL and open gallery if it contains #&pid=3&gid=1

  var hashData = photoswipeParseHash();

  if (hashData.pid && hashData.gid) {
    openPhotoSwipe(hashData.pid, $gallery.get(hashData.gid - 1), true, true);
  }
}



/***/ }),
/* 31 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginModal", function() { return initPluginModal; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* Bootstrap Modal */

function initPluginModal() {
  _utility__WEBPACK_IMPORTED_MODULE_0__["$doc"].on('shown.bs.modal', function () {
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).find('[autofocus]').focus();
  });
}



/***/ }),
/* 32 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginTabs", function() { return initPluginTabs; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* Bootstrap Tabs */

function initPluginTabs() {
  var self = this;
  _utility__WEBPACK_IMPORTED_MODULE_0__["$wnd"].on('shown.bs.tab', function () {
    self.debounceResize();
  });
}



/***/ }),
/* 33 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginAccordions", function() { return initPluginAccordions; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* Bootstrap Accordions */

function initPluginAccordions() {
  var self = this;
  _utility__WEBPACK_IMPORTED_MODULE_0__["$wnd"].on('shown.bs.collapse', function () {
    self.debounceResize();
  });
}



/***/ }),
/* 34 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginCountdown", function() { return initPluginCountdown; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* Countdown */

function initPluginCountdown() {
  if (typeof _utility__WEBPACK_IMPORTED_MODULE_0__["$"].fn.countdown === 'undefined' || typeof moment === 'undefined' || typeof moment.tz === 'undefined') {
    return;
  }

  var self = this;
  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-countdown').each(function () {
    var tz = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-timezone');
    var end = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).attr('data-end');
    end = moment.tz(end, tz).toDate();
    Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).countdown(end, function (event) {
      Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this).html(event.strftime(self.options.templates.countdown));
    });
  });
}



/***/ }),
/* 35 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginSeiyriaBootstrapSlider", function() { return initPluginSeiyriaBootstrapSlider; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/* Bootstrap Slider */

function initPluginSeiyriaBootstrapSlider() {
  if (typeof _utility__WEBPACK_IMPORTED_MODULE_0__["$"].fn.bootstrapSlider === 'undefined') {
    return;
  } // set labels on slider change


  function setLabels($labels, values) {
    var force = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : false;

    for (var k = 0; k < values.newValue.length; k++) {
      if (typeof $labels[k] !== 'undefined' && (force || values.newValue[k] !== values.oldValue[k])) {
        $labels[k].text(values.newValue[k]);
      }
    }
  }

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-input-slider').each(function () {
    var $this = Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])(this);
    var $input = $this.find('input');
    var $labels = [];

    for (var k = 0; k < 3; k++) {
      $labels.push($this.find(".nk-input-slider-value-".concat(k)));
    }

    $input.bootstrapSlider().on('change', function (e) {
      if (e.value && e.value.newValue) {
        setLabels($labels, e.value);
      }
    }); // set default labels

    setLabels($labels, {
      newValue: $input.bootstrapSlider('getValue')
    }, true);
  });
}



/***/ }),
/* 36 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "initPluginSummernote", function() { return initPluginSummernote; });
/* harmony import */ var _utility__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(5);

/*------------------------------------------------------------------

  Init Blog

-------------------------------------------------------------------*/

function initPluginSummernote() {
  if (typeof _utility__WEBPACK_IMPORTED_MODULE_0__["$"].fn.summernote === 'undefined') {
    return;
  }

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.nk-summernote').summernote({
    height: 300,
    dialogsInBody: true,
    toolbar: [// [groupName, [list of button]]
    ['style', ['bold', 'italic', 'underline']], ['fontsize', ['fontsize']], ['color', ['color']], ['insert', ['link', 'picture', 'video']], ['para', ['ul', 'ol', 'paragraph']], ['height', ['height']], ['misc', ['codeview']]]
  }); // fix after load popovers are visible

  Object(_utility__WEBPACK_IMPORTED_MODULE_0__["$"])('.note-popover').hide();
}



/***/ })
/******/ ]);