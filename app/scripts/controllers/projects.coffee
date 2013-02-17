'use strict'

angular.module('casteApp')
  .controller 'ProjectsCtrl', ['$scope', '$routeParams', 'Blog', ($scope, $routeParams, Blog) ->
    $scope.pages = 
      index: 0,
      interval: NaN

    Blog.projects().success (data) ->
      project = data?.response.posts?[0]
      project.pages = project.photos
      project.pages.push
        media: project.caption
        active: $routeParams.media
      $scope.project = project
    ]