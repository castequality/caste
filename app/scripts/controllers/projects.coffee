angular.module('casteApp')
  .controller 'ProjectsCtrl', ($scope, $routeParams, Blog) ->
    Blog.getProjects($routeParams.media)

    $scope.projects = Blog.projects

    # for carousel
    $scope.pages = 
      index: 0,
      interval: NaN

    $scope.timestamp = (key) ->
      unless timestamp?
        keys = []
        for key of $scope.projects
          keys.push(key)
        timestamp = Math.max keys

    $scope.get = (timestamp) ->
      $scope.projects?[timestamp] || $scope.projects?[$scope.timestamp()]