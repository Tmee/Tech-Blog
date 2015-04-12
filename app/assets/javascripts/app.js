var app = angular.module('techSite', ['templates',
                                      'yaru22.md',
                                      'mm.foundation',
                                      'ngRoute']);

$(document).ready(function(){
  $('a.dropdown-toggle').click(function(e){
    e.preventDefault();
  });
});