'use strict'

angular.module('casteApp')
  .filter 'emphasized', () ->
    (input, text) ->
      regex = new RegExp text, 'gi'
      input?.replace(regex, "<span>#{text}</span>")