'use strict'

casteApp = angular.module('casteApp', ['ui', 'ui.bootstrap'])
  .config(($routeProvider) ->
    $routeProvider
      .when '/', 
        templateUrl: '/views/main.html',
        controller: 'MainCtrl'
      .when '/stockists',
        templateUrl: '/views/stockists.html',
        controller: 'StockistsCtrl'
      .when '/project',
        templateUrl: '/views/projects.html',
        controller: 'ProjectsCtrl'
      .when '/visual', 
        templateUrl: 'views/visual.html',
        controller: 'VisualsCtrl'
      .when '/about', 
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl'
      .otherwise redirectTo: '/'
    )
  .value 'ui.config',
    jq:
      fancybox:
        autoHeight: true
        autoWidth: true
        scrolling: no
