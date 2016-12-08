$(document).on('turbolinks:load', function(){
  $(function () {
    $('.datetimepicker').datetimepicker({
      viewMode: 'years',
      format: 'DD/MM/YYYY'
    });
  });

  $('#horizontalTab').easyResponsiveTabs({
    type: 'default', //Types: default, vertical, accordion
    width: 'auto', //auto or any width like 600px
    fit: true   // 100% fit in a container
  });

  var container_height = $('.cnt').innerHeight();
  var wh = window.innerHeight;
  console.log(container_height);
  console.log(wh);

  if ((wh - container_height) > 230 ) {
    $('.footer').addClass('fixed');
  }
});
