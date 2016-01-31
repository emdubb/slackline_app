(function(){
  "use strict";

  angular
    .module("slackin")
    .controller("LineController", LineController);

    LineController.$inject = ["$state", "$log", "$http"];

    function LineController($state, $log, $http){
      var vm = this;
      vm.test = "LineController linked!"
    }
})();
