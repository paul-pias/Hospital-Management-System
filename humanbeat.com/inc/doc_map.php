<!DOCTYPE html>
  <html>
    <head>
      <style>
        /* Set the size of the div element that contains the map */
        #map {
          height: 150px;  /* The height is 400 pixels */
          width: 100%;  /* The width is the width of the web page */
         }
      </style>
    </head>
    <body>
      <h3>Location Map</h3>
      <!--The div element for the map -->
      <div id="map"></div>
      <script>
  // Initialize and add the map
  function initMap() {
    // The location of Uluru
    var nsu = {lat: 23.8151, lng: 90.4255};
    // The map, centered at Uluru
    var map = new google.maps.Map(
        document.getElementById('map'), {zoom: 18, center: nsu});
    // The marker, positioned at Uluru
    var marker = new google.maps.Marker({position: nsu, map: map});
  }
      </script>
      <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDLbp9ciApf2bMJNuRT_8Ki3snPSXRmME&callback=initMap">
      </script>
    </body>
  </html>