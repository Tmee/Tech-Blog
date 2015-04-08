app.controller 'ArticleShowController', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./articles/#{$routeParams.id}.json").success((data) ->
    $scope.article = data
  )

  console.log('article show controller HIT ')
]