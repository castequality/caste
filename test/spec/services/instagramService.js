'use strict';

describe('Service: instagramService', function () {

  // load the service's module
  beforeEach(module('casteApp'));

  // instantiate service
  var instagramService;
  beforeEach(inject(function(_instagramService_) {
    instagramService = _instagramService_;
  }));

  it('should do something', function () {
    expect(!!instagramService).toBe(true);
  });

});
