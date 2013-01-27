// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready(function(){
    $('.main_tabs').tab();

    $('.to_mybill').click(function(data){
        $.ajax({
            url: "/showmybills",
            type: "get"
        })
    })

    $('.to_home').click(function(){
        $.ajax({
            url: "/showhome",
            type: "get"
        })
    })

})