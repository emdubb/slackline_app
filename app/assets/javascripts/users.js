console.log('users.js linked!');


$(document).ready(function() {
  console.log("ready!");

  function showForm(e) {
    for (var i = 0 ; i < addLineField.length; i++) {
      $(e).removeClass('hidden');
    }
  }

  var lineButton = document.getElementById('show-line-form');
  var postButton = document.getElementById('show-post-form');

  var addLineField = document.getElementsByClassName('add-line-form');
  var postLineField = document.getElementsByClassName('activate-line-form');

  lineButton.addEventListener('click', function() {
    showForm(addLineField);
    $(lineButton).addClass('hidden');
  });

  postButton.addEventListener('click', function() {
   showForm(postLineField);
   $(postButton).addClass('hidden');
  });
});
