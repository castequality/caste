angular.module('caste.filters')
  .filter 'thumblr', () ->
    (photo, offset = 0) ->
      photo?.alt_sizes[offset]?.url