app.controller 'CnetIndexController', ['$scope', '$http', ($scope, $http) ->

  $scope.stories = []
  $http.get('./cnets.json').success((data) ->
    $scope.backgroundUrl1 = data[0].image
    $scope.backgroundUrl2 = data[1].image
    $scope.backgroundUrl3 = data[2].image
  )

  index = 1
  changeStory = ->
    if index = 1
      last = 2
    else
      last = index - 1

    console.log("second -> ", $(".topStory > img:nth-child(", last, ")"))
    console.log("first -> ", $(".topStory > img:nth-child(", index, ")"))
    console.log(last)
    console.log(index)
    $(".topStory > img:nth-child(", index, ")").css('opacity', "1")
    $(".topStory > img:nth-child(", last, ")").css('opacity', "0")

    if index = 2
      index = 0
    else
      index + 1

  setInterval(changeStory, 10000)

]