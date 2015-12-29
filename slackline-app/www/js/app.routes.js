(function(){
  "use strict";

  angular
    .module("slackin")
    .config(AppRoutes);

  AppRoutes.$inject = ["$stateProvider", "$urlRouterProvider"];

  function AppRoutes($stateProvider, $urlRouterProvider){
    $stateProvider
      .state('lines', {
        url: '/lines',
        templateUrl: 'templates/lines.html',
        controller: 'LinesController',
        controllerAs: 'vm'
      })
      .state('login', {
        url: '/login',
        templateUrl: 'templates/login.html',
        controller: 'LoginController',
        controllerAs: 'vm'
      })
      .state('signup', {
        url: '/signup',
        templateUrl: 'templates/signup.html',
        controller: 'SignupController',
        controllerAs: 'vm'
      })
      .state('profile', {
        url: '/profile',
        templateUrl: 'templates/profile.html',
        controller: 'ProfileController',
        controllerAs: 'vm'
      })
      .state('line', {
        url: '/lines/:lineId',
        templateUrl: 'templates/line.html',
        controller: 'LineController',
        controllerAs: 'vm'
      });

      // if none of the above states are matched, use this as the fallback
      $urlRouterProvider.otherwise('/lines');


  }

})();
