app.config(['$routeProvider', function($routeProvider) {

    $routeProvider.
      when('/', {
        templateUrl: 'home.html',
        controller: 'HomeController'
      }).
      when('/articles', {
        templateUrl: 'articles/index.html',
        controller: 'ArticleIndexController'
      }).
      when('/nokogiri/scrape_jobs', {
        templateUrl: 'nokogiri/scrape_jobs.html',
        controller: 'NokogiriController'
      }).
      when('/about_me', {
        templateUrl: 'about_me.html',
        controller: 'AboutMeController'
      }).
      when('/mandrill', {
        templateUrl: 'mandrill_rails.html',
        controller: 'MandrillRailsController'
      }).
      when('/hiding_keys', {
        templateUrl: 'hiding_keys.html',
        controller: 'HidingKeysController'
      }).
      when('/omniauth', {
        templateUrl: 'twitter_omniauth.html',
        controller: 'OmniAuthController'
      }).
      when('/notepad', {
        templateUrl: 'notePad.html',
        controller: 'NotePadController'
      }).
      otherwise({
        templateUrl: 'home.html',
        controller: 'HomeController'
      });
}]);