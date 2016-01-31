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
        templateUrl: 'components/lines/lines.html',
        controller: 'LinesController',
        controllerAs: 'LinesCtrl'
      })
      .state('login', {
        url: '/login',
        templateUrl: 'components/login/login.html',
        controller: 'LoginController',
        controllerAs: 'LoginCtrl'
      })
      .state('signup', {
        url: '/signup',
        templateUrl: 'components/login/signup.html',
        controller: 'SignupController',
        controllerAs: 'SignupCtrl'
      })
      .state('profile', {
        url: '/profile',
        templateUrl: 'components/profile/profile.html',
        controller: 'ProfileController',
        controllerAs: 'ProfileCtrl'
      })
      .state('line', {
        url: '/lines/:id',
        templateUrl: 'components/lines/line.html',
        controller: 'LineController',
        controllerAs: 'LineCtrl'
      });

      // if none of the above states are matched, use this as the fallback
      $urlRouterProvider.otherwise('/lines');


  }

})();
