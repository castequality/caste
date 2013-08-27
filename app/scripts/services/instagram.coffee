angular.module('caste.services')
  .value('InstagramConfig',
    id: 259689659
    rootUrl: 'https://api.instagram.com/v1/users'
    params:
      access_token: '259689659.f59def8.a917d511dec04821af5c92a842fafe62'
      callback: 'JSON_CALLBACK'
  )
  .service 'Instagram', ($http, InstagramConfig) ->
    @get = () =>
      params = angular.extend InstagramConfig.params, count: 1
      url = "#{InstagramConfig.rootUrl}/#{InstagramConfig.id}/media/recent"
      $http.jsonp(url, params: params).success (response) =>
        @top = response.data[0]