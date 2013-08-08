angular.module('caste.services')
  .value('BlogConfig',
    contributors: ['zandertaketomo', 'chrismulhern', 'waltwolfe']
    blog: 'casteblog'
    photo: 'castequality'
    projects: 'casteprojects'
    rootUrl: '//api.tumblr.com/v2/blog'
    defaultParams:
      api_key: 'NvWaTzI30JItCIsWNf5UQe3BlI85yZ1Fq70aYiB77X4Z93wtj0'
      jsonp:  'JSON_CALLBACK'
  )
  .service 'Blog', ($http, $q, BlogConfig) ->
    @offset   = 0
    @limit    = 5
    @total    = 0
    @PARAMS   = angular.extend BlogConfig.defaultParams,
      offset:  @offset
      limit:   @limit

    @about    = {}
    @posts    = []
    @projects = []
    @photos   = []
    @visuals  = []

    loading   = false

    @canLoad  = () ->
      !loading or @total <= @offset

    @url = (contributor, endpoint = "posts") =>
      "#{BlogConfig.rootUrl}/#{contributor}.tumblr.com/#{endpoint}"

    @getPosts = =>
      loading = true
      @query(BlogConfig.blog).success((data) =>
        @total = data.response.total
        for post in data.response.posts
          @posts.push post
          @offset += 1
      ).error((error) ->
        # once done loading, flip the switch
        loading = false
      )

    @getProjects = =>
      @query(BlogConfig.projects, type: 'photo').success (data) =>
        for project in data.response.posts
          @projects.push project

    @getPhotos = =>
      @query(BlogConfig.photo, type: 'photo').success (data) =>
        for post in data.response.posts
          for photo in post.photos
            @photos.push photo

    @getVisuals = =>
      promises = for contributor in BlogConfig.contributors
        # args.tag = 'castequality'
        @query contributor, type: 'photo'

      $q.all(promises).then (results) =>
        for result in results
          for post in result.data.response.posts
            for photo in post.photos
              @visuals.push photo

    @getAbout = () =>
      $http.jsonp(@url(BlogConfig.photo, "info"), params: @PARAMS).success (data) =>
        blog = data?.response?.blog
        @about.title = blog?.title
        @about.description = blog?.description

    @query = (contributor) =>
      $http.jsonp @url(contributor), params: @PARAMS