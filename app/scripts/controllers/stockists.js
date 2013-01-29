'use strict';

casteApp.controller('StockistsCtrl', ['$scope', 'Blog', 'instagramService', function($scope, Blog, instagramService) {
  $scope.cards = [{
    name: 'Exit Skate Supply',
    url: '//exitphiladelphia.com',
    address: {
      street: '900 N 2nd St.',
      city: 'Phliadelphia',
      state: 'PA',
      zip: '90612',
      country: 'USA'
    },
    phone: '215.456.783',
    id: '37432817'
  }];

  angular.forEach($scope.cards, function (stockist) {
    instagramService.top(stockist.id).
      success(function (response) {
        stockist.thumb = response.data[0].images.standard_resolution.url;
        stockist.style = {
          'background-image': "url( '" + stockist.thumb + "' )"
        };
      });
  });
}]);