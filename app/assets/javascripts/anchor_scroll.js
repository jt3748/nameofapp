/*!
 * jQuery.anchorScroll jQuery Plugin v1.0
 *
 * Author: Virgiliu Diaconu
 * http://www.virgiliu.com
 * Licensed under the MIT license.
 */
!function(o){"use strict";o.anchorScroll=function(l,t){var n=this;n.$el=o(l),n.el=l,n.init=function(){n.options=o.extend({},o.anchorScroll.defaultOptions,t)},n.$el.click(function(t){if(t.preventDefault(),o(t.target).closest("a").length&&o(n.el.hash).length){var e=o(n.el.hash).offset().top-n.options.offsetTop,s="this"===n.$el.data("classTo")?n.el:n.$el.data("classTo"),c=n.$el.data("onScroll"),a=n.$el.data("scrollEnd");"function"==typeof n.options.scrollStart&&n.options.scrollStart.call(l),o(s).addClass(c).removeClass(a),o("html,body").animate({scrollTop:e},n.options.scrollSpeed).promise().done(function(){o(s).addClass(a).removeClass(c),"function"==typeof n.options.scrollEnd&&n.options.scrollEnd.call(l)})}}),n.init()},o.anchorScroll.defaultOptions={scrollSpeed:800,offsetTop:0},o.fn.anchorScroll=function(l){return this.each(function(){new o.anchorScroll(this,l)})}}(jQuery,window,document);

$('.anchor-scroll').anchorScroll({
    scrollSpeed: 800, // scroll speed
    offsetTop: 0, // offset for fixed top bars (defaults to 0)
    onScroll: function () {
      // callback on scroll start
    },
    scrollEnd: function () {
      // callback on scroll end
    }
 });
