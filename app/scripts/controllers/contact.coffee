angular.module('casteApp')
  .controller 'ContactCtrl', ($scope, Blog) ->
    Blog.getAbout()
    $scope.about = Blog.about