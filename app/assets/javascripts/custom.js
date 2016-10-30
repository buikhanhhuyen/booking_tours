$(document).on('turbolinks:load', function(){
  $(function () {
    $('.datetimepicker').datetimepicker({
      viewMode: 'years',
      format: 'DD/MM/YYYY'
    });
  });
});
