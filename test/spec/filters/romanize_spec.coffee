describe 'romanize filter', ->
  beforeEach module('ng-romanize')

  romanize = {}
  beforeEach inject ($injector) ->
    romanize = $injector.get('$filter')('romanize')

  it "transforms 1 to I", ->
    expect(romanize(1)).toBe "I"

  it "transforms 5 to V", ->
    expect(romanize(5)).toBe "V"

  it "transforms 10 to X", ->
    expect(romanize(10)).toBe "X"