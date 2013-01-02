'use strict';

casteApp.controller('BlogCtrl', ['$scope', 'blogService', function($scope, blogService) {
  blogService.posts().
    success(function (data) {
      $scope.posts = data.response.posts;
    }).
    error(function (status) {
      // todo: handle error
    });
}]);