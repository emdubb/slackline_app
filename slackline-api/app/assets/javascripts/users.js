console.log('users.js linked!');


$(document).ready(function() {
  console.log("ready!");
  // document.addEventListener("DOMContentLoaded", function() {
  function showForm(e) {
    for (var i = 0 ; i < addLineField.length; i++) {
      $(e).removeClass('hidden');
    }
  }

  // var lineButton = document.getElementById('show-line-form');
  // var postButton = document.getElementById('show-post-form');

  var addLineField = document.getElementsByClassName('add-line-form');
  //var postLineField = document.getElementsByClassName('activate-line-form');
  $('#show-line-form').on('click', function() {
    showForm(addLineField);
    $('#show-line-form').addClass('hidden');
  });

  // postButton.addEventListener('click', function() {
  //  showForm(postLineField);
  //  $(postButton).addClass('hidden');
  // });
});
// });
