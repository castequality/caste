angular.module('caste.services', [])
angular.module('caste.filters', [])

angular.module('casteApp', [
                              'ui',
                              'ui.bootstrap',
                              'svg-fallback',
                              'infinite-scroll',
                              'ng-romanize',
                              'caste.services',
                              'caste.filters'
                            ])
  .run(($rootScope, $location) ->
    $rootScope.$watch(() ->
      $location.path()
    , (newPath, oldPath) ->
      $rootScope.splash = newPath is '/'
    , true)
  )
  .config(($routeProvider) ->


    $routeProvider
      .when '/', 
        templateUrl: '/views/splash.html',
        controller: 'MainCtrl'
      .when '/feed', 
        templateUrl: '/views/main.html',
        controller: 'MainCtrl'
      .when '/stockists',
        templateUrl: '/views/stockists.html',
        controller: 'StockistsCtrl'
      .when '/project',
        templateUrl: '/views/projects.html',
        controller: 'ProjectsCtrl'
      .when '/visual', 
        templateUrl: 'views/visual.html',
        controller: 'VisualsCtrl'
      .when '/contact', 
        templateUrl: 'views/contact.html',
        controller: 'ContactCtrl'
      .otherwise redirectTo: '/'
    )
  .value 'ui.config',
    jq:
      fancybox:
        autoHeight: true
        autoWidth: true
        scrolling: no
