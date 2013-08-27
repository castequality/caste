angular.module('caste.filters')
  .filter 'instaThumb', () ->
    (gram) ->
      gram?.images?.standard_resolution?.url