'use strict';

casteApp.controller('VisualsCtrl', ['$scope', 'Blog', function($scope, Blog) {
  $scope.photos = [];
  Blog.visuals().
    then(function (results) {
      angular.forEach(results, function (result) {
        angular.forEach(result.data.response.posts, function (post) {
          angular.forEach(post.photos, function (photo) {
            $scope.photos.push(photo);
          });
        });
      });
  });
}]);
