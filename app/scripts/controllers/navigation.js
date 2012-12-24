'use strict';

casteApp.controller('NavigationCtrl', function($scope, $routeParams) {
  $scope.pages = [{
    link: 'feed',
    title: 'Feed'
  }, {
    link: 'collection',
    title: 'Collections'
  }];

  $scope.isActive = function (name, isFirst) {

  };
});
