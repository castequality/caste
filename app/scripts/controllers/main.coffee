'use strict'

angular.module('casteApp')
  .value('INSTA_ID', 259689659)
  .controller 'MainCtrl', ($scope, Blog, Instagram, Store, INSTA_ID) ->
    $scope.feed       = []
    $scope.store      = Store
    $scope.blog       = Blog

    # on load ========================
    Store.get()

    Blog.posts().success (data) ->
      $scope.posts = data?.response?.posts || []
      Blog.offset = $scope.posts.length

    Blog.feed().success (results) ->
      for post in results?.response?.posts
        $scope.totalPosts = results?.response?.total_posts || 0
        for photo in post.photos
          $scope.feed.push(photo)

    Instagram.top(INSTA_ID).success (response) ->
      $scope.gram = response.data[0]
    # on load end =====================

    $scope.canLoad = ->
      # can't scroll if already loading or there aren't any posts
      return false if $scope.loading or !$scope.posts? or !$scope.totalPosts

      # if we haven't already exhausted the posts
      $scope.totalPosts > Blog.offset

    $scope.loadPosts = ->
      return unless $scope.canLoad()

      # set loading
      $scope.loading = true

      Blog.posts().
        success((data) ->
          # once done loading, flip the switch
          $scope.loading = false

          # track the total posts
          $scope.totalPosts = data?.response?.total_posts || 0

          posts = data?.response?.posts || []

          # increase the offset by the limit
          Blog.offset = Blog.offset + posts.length

          # add the new posts
          for post in posts
            $scope.posts.push(post)
        ).
        error((error) ->
          # once done loading, flip the switch
          $scope.loading = false
        )

