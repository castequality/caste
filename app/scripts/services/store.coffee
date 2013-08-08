angular.module('caste.services')
  .service 'Store', ($http) ->
    @rootUrl = '//api.bigcartel.com/castequality/products.js'

    baseArgs = 
      callback: 'JSON_CALLBACK'

    @get = () =>
      params = baseArgs
      $http.jsonp(@rootUrl, params: params).success (data) =>
        index = Math.random() * data.length
        @featured = data[Math.floor(index)]