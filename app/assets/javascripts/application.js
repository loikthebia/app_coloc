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
    zoom: 11
  };

  window.map = new google.maps.Map(
    document.getElementById('map-canvas'),
    mapOptions
  );

  if(window.page == 'home') {
  var i;
    for (i=0;window.data.length;i++) {
        var infowindow = new google.maps.InfoWindow({
      content: contentString
  });
        
       var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">'+window.data[i].titre+'</h1>'+
      '<div id="bodyContent">'+
      '<p>Superficie:'+window.data[i].superficie+'<br/>'+
      'Nombre de places libres dans la collocation:'+(window.data[i].nb_chambres-window.data[i].nb_habitants)+'<br/>'+
      'Prix Loyer/pers:'+(window.data[i].loyer/window.data[i].nb_chambres)+'</p>'+
      '</div>'+
      '</div>';


    var myLatlng = new google.maps.LatLng(window.data[i].latitude,window.data[i].longitude);

    var image = '/marker.png';
    var marker = new google.maps.Marker({
      position: myLatlng,
      map: window.map,
      icon: image
    });
      google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
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



