(function() {
  'use strict';

  angular.module('casteApp').filter('emphasized', function() {
    return function(input, text) {
      var regex;
      regex = new RegExp(text, 'gi');
      return input != null ? input.replace(regex, "<span>" + text + "</span>") : void 0;
    };
  });

}).call(this);
