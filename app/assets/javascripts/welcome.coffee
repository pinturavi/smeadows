# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
document.querySelector("title").innerHTML = "hello dood"

$("#logo").click ->
  alert("hi")
  $.ajax
   url: "welcome/index"
   dataType: "html"
   error: (jqXHR, textStatus, errorThrown) ->
     $('body').append "AJAX Error: #{textStatus}"
   success: (data, textStatus, jqXHR) ->
     $('body').append "Successful AJAX call: #{data}"
