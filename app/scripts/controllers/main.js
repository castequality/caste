'use strict';

casteApp.controller('MainCtrl', ['$scope', 'Blog', 'Instagram', 'Store', function($scope, Blog, Instagram, Store) {
  $scope.feed = [];
  $scope.store = Store;

  Blog.posts().
    success(function (data) {
      $scope.posts = data.response.posts;
    }).
    error(function (status) {
      // todo: handle error
    });

  Blog.visuals().
    then(function(results) {
      angular.forEach(results, function (result) {
        angular.forEach(result.data.response.posts, function (post) {
          angular.forEach(post.photos, function (photo) {
            $scope.feed.push(photo);
          });
        });
      });
    });

  Instagram.query({
    count: 1
  }).
    success(function (response) {
      $scope.gram = response.data[0];
    });
}]);