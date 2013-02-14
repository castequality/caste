(function() {
  'use strict';

  angular.module('casteApp').controller('AboutCtrl', [
    '$scope', 'Blog', function($scope, Blog) {
      return Blog.about().success(function(data) {
        return $scope.about = data.response.blog.description;
      });
    }
  ]);

}).call(this);
