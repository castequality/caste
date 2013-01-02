'use strict';

casteApp.controller('NavigationCtrl', ['$scope', '$location', function($scope, $location) {
  $scope.pages = [{
    link: 'blog',
    title: 'Blog'
  }, {
    link: 'instagram',
    title: 'instagram'
  }, {
    link: 'projects',
    title: 'Projects'
  }, {
    link: 'store',
    title: 'Store'
  }, {
    link: 'media',
    title: 'Media'
  }, {
    link: 'stockists',
    title: 'stockists'
  }, {
    link: 'about',
    title: 'About'
  }];

  $scope.isActive = function (name) {
    var p = $location.path(),
        index = p.indexOf(name);
    return index >= 0;
  };
}]);