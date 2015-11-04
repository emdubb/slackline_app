console.log('users.js linked!');

 $(document).ready(function() {

   $('.showform input').on('click', function(e) {
    console.log('clicked!', e.currentTarget.defaultValue);
    $('.field').removeClass('hidden');
   });
 });
