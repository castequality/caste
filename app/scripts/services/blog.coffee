'use strict'

angular.module('casteApp')
  .service('Blog', ['$http', '$q', 'API_KEY', 'WEB_ROOT', 'contributors', ($http, $q, API_KEY, WEB_ROOT, contributors) ->
    @query = (endpoint, args = {}) =>
      args.api_key = API_KEY
      args.jsonp = 'JSON_CALLBACK'

      $http.jsonp endpoint, params: args

    @about = () =>
      $http.jsonp "#{WEB_ROOT}/castequality.tumblr.com/info", 
        params: 
          api_key: API_KEY,
          jsonp: 'JSON_CALLBACK'

    @posts = (args = {}) =>
      @query "#{WEB_ROOT}/casteblog.tumblr.com/posts", args

    @projects = (args = {}) =>
      args.type = 'photo'
      @query "#{WEB_ROOT}/castequality.tumblr.com/posts", args

    @visuals = (args = {}) =>
      promises = []
      for contributor in contributors
        args.type = 'photo'
        promises.push @query("#{WEB_ROOT}/#{contributor}.tumblr.com/posts", args)
      $q.all promises
  ])
.value('API_KEY', 'NvWaTzI30JItCIsWNf5UQe3BlI85yZ1Fq70aYiB77X4Z93wtj0')
.value('WEB_ROOT', '//api.tumblr.com/v2/blog')
.value('contributors', ['zandertaketomo', 'chrismulhern'])
