(function(){
  "use strict"

  angular
    .module('slackin')
    .controller('GlobalController', GlobalController);

  GlobalController.$inject = ['$state', '$log', 'localStorageService'];

  function GlobalController($state, $log, localStorageService){
    var vm = this
    vm.profile = profile
    vm.home = home

    function home() {
      $state.go('lines')
    }

    function profile() {
      if (localStorageService.loadData('token')) {
        $state.go('profile')
      } else {
        $state.go('login')
      }
    }
  }

})()
