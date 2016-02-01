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
    vm.login = login
    vm.logout = logout

    if (localStorageService.loadData('token')) {
      vm.currentUser = true
    } else {
      vm.currentUser = false
    }

    function home() {
      $state.go('lines')
    }

    function profile() {
      $state.go('profile')
    }

    function login() {
      $state.go('login')
    }

    function logout() {
      localStorageService.saveData('token', '')
    }
  }

})()
