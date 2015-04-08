app.controller 'ArticleIndexController', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.articles = []
  $http.get('./articles.json').success((data) ->
    $scope.articles = data
  )

  $scope.viewRestaurant = (id) ->
    $location.url "/articles/#{id}"

  console.log('article index controller HIT ')
]