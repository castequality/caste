'use strict'

angular.module('casteApp')
  .controller 'ProjectsCtrl', ['$scope', '$routeParams', 'Blog', ($scope, $routeParams, Blog) ->
    $scope.pages = 
      index: 0,
      interval: NaN

    $scope.p = $routeParams.p

    Blog.projects().success (data) ->
      $scope.projects = {}
      for post in data?.response.posts
        post.pages = post.photos
        if post.caption?.length
          post.pages.push
            media: post.caption
            active: $routeParams.media
        $scope.projects[post.timestamp] = post

    $scope.timestamp = (key) ->
      unless timestamp?
        keys = []
        for key of $scope.projects
          keys.push(key)
        timestamp = Math.max keys


    $scope.get = (timestamp) ->
      $scope.projects?[timestamp] || $scope.projects?[$scope.timestamp()]
  ]