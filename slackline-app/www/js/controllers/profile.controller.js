(function(){
  "use strict";

  angular
    .module("slackin")
    .controller("ProfileController", ProfileController);

  ProfileController.$inject = ["$state", "$log", "$http"];

  function ProfileController($state, $log, $http){
    var vm = this;
    vm.test = "ProfileController linked!"
  }

})();
