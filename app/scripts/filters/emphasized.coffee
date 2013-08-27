angular.module('caste.filters')
  .filter 'emphasized', () ->
    (input, text) ->
      regex = new RegExp text, 'gi'
      input?.replace(regex, "<span>#{text}</span>")