describe 'instaThumb filter', ->
  beforeEach module('caste.filters')

  url = 'http://example.com/test.jpg'
  instaThumb = {}
  beforeEach inject ($injector) ->
    instaThumb = $injector.get('$filter')('instaThumb')

  describe 'without params', ->
    it 'extracts the url', ->
      photo = images: { standard_resolution: url }
      expect(instaThumb(photo)).toEqual url