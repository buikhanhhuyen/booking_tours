$(document).on('turbolinks:load', function(){
  $(function () {
    $('.datetimepicker').datetimepicker({
      viewMode: 'years',
      format: 'DD/MM/YYYY'
    });
  });

  var container_height = $('.cnt').innerHeight();
  var wh = window.innerHeight;

  if ((wh - container_height) > 200 ) {
    $('.footer').addClass('fixed-ft');
  }
});
