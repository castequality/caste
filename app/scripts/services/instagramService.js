'use strict';

casteApp.service('instagramService', ['$http', 'INSTA_API', 'INSTA_WEB_ROOT', 'INSTA_ID', function($http, INSTA_API, INSTA_WEB_ROOT, INSTA_ID) {
  var self = this;
  
  this.query = function (args) {
    return $http.jsonp(INSTA_WEB_ROOT + '/' + INSTA_ID + '/media/recent', {
      params: angular.extend(args || {}, {
                access_token: INSTA_API,
                callback: 'JSON_CALLBACK'
              })
    });
  };

  this.top = function (id) {
    return $http.jsonp(INSTA_WEB_ROOT + '/' + id + '/media/recent', {
      params: {
        access_token: INSTA_API,
        callback: 'JSON_CALLBACK',
        count: 1
      }
    });
  };

  this.user = function () {
    self.avatar(INSTA_ID);
  };

}]).
value('INSTA_API', '259689659.f59def8.a917d511dec04821af5c92a842fafe62').
value('INSTA_WEB_ROOT', 'https://api.instagram.com/v1/users').
value('INSTA_ID', 259689659);