angular.module('caste.services')
  .service 'Instagram', ($http) ->
    @id      = 259689659
    @apiKey  = "259689659.f59def8.a917d511dec04821af5c92a842fafe62"
    @rootUrl = "https://api.instagram.com/v1/users"

    baseArgs =
      access_token: @apiKey
      callback: 'JSON_CALLBACK'

    @top = () =>
      params = angular.extend baseArgs, count: 1
      $http.jsonp "#{@rootUrl}/#{@id}/media/recent", params: params