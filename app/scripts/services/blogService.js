'use strict';

casteApp.service('blogService', ['$http', 'API_KEY', 'WEB_ROOT', function($http, API_KEY, WEB_ROOT) {
  this.query = function(endpoint, args) {
    return $http.jsonp(WEB_ROOT + endpoint, {
      params: angular.extend({}, args, {
                api_key: API_KEY,
                jsonp: 'JSON_CALLBACK'
              })
    });
  };

  this.posts = function (args) {
    return this.query('/posts', angular.extend({}, args, { type: 'text' }));
  };

  this.projects = function (args) {
    return this.query('/posts', angular.extend({}, args, { type: 'photo' }));
  };
}]).
value('API_KEY', 'NvWaTzI30JItCIsWNf5UQe3BlI85yZ1Fq70aYiB77X4Z93wtj0').
value('WEB_ROOT', '//api.tumblr.com/v2/blog/castequality.tumblr.com');
