'use strict';

casteApp.controller('FeedCtrl', function($scope, $routeParams) {
  $scope.feed = [{
    title: 'Test Feed Item',
    content: 'Feed item body with <b>HTML</b> tags!',
    author: {
      name: 'Item Author',
      email: 'author@castequality.com',
      avatar: 'components/holderjs/holder.js/64x64'
    }
  }];
});
