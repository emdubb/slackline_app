(function(){
  "use strict";

  angular
    .module("slackin")
    .controller("SignupController", SignupController);

  SignupController.$inject = ["$state", "$log", "$http"];

  function SignupController($state, $log, $http){
    var vm = this;
    vm.test = "SignupController linked!"
  }

})();
