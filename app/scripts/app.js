'use strict';

var casteApp = angular.module('casteApp', ['ui'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/stockists', {
        templateUrl: 'views/stockists.html',
        controller: 'StockistsCtrl'
      })
      .when('/instagram', {
        templateUrl: 'views/instagram.html',
        controller: 'InstagramCtrl'
      })
      .when('/projects', {
        templateUrl: 'views/projects.html',
        controller: 'ProjectsCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  }])
.value('ui.config', {
})
.factory('Modernizr', ['$window', function ($window) {
  return $window.Modernizr;
}]);
