'use strict'

angular.module('casteApp')
  .filter 'emphasized', () ->
    return (input, text) ->
      regex = new RegExp text, 'gi'
      return input?.replace(regex, "<span>#{text}</span>")