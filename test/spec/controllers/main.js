'use strict';

describe('Controller: MainCtrl', function() {

  // load the controller's module
  beforeEach(module('casteApp'));

  var MainCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function($controller) {
    scope = {};
    MainCtrl = $controller('MainCtrl', {
      $scope: scope,
      Modernizr: Modernizr
    });
  }));
});
