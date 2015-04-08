app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: 'home.html',
        controller: 'HomeController'
      }).
      when('/articles', {
        templateUrl: 'articles/index.html',
        controller: 'ArticleIndexController'
      }).
      when('/articles/:id', {
      templateUrl: 'articles/show.html',
      controller: 'ArticleShowController'
      }).
      when('/nokogiri/scrape_jobs', {
      templateUrl: 'nokogiri/scrape_jobs.html',
      controller: 'NokogiriController'
      }).
      when('/about_me', {
      templateUrl: 'about_me.html',
      controller: 'AboutMeController'
      }).
      otherwise({
        redirectTo: '/'
      });
}]);