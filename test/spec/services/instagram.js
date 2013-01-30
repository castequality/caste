'use strict';

describe('Service: Instagram', function (INSTA_WEB_ROOT, INSTA_ID) {

  // load the service's module
  beforeEach(module('casteApp'));

  // instantiate service
  var injector, $httpBackend, Instagram,
  USER_URL = INSTA_WEB_ROOT + '/' + INSTA_ID,
  FEED_URL = USER_URL + '/media/recent';
  beforeEach(inject(function($injector) {
    injector = $injector;
  }));

  it('should retrieve photos from the feed', function () {
    $httpBackend = injector.get('$httpBackend');
    $httpBackend.whenJSONP(USER_URL).respond({

    });
    Instagram = injector.get('Instagram');
    expect(Instagram.photos());
  });

  it('should retrieve user info', function () {
    $httpBackend = injector.get('$httpBackend');
    $httpBackend.whenJSONP(FEED_URL).respond({

    });
    Instagram = injector.get('Instagram');
    expect(Instagram.user());
  });
});