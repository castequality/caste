'use strict'

angular.module('casteApp')
  .service('Store', ($http, STORE_ROOT) ->
    @get = () =>
      params = callback: 'JSON_CALLBACK'
      $http.jsonp(STORE_ROOT, params: params).success (data) =>
        index = Math.random() * data.length
        @featured = data[Math.floor(index)]
  )
  .value 'STORE_ROOT', '//api.bigcartel.com/castequality/products.js'
