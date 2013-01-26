'use strict';

casteApp.controller('HeaderCtrl', ['$scope', '$location', function($scope, $location) {
  $scope.pages = [{
    link: '/project',
    title: 'Project'
  }, {
    link: '/visual',
    title: 'Visual'
  }, {
    link: '/stockists',
    title: 'stockists'
  }, {
    link: '/about',
    title: 'About'
  }, {
    link: '/contact',
    title: 'contact'
  }];

  $scope.isActive = function (name) {
    var p = $location.path(),
        index = p.indexOf(name);
    return index >= 0;
  };
}]);