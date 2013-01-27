'use strict';

casteApp.controller('ProjectsCtrl', ['$scope', 'blogService', function($scope, blogService) {
  blogService.projects().
    success(function (data) {
      $scope.project = data.response.posts[0];
    });
}]);