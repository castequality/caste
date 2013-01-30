'use strict';

casteApp.service('Blog', ['$http', '$q', 'API_KEY', 'WEB_ROOT', 'contributors', function($http, $q, API_KEY, WEB_ROOT, contributors) {
  var self = this;
  this.query = function(endpoint, args) {
    return $http.jsonp(endpoint, {
      params: angular.extend({}, args, {
                api_key: API_KEY,
                jsonp: 'JSON_CALLBACK'
              })
    });
  };

  this.posts = function (args) {
    return this.query(WEB_ROOT + '/casteblog.tumblr.com/posts', angular.extend({}, args));
  };

  this.projects = function (args) {
    return this.query(WEB_ROOT + '/castequality.tumblr.com/posts', angular.extend({}, args, { type: 'photo' }));
  };

  this.visuals = function (args) {
    var promises = [],
        url;
    angular.forEach(contributors, function (contributor) {
      url = WEB_ROOT + '/' + contributor + '.tumblr.com/posts';
      promises.push(self.query(url, angular.extend({}, args, { type: 'photo' })));
    });
    return $q.all(promises);
  };

}]).
value('API_KEY', 'NvWaTzI30JItCIsWNf5UQe3BlI85yZ1Fq70aYiB77X4Z93wtj0').
value('WEB_ROOT', '//api.tumblr.com/v2/blog').
value('contributors', ['zandertaketomo', 'chrismulhern']);
