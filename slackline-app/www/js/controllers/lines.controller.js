(function(){
  "use strict";

  angular
    .module("slackin")
    .controller("LinesController", LinesController);

  LinesController.$inject = ["$state", "$log", "$http", "localStorageService"];

  function LinesController($state, $log, $http, localStorageService){
    var vm = this;
    vm.test = "LinesController linked!"
  }

})();
