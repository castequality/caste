(function() {
  'use strict';

  angular.module('casteApp').controller('AboutCtrl', function($scope, Blog) {
    return Blog.about().success(function(data) {
      return $scope.about = data.response.blog.description;
    });
  });

}).call(this);
