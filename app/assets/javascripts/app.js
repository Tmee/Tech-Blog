var app = angular.module('techSite', ['templates',
                                      'yaru22.md',
                                      'mm.foundation',
                                      'ngRoute']);

$(document).ready(function(){
  // this keeps the top-level anchor tags in the navbar from
  // changing the url and triggering an angular route change
  $('a.dropdown-toggle').click(function(e){
    e.preventDefault();
  });
});