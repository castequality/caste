describe 'thumblr filter', ->
  beforeEach module('caste.filters')

  url = 'http://example.com/test.jpg'
  thumblr = {}
  beforeEach inject ($injector) ->
    thumblr = $injector.get('$filter')('thumblr')

  describe 'without params', ->
    it 'extracts the original thumb', ->
      photo = original_size: { url: url }
      expect(thumblr(photo)).toEqual url

  describe 'with params', ->
    it 'extracts the thumb based on offset', ->
      photo = alt_sizes: [{}, { url: url }]
      expect(thumblr(photo, 1)).toEqual url