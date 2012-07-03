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
//= require_tree .


$(function(){
  $('#add_adult').click(function(){
    index = parseInt($('#rsvp_form').attr('data-attr-guests'));
    $('#rsvp_form').attr('data-attr-guests', index + 1);
    $('#rsvp_form').children('fieldset.adult').last().after(addAdult(index));
    return false;
  });

  $('#add_child').click(function(){
    index = parseInt($('#rsvp_form').attr('data-attr-guests'));
    $('#rsvp_form').attr('data-attr-guests', index + 1);
    $('#rsvp_form').children('fieldset.child').last().after(addChild(index));
    return false;
  });

  function addAdult(i){
    return ("<fieldset class='adult'><legend>Adult</legend>"
    + "\n<label for='rsvp_guests_attributes_" + i + "_first_name'>First name</label>"
    + "\n<input id='rsvp_guests_attributes_" + i + "_first_name' name='rsvp[guests_attributes][" + i + "][first_name]' size='30' type='text' />"
    + "\n<label for='rsvp_guests_attributes_" + i + "_last_name'>Last name</label>"
    + "\n<input id='rsvp_guests_attributes_" + i + "_last_name' name='rsvp[guests_attributes][" + i + "][last_name]' size='30' type='text' /></fieldset>");
  }

  function addChild(i){
    return ("<fieldset class='child'><legend>Child</legend>"
    + "\n<label for='rsvp_guests_attributes_" + i + "_first_name'>First name</label>"
    + "\n<input id='rsvp_guests_attributes_" + i + "_child' name='rsvp[guests_attributes][" + 3 + "][child]' type='hidden' value='true' />"
    + "\n<input id='rsvp_guests_attributes_" + i + "_first_name' name='rsvp[guests_attributes][" + i + "][first_name]' size='30' type='text' />"
    + "\n<label for='rsvp_guests_attributes_" + i + "_last_name'>Last name</label>"
    + "\n<input id='rsvp_guests_attributes_" + i + "_last_name' name='rsvp[guests_attributes][" + i + "][last_name]' size='30' type='text' /></fieldset>");
  }
});