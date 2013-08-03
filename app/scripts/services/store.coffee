angular.module('caste.services')
  .service 'Store', ($http) ->
    @rootUrl = '//api.bigcartel.com/castequality/products.js'
    @get = () =>
      params = callback: 'JSON_CALLBACK'
      $http.jsonp(@rootUrl, params: params).success (data) =>
        index = Math.random() * data.length
        @featured = data[Math.floor(index)]