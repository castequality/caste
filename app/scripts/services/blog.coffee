angular.module('caste.services')
  .value('BlogConfig',
    contributors: ['zandertaketomo', 'chrismulhern', 'waltwolfe']
    blog: 'casteblog'
    photo: 'castequality'
    projects: 'casteproject'
    rootUrl: '//api.tumblr.com/v2/blog'
    defaultParams:
      api_key: 'NvWaTzI30JItCIsWNf5UQe3BlI85yZ1Fq70aYiB77X4Z93wtj0'
      jsonp:  'JSON_CALLBACK'
  )
  .service 'Blog', ($http, $q, BlogConfig) ->
    @offset   = 0
    @limit    = 2
    @total    = 0

    @about    = {}
    @projects = {}
    
    @posts    = []
    @photos   = []
    @visuals  = []

    @loading   = false

    @canLoad  = () =>
      !@loading and @offset < @total

    @url = (contributor, endpoint = "posts") =>
      "#{BlogConfig.rootUrl}/#{contributor}.tumblr.com/#{endpoint}"

    @params = =>
      angular.extend angular.copy(BlogConfig.defaultParams),
        offset:  @offset
        limit:   @limit

    @getPosts = =>
      @loading = true
      @query(BlogConfig.blog).success((data) =>
        @total = data.response.total_posts
        for post in data.response.posts
          @posts.push post
          @offset += 1

        # once done loading, flip the switch
        @loading = false
      ).error((error) ->
        # once done loading, flip the switch
        @loading = false
      )

    @getProjects = (active) =>
      @query(BlogConfig.projects, type: 'photo').success (data) =>
        for project in data.response.posts
          project.pages = project.photos
          if project.caption?.length
            project.pages.push
              media: project.caption
              active: active
          @projects[project.timestamp] = project
        
    @getPhotos = =>
      @query(BlogConfig.photo, type: 'photo', limit: null, offset: null).success (data) =>
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
      $http.jsonp(@url(BlogConfig.photo, "info"), params: @params()).success (data) =>
        blog = data?.response?.blog
        @about.title = blog?.title
        @about.description = blog?.description

    @query = (contributor, params = {}) =>
      $http.jsonp @url(contributor), params: angular.extend(@params(), params)