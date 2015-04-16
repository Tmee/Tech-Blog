// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require angular
//= require angular-route
//= require angular-md/dist/angular-md
//= require angular-rails-templates
//= require jquery
//= require jquery_ujs
//= require app
//= require_tree ./templates
//= require_tree ./controllers
//= require marked/lib/marked
//= require highlightjs/highlight.pack
//= require angular-foundation/mm-foundation
//= require foundation/js/foundation
//= require foundation/js/foundation/foundation.orbit
//= require foundation-icon-fonts
//= require_tree .

$(document).ready(function(){

    $(document).foundation({
        orbit: {
            animation: 'fade',
            timer: true,
            timer_speed: 4000,
            timer_paused_class: 'slider-pause',
            slide_number: true,
            pause_on_hover: false,
            animation_speed: 1000,
            navigation_arrows: true,
            variable_height: false,
            bullets: true
        }
    });

    $(".orbit-timer").click();

    $("#featured").siblings(".slider-pause").click();

    $("#reloadRoute").click() = function() {
       $route.reload();
       console.log("hithithithithiti")
    }


});