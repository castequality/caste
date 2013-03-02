'use strict';

angular.module('casteApp')
  .directive 'ngRollover', () ->
    restrict: 'ACE'
    scope:
      src: '='
      hover: '='
    link: (scope, element, attrs) ->

      toggle = (name, isHover) ->
        hover = isHover
        element.context.style.backgroundImage = "url('#{attrs[name]}')"
        
        # scope.url = angular.isString(scope[name]) || attrs[name]
        # element.context.style.backgroundImage = "url('#{url}')"

      toggle('src', false)

      element.context.onmouseover = () -> toggle('hover', true)

      element.context.onmouseout = () -> toggle('src', false)
