# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  # When a result-div's content is moused-over, hide all other delete
  # images and show this one
  $('.search .results .result-div .content').mouseover ->
    $(this).parent().parent().find('.delete-image').hide()
    $(this).parent().find('.delete-image').show()

  # Hide the result when the x is clicked  
  $('.search .results .result-div .delete-image').click ->
    parent = $(this).parent()
    parent.hide('drop', 1000)
    parent.addClass('deleted-result')

