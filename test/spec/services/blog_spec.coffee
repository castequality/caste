describe 'Service: Blog', ()->
  # load the service's module
  beforeEach module('caste.services')

  # instantiate service
  Blog = {}
  $httpBackend = {}
  beforeEach inject ($injector) ->
    injector = $injector
    Blog = injector.get 'Blog'
    $httpBackend = injector.get '$httpBackend'

  afterEach ->
   $httpBackend.verifyNoOutstandingExpectation()
   $httpBackend.verifyNoOutstandingRequest()

  mockOk = (post, method) ->
    $httpBackend.whenJSONP(/\.tumblr\.com\/posts/).respond
      meta:
        status: 200
        msg: "OK"
      response:
        blog: {}
        posts: [post]
    method()
    $httpBackend.flush()

  describe 'retreives blog info', ->
    blog = { title: 'title', description: 'description' }
    beforeEach ->
      $httpBackend.whenJSONP(/\.tumblr\.com\/info/).respond blog
      Blog.getAbout()
      $httpBackend.flush()

    it 'populating @about', ->
      expect(Blog.about.title).toEqual blog.title
      expect(Blog.about.description).toEqual blog.description

  describe 'retreives blog posts', ->
    post = { type: 'text' }
    beforeEach ->
      mockOk(post, Blog.getPosts)

    it 'populating @post', ->
      expect(Blog.posts[0]).toEqual post

    it 'increments the offset', ->
      expect(Blog.offset).toBe 1
    
  describe 'retrieves projects', ->
    post = { type: 'photo', photos: [{alt_sizes: []}] }
    beforeEach ->
      mockOk(post, Blog.getProjects)

    it 'populating @projects', ->
      expect(Blog.projects[0]).toEqual post

  describe 'retrieves photo feed', ->
    post = { type: 'photo', photos: [{alt_sizes: []}] }
    beforeEach ->
      mockOk(post, Blog.getPhotos)

    it 'populating @photos', ->
      expect(Blog.photos).toEqual post.photos


  describe 'retrieves visual feed', ->
    post = { type: 'photo', photos: [{alt_sizes: []}] }
    beforeEach ->
      mockOk(post, Blog.getVisuals)

    it 'populating @visuals', ->
      expect(Blog.visuals).toEqual post.photos

