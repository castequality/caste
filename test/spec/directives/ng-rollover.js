(function() {
  'use strict';

  describe('Directive: ngRollover', function() {
    var element;
    beforeEach(module('casteApp'));
    element = {};
    return it('should make hidden element visible', inject(function($rootScope, $compile) {
      element = angular.element('<ng-rollover></ng-rollover>');
      element = $compile(element)($rootScope);
      return expect(element(text())).toBe('this is the ngRollover directive');
    }));
  });

}).call(this);
