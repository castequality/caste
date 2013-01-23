'use strict';

describe('Controller: HeaderCtrl', function() {

  // load the controller's module
  beforeEach(module('casteApp'));

  var HeaderCtrl,
    scope, location;

  // Initialize the controller and a mock scope
  beforeEach(inject(function($controller) {
    scope = {};
    location = {};
    HeaderCtrl = $controller('HeaderCtrl', {
      $scope: scope,
      $location: location
    });
  }));

  it('should have a list of pages', function () {
    expect(scope.pages).toBeDefined();
    expect(scope.pages.length).toBeGreaterThan(0);
  });

  it('should consider an item active if the URL contains the item\'s name', function() {
    location.path = function () {
      return 'active';
    };
    expect(scope.isActive('active')).toBeTruthy();
  });

  it('should not consider an item active if the URL doesn\'t contain the item\'s name', function() {
    location.path = function () {
      return 'notInHere';
    };
    expect(scope.isActive('active')).toBeFalsy();
  });
});
