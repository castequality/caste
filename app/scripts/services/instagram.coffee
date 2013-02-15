'use strict'

angular.module('casteApp')
  .service('Instagram', ['$http', 'INSTA_API', 'INSTA_WEB_ROOT', ($http, INSTA_API, INSTA_WEB_ROOT) ->
    @top = (id) =>
      params = 
          access_token: INSTA_API,
          callback: 'JSON_CALLBACK',
          count: 1
      $http.jsonp "#{INSTA_WEB_ROOT}/#{id}/media/recent", params: params

    @user = () =>
      @avatar INSTA_ID
  ])
.value('INSTA_API', '259689659.f59def8.a917d511dec04821af5c92a842fafe62')
.value('INSTA_WEB_ROOT', 'https://api.instagram.com/v1/users')