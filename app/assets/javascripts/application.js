// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.widget
//= require jquery.ui.datepicker
//= require twitter/bootstrap
//= require bootstrap
//= require home
//= require mybills
//= require jquery-ui-timepicker-addon
// require_tree .

//jQuery(document).ready(function(){
    //assign max height
    $(function(){
        var w =$(document).height(), h = $('.main_header').height();
        $('.main_wrapper, .accessibility, .vertical_navigation, .main_content').css({'min-height': w - h});
        //$('#mybill_due_date').datetimepicker();

    })

//#})