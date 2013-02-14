'use strict';

describe('Controller: VisualsCtrl', function() {

  // load the controller's module
  beforeEach(module('casteApp'));

  var VisualsCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function($controller) {
    scope = {};
    VisualsCtrl = $controller('VisualsCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function() {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
