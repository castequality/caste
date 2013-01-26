'use strict';

casteApp.controller('MainCtrl', ['$scope', 'blogService', 'instagramService', function($scope, blogService, instagramService) {
  $scope.featured = {
    url: '/images/placeholders/FEATURED_PRODUCT_206x244.jpg',
    caption: 'featured test'
  };

  $scope.feed = [{
    url: '/images/placeholders/BLOG1.jpg'
  }, {
    url: '/images/placeholders/BLOG2.jpg'
  }, {
    url: '/images/placeholders/FEATURED_PRODUCT_206x244.jpg'
  }, {
    url: '/images/placeholders/BLOG2.jpg'
  }, {
    url: '/images/placeholders/FEATURED_PRODUCT_206x244.jpg'
  }, {
    url: '/images/placeholders/BLOG2.jpg'
  }, {
    url: '/images/placeholders/FEATURED_PRODUCT_206x244.jpg'
  }, {
    url: '/images/placeholders/BLOG2.jpg'
  }, {
    url: '/images/placeholders/FEATURED_PRODUCT_206x244.jpg'
  }, {
    url: '/images/placeholders/BLOG2.jpg'
  }, {
    url: '/images/placeholders/FEATURED_PRODUCT_206x244.jpg'
  }];

  blogService.posts().
    success(function (data) {
      $scope.posts = data.response.posts;
    }).
    error(function (status) {
      // todo: handle error
    });
  instagramService.query({
    count: 1
  }).
    success(function (response) {
      $scope.gram = response.data[0];
    });
}]);