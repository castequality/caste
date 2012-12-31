'use strict';

casteApp.service('blogService', ['$http', 'API_KEY', 'WEB_ROOT', function($http, API_KEY, WEB_ROOT) {
  this.query = function(args) {
    return $http.jsonp(WEB_ROOT + '/posts', {
      params: angular.extend(args || {}, {
                api_key: API_KEY,
                jsonp: 'JSON_CALLBACK'
              })
    });
  };
}]).
value('API_KEY', 'NvWaTzI30JItCIsWNf5UQe3BlI85yZ1Fq70aYiB77X4Z93wtj0').
value('WEB_ROOT', '//api.tumblr.com/v2/blog/castequality.tumblr.com');
