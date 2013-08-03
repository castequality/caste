angular.module('casteApp')
  .controller 'VisualsCtrl', ($scope, Blog) ->
    $scope.photos = []
    Blog.visuals().then (results) ->
      for result in results
        for post in result?.data?.response?.posts
          for photo in post?.photos
            $scope.photos.push photo
