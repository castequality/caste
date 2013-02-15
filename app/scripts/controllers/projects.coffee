'use strict'

angular.module('casteApp')
  .controller 'ProjectsCtrl', ['$scope', 'Blog', ($scope, Blog) ->
    $scope.pages = 
      index: 0,
      interval: NaN

    $scope.isActive = (page, index) ->
      index is 0

    Blog.projects().success (data) ->
      $scope.project = data?.response?.posts[0]
  ]