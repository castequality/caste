describe 'Service: Instagram', (INSTA_WEB_ROOT, INSTA_ID) ->

  # load the service's module
  beforeEach module('caste.services')

  # instantiate service
  injector = {}
  $httpBackend = {}
  Instagram = {}
  beforeEach inject ($injector) ->
    injector = $injector