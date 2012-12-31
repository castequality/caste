'use strict';

casteApp.service('instagramService', ['$http', 'INSTA_API', 'INSTA_WEB_ROOT', 'INSTA_ID', function($http, INSTA_API, INSTA_WEB_ROOT, INSTA_ID) {
  this.query = function (args) {
    return $http.jsonp(INSTA_WEB_ROOT + '/' + INSTA_ID + '/media/recent', {
      params: angular.extend(args || {}, {
                access_token: INSTA_API,
                callback: 'JSON_CALLBACK'
              })
    });
  };

  this.user = function () {
    return $http.jsonp(INSTA_WEB_ROOT + '/' + INSTA_ID, {
      params: {
        access_token: INSTA_API,
        callback: 'JSON_CALLBACK'
      }
    });
  };
}]).
value('INSTA_API', '259689659.f59def8.a917d511dec04821af5c92a842fafe62').
value('INSTA_WEB_ROOT', 'https://api.instagram.com/v1/users').
value('INSTA_ID', 10977253);
// value('INSTA_ID', 259689659);