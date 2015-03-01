# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#masonry-container').masonry
    itemSelector: '.mas-box',
    gutterWidth: 5, 
    isAnimated: true,
    animationOptions: {
      duration: 500,
      easing: 'swing'
    }
$ ->
  $('.mas-box').hide();
  $('.mas-box').each((i) ->
    $(this).delay(i * 100).fadeIn(1000))
