// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  $('div.hidden').fadeIn(2000).removeClass('hidden');
});

//Register Submit in Modal
function ready() {
  $('.modal-button').click(function() {
    $('.register-form').submit();
  });

}
//Login Submit in Modal
function ready() {
  $('.modal-button').click(function() {
    $('.login-form').submit();
  });

}
