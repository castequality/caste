'use strict'

angular.module('casteApp')
  .controller('StockistsCtrl', ['$scope', 'Blog', 'Instagram', ($scope, Blog, Instagram) ->
    $scope.cards =
      37432817:
        name: 'Exit Skate Supply'
        url: '//exitphiladelphia.com'
        address:
          street: '825 N 2nd St.'
          city: 'Phliadelphia'
          state: 'PA'
          zip: '19123'
          country: 'USA'
        phone: '215.425.2450'
        id: '37432817'
      26830004:
        name: 'Reign Skate'
        url: '//reignskate.com'
        address: 
          street: '2016 E. Old Lincoln Hwy'
          city: 'Langhorne'
          state: 'PA'
          zip: '19047'
          country: 'USA'
        phone: '215.757.3143'
        id: '26830004'
    
    for id, stockist of $scope.cards
      do (id, stockist) ->
        Instagram.top(id).success (response) ->
          stockist.thumb = response?.data[0]?.images?.standard_resolution?.url
          stockist.style = 'background-image': "url('#{stockist.thumb}')"
  ])