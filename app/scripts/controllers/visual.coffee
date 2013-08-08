angular.module('casteApp')
  .controller 'VisualsCtrl', ($scope, Blog) ->
    $scope.visuals = Blog.visuals

    Blog.getVisuals()