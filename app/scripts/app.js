'use strict';

var casteApp = angular.module('casteApp', ['ui', 'ui.bootstrap'])
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
