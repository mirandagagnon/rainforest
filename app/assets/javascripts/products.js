$(document).on('ready page:load', function(){
  $('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

    $.ajax({
      url: '/products?search=' + searchValue,
      type: 'GET',
      datatype: 'html'
    })
    .done(function(data){
      $('#products').html(data);
     });
  });
});
