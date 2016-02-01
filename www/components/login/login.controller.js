(function(){
  "use strict";

  angular
    .module("slackin")
    .controller("LoginController", LoginController);

  LoginController.$inject = ["$state", "$log", "$http"];

  function LoginController($state, $log, $http){
    var vm = this;
    vm.login = login
    vm.user = {
      email: "",
      password: ""
    }

    function login() {
      $log.log("email: ", vm.user.email, "password: ", vm.user.password)
    }

  }

})();
