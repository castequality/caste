describe 'instaThumb filter', ->
  beforeEach module('caste.filters')

  payload = { url: '//example.com/test.jpg' }
  instaThumb = {}
  beforeEach inject ($injector) ->
    instaThumb = $injector.get('$filter')('instaThumb')

  describe 'without params', ->
    it 'extracts the url', ->
      gram = images: { standard_resolution: payload }
      expect(instaThumb(gram)).toEqual payload.url