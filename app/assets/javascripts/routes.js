techSite.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: 'home.html',
        controller: 'HomeController'
      }).
      when('/articles', {
        templateUrl: 'articles/index.html',
        controller: 'ArticlesController'
      }).
      otherwise({
        redirectTo: '/'
      });
}]);