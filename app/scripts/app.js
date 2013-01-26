'use strict';

var casteApp = angular.module('casteApp', ['ui'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: '/views/main.html',
        controller: 'MainCtrl'
      })
      .when('/stockists', {
        templateUrl: '/views/stockists.html',
        controller: 'StockistsCtrl'
      })
      .when('/instagram', {
        templateUrl: '/views/instagram.html',
        controller: 'InstagramCtrl'
      })
      .when('/project', {
        templateUrl: '/views/projects.html',
        controller: 'ProjectsCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  }])
  .config(['$locationProvider', function($locationProvider) {
    $locationProvider.html5Mode(true);
  }])
  .value('ui.config', {
  })
  .factory('Modernizr', ['$window', function ($window) {
    return $window.Modernizr;
  }]);
