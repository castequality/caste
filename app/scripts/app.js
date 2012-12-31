'use strict';

var casteApp = angular.module('casteApp', ['ui'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider
      .when('/blog', {
        templateUrl: 'views/blog.html',
        controller: 'BlogCtrl'
      })
      .otherwise({
        redirectTo: '/blog'
      });
  }])
.value('ui.config', {
})
.factory('Modernizr', ['$window', function ($window) {
  return $window.Modernizr;
}]);
