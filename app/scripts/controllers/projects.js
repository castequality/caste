'use strict';

casteApp.controller('ProjectsCtrl', ['$scope', 'blogService', function($scope, blogService) {
  blogService.projects().
    success(function (data) {
      $scope.projects = data.response.posts;
    });
}]);