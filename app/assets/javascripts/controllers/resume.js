app.controller("ResumeController", ['$scope', function ($scope, $modalInstance, items) {
  'use strice'
  console.log("modalInstance gets hit");

  $scope.items = items;
  $scope.selected = {
    item: $scope.items[0]
  };

  $scope.ok = function () {
    $modalInstance.close($scope.selected.item);
  };

  $scope.cancel = function () {
    $modalInstance.dismiss('cancel');
  };
});
