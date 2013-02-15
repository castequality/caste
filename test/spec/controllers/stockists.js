'use strict';

describe('Controller: StockistsCtrl', function() {

  // load the controller's module
  beforeEach(module('casteApp'));

  var StockistsCtrl,
    scope, Blog, data;

  // Initialize the controller and a mock scope
  beforeEach(inject(function($controller) {
    scope = {};
    Blog = {};
    StockistsCtrl = $controller('StockistsCtrl', {
      $scope: scope,
      Blog: Blog
    });
  }));

  it('should query for the most recent posts', function() {
    // var posts = ['one,', 'two'];
    // Blog.query = function () {
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
