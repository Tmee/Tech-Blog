app.controller("ArticlesController", ['$scope', '$http', function ($scope, $http) {
  'use strict'

  $scope.articles = [];
  $http.get('/articles.json').success(function(data){
    $scope.articles = data
  });

}]);