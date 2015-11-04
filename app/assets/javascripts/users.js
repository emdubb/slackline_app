console.log('users.js linked!');


$(document).ready(function() {
  console.log("ready!");

  function showForm() {
    $('.add-line-form').removeClass('hidden');
    $('#showform').addClass('hidden');
  }

  var button = document.getElementById('showform');
  button.onclick = showForm;

});
