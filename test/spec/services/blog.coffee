describe 'Service: Blog', (API_KEY, WEB_ROOT)->

  # load the service's module
  beforeEach module('casteApp')

  # instantiate service
  Blog = {}
  $httpBackend = {}
  injector = {}
  beforeEach inject ($injector) ->
    injector = $injector
    Blog = injector.get 'Blog'
    $httpBackend = injector.get '$httpBackend'
    $httpBackend.whenJSONP(WEB_ROOT + '/posts').respond(
      
    )

  it 'should retrieve blog posts', () ->
    expect(Blog).toBe(true)