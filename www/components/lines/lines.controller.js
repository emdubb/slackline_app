(function(){
  "use strict";

  angular
    .module("slackin")
    .controller("LinesController", LinesController);

  LinesController.$inject = ["$state", "$log", "$http", "localStorageService"];

  function LinesController($state, $log, $http, localStorageService){
    var vm = this;
    vm.test = "LinesController linked!"
    vm.showLine = showLine

    $http({
      method: "GET",
      url: "http://localhost:3000/api/posts?current=true",
      contentType: "application/json",
    }).then(function successCallback(response){
      $log.log("active posts: ", response.data)
      vm.posts = response.data
    }, function errorCallback(error){
      $log.log(error)
    })

    function showLine() {
      $log.log("show line")
    }

  }

})();
