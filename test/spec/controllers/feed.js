'use strict';

describe('Controller: FeedCtrl', function() {

  // load the controller's module
  beforeEach(module('casteApp'));

  var FeedCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function($controller) {
    scope = {};
    FeedCtrl = $controller('FeedCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function() {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
