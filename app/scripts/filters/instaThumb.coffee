angular.module('caste.filters')
  .filter 'instaThumb', () ->
    (gram, offset = 0) ->
      gram?.images?.standard_resolution?.url