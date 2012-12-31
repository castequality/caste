'use strict';

casteApp.controller('InstagramCtrl', ['$scope', 'instagramService', function($scope, instagramService) {
  instagramService.user().
    success(function (response) {
      $scope.user = response.data;
    });

  instagramService.query({
    count: 10
  }).
    success(function (response) {
      $scope.grams = response.data;
      var length = $scope.grams.length;
      if (length) {
        $scope.last = $scope.grams[length - 1];
      }
    });
}]);
