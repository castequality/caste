'use strict'

angular.module('casteApp')
  .controller 'AboutCtrl', ($scope, Blog) ->
    Blog.about().success (data) ->
      $scope.about = data.response.blog.description
