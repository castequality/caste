'use strict';

casteApp.controller('StockistsCtrl', ['$scope', 'blogService', 'instagramService', function($scope, blogService, instagramService) {
  $scope.cards = [{
    name: "Exit Skate Supply",
    address: {
      street: "900 N 2nd St.",
      city: "Phliadelphia",
      state: "PA",
      zip: "90612",
      country: "USA"
    },
    phone: "215.456.783",
    id: "37432817"
  }];

  angular.forEach($scope.cards, function (stockist) {
    instagramService.top(stockist.id).
      success(function (response) {
        stockist.style = {
          "background-image": "url('" + response.data[0].images.standard_resolution.url + "')"
        };
      });
  });
}]);