//= link_tree ../images
//= link_directory ../stylesheets .css
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})
