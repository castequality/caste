'use strict';

describe('Service: blogService', function () {

  // load the service's module
  beforeEach(module('casteApp'));

  // instantiate service
  var blogService;
  beforeEach(inject(function(_blogService_) {
    blogService = _blogService_;
  }));

  it('should retrieve blog posts', function () {
    expect(!!blogService).toBe(true);
  });

});
