//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker

//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary

//= require underscore
//= require gmaps/google

//= require moment
//= require fullcalendar


//= require_tree .



$(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({
        // put your options and callbacks here
    })


$('[data-provide=datepicker]').datepicker({
      format: 'yyyy-mm-dd',

});
