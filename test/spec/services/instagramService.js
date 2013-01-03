'use strict';

describe('Service: instagramService', function (INSTA_WEB_ROOT, INSTA_ID) {

  // load the service's module
  beforeEach(module('casteApp'));

  // instantiate service
  var injector, $httpBackend, instagramService,
  USER_URL = INSTA_WEB_ROOT + '/' + INSTA_ID,
  FEED_URL = USER_URL + '/media/recent';
  beforeEach(inject(function($injector) {
    injector = $injector;
  }));

  it('should retrieve photos from the feed', function () {
    $httpBackend = injector.get('$httpBackend');
    $httpBackend.whenJSONP(USER_URL).respond({

    });
    instagramService = injector.get('instagramService');
    expect(instagramService.photos());
  });

  it('should retrieve user info', function () {
    $httpBackend = injector.get('$httpBackend');
    $httpBackend.whenJSONP(FEED_URL).respond({

    });
    instagramService = injector.get('instagramService');
    expect(instagramService.user());
  });
});