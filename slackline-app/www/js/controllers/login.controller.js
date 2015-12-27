(function(){
  "use strict";

  angular
    .module("slackin")
    .controller("LoginController", LoginController);

  LoginController.$inject = ["$state", "$log", "$http"];

  function LoginController($state, $log, $http){
    var vm = this;
    vm.test = "LoginController linked!"
  }

})();
