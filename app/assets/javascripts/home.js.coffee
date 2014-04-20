# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  menu = $("#navigation-menu")
  menuToggle = $("#js-mobile-menu")
  $(menuToggle).on "click", (e) ->
    e.preventDefault()
    menu.slideToggle ->
      menu.removeAttr "style"  if menu.is(":hidden")
