angular.module('casteApp')
  .controller 'ContactCtrl', ($scope, Blog) ->
    Blog.about().success (data) ->
      $scope.about = data?.response?.blog?.description
      $scope.title = data?.response?.blog?.title