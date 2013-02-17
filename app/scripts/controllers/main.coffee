'use strict'

angular.module('casteApp')
  .value('INSTA_ID', 259689659)
  .controller 'MainCtrl', ['$scope', 'Blog', 'Instagram', 'Store', 'INSTA_ID', ($scope, Blog, Instagram, Store, INSTA_ID) ->
    $scope.feed = []
    $scope.store = Store
    Store.get()

    Blog.posts().success (data) ->
      $scope.posts = data?.response?.posts || []

    Blog.feed().success (results) ->
      for post in results?.response?.posts
        for photo in post.photos
          $scope.feed.push(photo)

    Instagram.top(INSTA_ID).success (response) ->
      $scope.gram = response.data[0]
  ]