// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require underscore

function initialize() {
  var mapOptions = {
    center: { lat: 48.583148, lng: 7.747882},
    zoom: 8
  };

  window.map = new google.maps.Map(
    document.getElementById('map-canvas'),
    mapOptions
  );

  if(window.page == 'home') {
  var i;
    for (i=0;window.data.length;i++) {
    var myLatlng = new google.maps.LatLng(window.data[i].latitude,window.data[i].longitude);

    var image = '/marker.png';
    var marker = new google.maps.Marker({
      position: myLatlng,
      map: window.map,
      icon: image
    });
    }
  }

    if(window.page == 'coloc') {{
    var myLatlng = new google.maps.LatLng(window.data.latitude,window.data.longitude);

    var image = '/marker.png';
    var marker = new google.maps.Marker({
      position: myLatlng,
      map: window.map,
      icon: image
    });
    }
  }
}

$(document).on('ready', function() {
  google.maps.event.addDomListener(window, 'load', initialize);
})


