'use strict'

angular.module('casteApp')
  .service('Store', (Math, $http, STORE_ROOT) ->
    @get = () =>
      params = callback: 'JSON_CALLBACK'
      $http.jsonp(STORE_ROOT, params: params).success (data) =>
        index = Math.random() * data.length
        @featured = data[Math.floor(index)]
  )
.factory('Math', ($window) -> 
  $window.Math 
)
.value('STORE_ROOT', '//api.bigcartel.com/castequality/products.js')
