'use strict'

angular.module('casteApp')
  .service('Blog', ($http, $q, API_KEY, WEB_ROOT, contributors) ->
    @about = () =>
      $http.jsonp "#{WEB_ROOT}/castequality.tumblr.com/info", 
        params: 
          api_key: API_KEY,
          jsonp: 'JSON_CALLBACK'

    @query = (contributor, args = {}) =>
      args.api_key = API_KEY
      args.jsonp = 'JSON_CALLBACK'
      $http.jsonp "#{WEB_ROOT}/#{contributor}.tumblr.com/posts", params: args

    @posts = (args = {}) =>
      @query "casteblog", args

    @projects = (args = {}) =>
      args.type = 'photo'
      @query "casteproject", args

    @feed = (args = {}) =>
      args.type = 'photo'
      @query "castequality", args

    @visuals = (args = {}) =>
      promises = []
      for contributor in contributors
        args.type = 'photo'
        # args.tag = 'castequality'
        promises.push @query contributor, args
      $q.all promises
  )
.value('API_KEY', 'NvWaTzI30JItCIsWNf5UQe3BlI85yZ1Fq70aYiB77X4Z93wtj0')
.value('WEB_ROOT', '//api.tumblr.com/v2/blog')
.value('contributors', ['zandertaketomo', 'chrismulhern', 'waltwolfe'])
