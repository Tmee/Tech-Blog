app.controller 'CnetIndexController', ['$scope', '$http', ($scope, $http) ->

  $scope.stories = []
  $http.get('./cnets.json').success((data) ->
    $scope.cnetStory1 = data[0]
    $scope.cnetStory2 = data[1]
    $scope.cnetStory3 = data[2]
  )

]