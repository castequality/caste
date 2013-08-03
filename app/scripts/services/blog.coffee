angular.module('caste.services')
  .service 'Blog', ($http, $q) ->
    @contributors = ['zandertaketomo', 'chrismulhern', 'waltwolfe']
    @apiKey  = 'NvWaTzI30JItCIsWNf5UQe3BlI85yZ1Fq70aYiB77X4Z93wtj0'
    @rootUrl = '//api.tumblr.com/v2/blog'

    @offset = 0
    @limit  = 5

    baseArgs =
      jsonp:  'JSON_CALLBACK'
      api_key: @apiKey
      offset:  @offset
      limit:   @limit

    @about = () =>
      $http.jsonp "#{@rootUrl}/castequality.tumblr.com/info", params: baseArgs

    @query = (contributor, args = {}) =>
      args = angular.extend baseArgs, args
      $http.jsonp "#{@rootUrl}/#{contributor}.tumblr.com/posts", params: args

    @posts = (args = {}) =>
      @query "casteblog", args

    @projects = (args = {}) =>
      args.type = 'photo'
      @query "casteproject", args

    @feed = (args = {}) =>
      args.type = 'photo'
      @query "castequality", args

    @visuals = (args = {}) =>
      promises  = []
      args.type = 'photo'

      for contributor in @contributors
        # args.tag = 'castequality'
        promises.push @query contributor, args

      $q.all promises