'use strict';

describe('Controller: BlogCtrl', function() {

  // load the controller's module
  beforeEach(module('casteApp'));

  var BlogCtrl,
    scope, blogService, data;

  // Initialize the controller and a mock scope
  beforeEach(inject(function($controller) {
    scope = {};
    blogService = {};
    BlogCtrl = $controller('BlogCtrl', {
      $scope: scope,
      blogService: blogService
    });
  }));

  it('should query for the most recent posts', function() {
    // var posts = ['one,', 'two'];
    // blogService.query = function () {
    //   return {
    //     success: function (callback) {
    //       callback({
    //         response: {
    //           posts: posts
    //         }
    //       });
    //       return this;
    //     }
    //   };
    // };
    // expect(scope.posts).toBeDefined();
    // expect(scope.posts.length).toBe(2);
  });
});
