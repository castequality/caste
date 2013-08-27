angular.module('casteApp')
  .controller 'MainCtrl', ($scope, Blog, Instagram, Store) ->
    $scope.store      = Store
    $scope.posts      = Blog.posts
    $scope.photos     = Blog.photos
    $scope.gram       = Instagram.top

    $scope.canLoad    = Blog.canLoad
    $scope.getPosts   = Blog.getPosts

    # on load ========================
    Store.get()

    Blog.getPosts()
    Blog.getPhotos()

    Instagram.get()
    # on load end =====================