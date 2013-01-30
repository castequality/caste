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
      .when('/project', {
        templateUrl: '/views/projects.html',
        controller: 'ProjectsCtrl'
      })
      .when('/visual', {
        templateUrl: 'views/visual.html',
        controller: 'VisualsCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  }])
  .value('ui.config', {
  });
