var techSite = angular.module('techSite', ['templates',
                                          'ngRoute']);

$(document).ready(function(){
  // this keeps the top-level anchor tags in the navbar from
  // changing the url and triggering an angular route change
  $('a.dropdown-toggle').click(function(e){
    e.preventDefault();
  });
});