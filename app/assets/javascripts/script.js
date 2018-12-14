
$(document).ready(function(){
  $(".hero").css({'height':($('.hero-img').height()+'px')});
  $(".nav-white").css({'height':($('.bg-light').height()+'px')});
  $( ".navbar-toggler" ).click(function() {
    $( ".nav-white" ).slideDown( "slow", function() {
      $(".nav-white").css({'height':($('.bg-light').height()+'px')});
      // Animation complete.
    });
  });
  $(window).resize(function(){
    $(".responsive-body").css({'width':($("#navbar").width()+'px')});
    //.hero heights same as img-fluid
    $(".hero").css({'height':($('.hero-img').height()+'px')});
  });
  // end window resize function
  $(".carousel-img").css({'width':($('.carousel-inner').width()+'px')})

  // var $root = $('html, body');
  // $('a').click(function() {
  //   var href = $.attr(this, 'href');
  //   if (href != undefined && href != '#') {
  //     $root.animate({
  //       scrollTop: $(href).offset().top
  //     }, 500, function () {
  //       window.location.hash = href;
  //     });
  //   }
  //   return false;
  // });

});
//GOOGLE MAP
function initMap() {
  var myLatLng = {lat: 32.8709253, lng: -117.2130425}

  var map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 13
  });
  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Westfield UTC!'
  });
  // marker.setMap(map);
};
$('#map').on('click', function(){
  $(this).css('border', '2px solid red');
});
