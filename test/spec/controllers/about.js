(function() {
  'use strict';

  describe('Controller: AboutCtrl', function() {
    var AboutCtrl, scope;
    beforeEach(module('casteApp'));
    AboutCtrl = {};
    scope = {};
    return beforeEach(inject(function($controller) {
      scope = {};
      return AboutCtrl = $controller('AboutCtrl', {
        $scope: scope
      });
    }));
  });

}).call(this);
