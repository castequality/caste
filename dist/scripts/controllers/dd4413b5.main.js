'use strict';

casteApp.controller('MainCtrl', ['$scope', 'Modernizr', function($scope, Modernizr) {
  $scope.svg = Modernizr.svg;
}]);
