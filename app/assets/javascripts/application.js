
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .


$(function() {
  $("#activities_search input").keyup(function() {
    $.get($("#activities_search").attr("action"), $("#activities_search").serialize(), null, "script");
    return false;
  });
});

$(function() {
  $("#items_search input").keyup(function() {
    $.get($("#items_search").attr("action"), $("#items_search").serialize(), null, "script");
    return false;
  });
});
