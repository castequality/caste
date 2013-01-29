'use strict';

casteApp.controller('ProjectsCtrl', ['$scope', 'Blog', function($scope, Blog) {
  $scope.index = 0;
  $scope.interval = null;

  $scope.isActive = function (page, index) {
    return index == 0;
  };

  Blog.projects().
    success(function (data) {
      $scope.project = data.response.posts[0];
    });
}]);