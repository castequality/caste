'use strict'

describe 'Controller: AboutCtrl', () ->

  # load the controller's module
  beforeEach module 'casteApp'

  AboutCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller) ->
    scope = {}
    AboutCtrl = $controller 'AboutCtrl', {
      $scope: scope
    }