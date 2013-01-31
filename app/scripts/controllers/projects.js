'use strict';

casteApp.controller('ProjectsCtrl', ['$scope', 'Blog', function($scope, Blog) {
  $scope.pages = {
    index: 0,
    interval: NaN
  };

  $scope.isActive = function (page, index) {
    return index === 0;
  };

  Blog.projects().
    success(function (data) {
      $scope.project = data.response.posts[0];
    });
}]);