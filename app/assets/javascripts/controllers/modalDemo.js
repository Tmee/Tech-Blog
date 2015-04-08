app.controller('ModalDemoController', function ($scope, $modal, $log) {

  $scope.items = ['item1', 'item2', 'item3'];

  console.log("ModalDemoController gets hit")
  $scope.open = function () {

    var modalInstance = $modal.open({
      templateUrl: 'resume.html',
      controller: 'ResumeController',
      resolve: {
        items: function () {
          return $scope.items;
        }
    });

    modalInstance.result.then(function (selectedItem) {
      $scope.selected = selectedItem;
    }, function () {
      $log.info('Modal dismissed at: ' + new Date());
    });
  };
});