'use strict';

casteApp.controller('NavigationCtrl', ['$scope', '$location', function($scope, $location) {
  $scope.pages = [{
    link: 'blog',
    title: 'Blog'
  }, {
    link: 'collection',
    title: 'Collections'
  }];

  $scope.isActive = function (name) {
    var p = $location.path(),
        index = p.indexOf(name);
    return index >= 0;
  };
}]);