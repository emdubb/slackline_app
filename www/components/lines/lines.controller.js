(function(){
  "use strict";

  angular
    .module("slackin")
    .controller("LinesController", LinesController);

  LinesController.$inject = ["$state", "$log", "$http", "$scope", "localStorageService", "$ionicModal", "$ionicPopup"];

  function LinesController($state, $log, $http, $scope, localStorageService, $ionicModal, $ionicPopup){
    var vm = this;
    vm.test = "LinesController linked!"
    vm.showLine = showLine
    vm.postLine = postLine

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


    $ionicModal.fromTemplateUrl('shared/postModal.html', {
      scope: $scope,
      animation: 'slide-in-up'
    }).then(function(modal) {
      $scope.modal = modal;
    });
    $scope.openModal = function() {
      $scope.modal.show();
    };
    $scope.closeModal = function() {
      $scope.modal.hide();
    };
    //Cleanup the modal when we're done with it!
    $scope.$on('$destroy', function() {
      $scope.modal.remove();
    });
    // Execute action on hide modal
    $scope.$on('modal.hidden', function() {
      // Execute action
    });
    // Execute action on remove modal
    $scope.$on('modal.removed', function() {
      // Execute action
    });

    $scope.loginPopup = function() {
       var confirmPopup = $ionicPopup.confirm({
         title: 'Post a line',
         template: 'Uh oh, you must be logged in to do that!',
         buttons: [{
             text: 'OK',
             type: 'button-light'
           }, {
             text: 'Login!',
             type: 'button-royal',
             onTap: function(e) {
               $state.go('login')
               $log.log('go to login')
             }
           }]
       });
     };

    function postLine() {
      if (localStorageService.loadData('token')) {
        $log.log("logged in")
        $scope.loginPopup()
      } else {
        $scope.openModal()
        $log.log("not logged in")
      }
    }

    $scope.submitForm = function() {
      $log.log("submit form")
    }

  }

})();
