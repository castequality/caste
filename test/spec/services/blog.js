'use strict';

describe('Service: Blog', function (API_KEY, WEB_ROOT) {

  // load the service's module
  beforeEach(module('casteApp'));

  // instantiate service
  var Blog, $httpBackend, injector;
  beforeEach(inject(function($injector) {
    injector = $injector;
  }));

  it('should retrieve blog posts', function () {
    $httpBackend = injector.get('$httpBackend');
    $httpBackend.whenJSONP(WEB_ROOT + '/posts').respond({

    });
    Blog = injector.get('Blog');
    expect(Blog).toBe(true);
  });
});
