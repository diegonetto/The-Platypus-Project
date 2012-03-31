# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('.search .results .result-div .content').mouseover ->
    $(this).parent().parent().find('.delete-image').hide()
    $(this).parent().find('.delete-image').show()

  $('.search .results .result-div .delete-image').mouseover ->
    $(this).css('cursor', 'pointer');

  $('.search .results .result-div .delete-image').click ->
    $(this).parent().hide('drop', 1000)

