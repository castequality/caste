'use strict';

describe('Service: blogService', function (API_KEY, WEB_ROOT) {

  // load the service's module
  beforeEach(module('casteApp'));

  // instantiate service
  var blogService, $httpBackend, injector;
  beforeEach(inject(function($injector) {
    injector = $injector;
  }));

  it('should retrieve blog posts', function () {
    $httpBackend = injector.get('$httpBackend');
    $httpBackend.whenJSONP(WEB_ROOT + '/posts').respond({

    });
    blogService = injector.get('blogService');
    expect(blogService).toBe(true);
  });
});
