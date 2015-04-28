var app = angular.module('techSite', ['templates',
                                      'ngRoute',
                                      'yaru22.md',
                                      'mm.foundation']);

$(document).ready(function(){
  $('a.dropdown-toggle').click(function(e){
    e.preventDefault();
  });
});