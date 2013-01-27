'use strict';

casteApp.service('Store', ['Math', '$http', 'STORE_ROOT', function(Math, $http, STORE_ROOT) {
  var self = this;
  $http.jsonp(STORE_ROOT, { callback: 'JSON_CALLBACK' }).success(function (data) {
    var index = Math.floor(Math.random(data.length));
    self.featured = data[index];
  });
}])
.factory('Math', ['$window', function ($window) {
  return $window.Math;
}])
.value('STORE_ROOT', '//api.bigcartel.com/castequality/products.js');
