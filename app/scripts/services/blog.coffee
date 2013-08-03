angular.module('caste.services')
  .service 'Blog', ($http, $q) ->
    @contributors = ['zandertaketomo', 'chrismulhern', 'waltwolfe']
    @apiKey  = 'NvWaTzI30JItCIsWNf5UQe3BlI85yZ1Fq70aYiB77X4Z93wtj0'
    @rootUrl = '//api.tumblr.com/v2/blog'

    @offset = 0
    @limit  = 5

    @about = () =>
      $http.jsonp "#{@rootUrl}/castequality.tumblr.com/info", 
        params: 
          api_key: @apiKey,
          jsonp: 'JSON_CALLBACK'

    @query = (contributor, args = {}) =>
      args.api_key = @apiKey
      args.jsonp = 'JSON_CALLBACK'
      $http.jsonp "#{@rootUrl}/#{contributor}.tumblr.com/posts", params: args

    @posts = (args = {}) =>
      @query "casteblog", angular.extend args, { offset: @offset, limit: @limit }

    @projects = (args = {}) =>
      args.type = 'photo'
      @query "casteproject", args

    @feed = (args = {}) =>
      args.type = 'photo'
      @query "castequality", args

    @visuals = (args = {}) =>
      promises = []
      for contributor in @contributors
        args.type = 'photo'
        # args.tag = 'castequality'
        promises.push @query contributor, args
      $q.all promises