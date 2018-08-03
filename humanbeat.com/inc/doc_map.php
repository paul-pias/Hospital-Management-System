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
    // The location of NSU
    var nsu = {lat: 23.8151, lng: 90.4255};
    var location_info = " North South University \n Plot 15, Block B, Bashundhara \n Bangladesh ";
    // The map, centered at NSU
    var map = new google.maps.Map(
        document.getElementById('map'), {zoom: 18, center: nsu});
    // The marker, positioned at NSU
    var marker = new google.maps.Marker({position: nsu, map: map,title:location_info});
  }
      </script>
      <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDLbp9ciApf2bMJNuRT_8Ki3snPSXRmME&callback=initMap">
      </script>
    </body>
  </html>
