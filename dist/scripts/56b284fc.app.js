'use strict';

var casteApp = angular.module('casteApp', ['ui'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      // .when('/feed', {
      //   templateUrl: 'views/feed.html',
      //   controller: 'FeedCtrl'
      // })
      .otherwise({
        redirectTo: '/'
      });
  }])
.value('ui.config', {
})
.factory('Modernizr', ['$window', function ($window) {
  return $window.Modernizr;
}]);
