angular.module('caste.filters')
  .filter 'thumblr', () ->
    (photo, offset = -1) ->
      image = if offset < 0
                photo?.original_size
              else
                photo?.alt_sizes[offset]
      image?.url