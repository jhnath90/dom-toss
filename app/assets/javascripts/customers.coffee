# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $scope = $('#table-container')

  render = () ->
    url = "/?#{$('form', $scope).serialize()}"
    $.get url
      .then (html) -> $scope.empty().append(html)

   toggle = (a, b, $el) ->
     if a == $el.val() then $el.val(b) else $el.val(a)

  $scope.on 'click', 'th', (event) ->
    field = $(event.target).data('field')
    toggle('asc', 'desc', $('[name=order]', $scope))
    $('input[name=sort_by]').val(field)
    render()
