<!Doctype html>
<html class="no-js" lang="">


<head>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Human Beat</title>
<link rel="stylesheet" href="{{asset('admin/css/bootstrap.min.css')}}">
<link rel="stylesheet" href="{{asset('admin/css/flexslider.css')}}">
<link rel="stylesheet" href="{{asset('admin/css/jquery.fancybox.css')}}">
<link rel="stylesheet" href="{{asset('admin/css/main.css')}}">
<link rel="stylesheet" href="{{asset('admin/css/responsive.css')}}">
<link rel="stylesheet" href="{{asset('admin/css/font-icon.css')}}">
<link rel="stylesheet" href="{{asset('admin/css/animate.min.css')}}">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>

<body>
<!-- header section -->
<section class="banner" role="banner">
  <header id="header">
    <div class="header-content clearfix"> <a class="logo" href="welcome.blade.php"><i class="icon icon-anchor"></i> Human Beat</a>
      <nav class="navigation" role="navigation">
        <ul class="primary-nav">
		 <li><a href="#banner">Home</a></li>
          <li><a href="{{URL::to('/doctor')}}">Doctor</a></li>
          <li><a href="{{URL::to('/patient')}}">Patient</a></li>
          <li><a href="{{URL::to('/gallery')}}">Gallery</a></li>
          <li><a href="{{URL::to('/our_team')}}">Our Team</a></li>
          <li><a href="{{URL::to('/about')}}">About</a></li>
          <li><a href="{{URL::to('/contact')}}">Contact</a></li>
        </ul>
      </nav>
      <a href="#" class="nav-toggle">Menu<span></span></a> </div>
  </header>
    

    </div>
</section>
<!-- header section -->
<!-- Footer section -->
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer class="footer">
<div class="container-fluid">

  <!DOCTYPE html>
  <html>
    <head>
      <style>
        /* Set the size of the div element that contains the map */
        #map {
          height: 100px;  /* The height is 400 pixels */
          width: 100%;  /* The width is the width of the web page */
         }
      </style>
    </head>
    <body>
      <h3>Here to find us</h3>
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

</footer>
<!-- Footer section -->
<!-- JS FILES -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="{{asset('admin/js/bootstrap.min.js')}}"></script>
<script src="{{asset('admin/js/jquery.flexslider-min.js')}}"></script>
<script src="{{asset('admin/js/jquery.fancybox.pack.js')}}"></script>
<script src="{{asset('admin/js/modernizr.js')}}"></script>
<script src="{{asset('admin/js/main.js')}}"></script>
<script type="text/javascript" src="{{asset('admin/js/jquery.contact.js')}}"></script>
<script type="text/javascript" src="{{asset('admassetinadmin//js/jquery.devrama.slider.min-0.9.4.js')}}"></script>
<script type="text/javascript">
		$(document).ready(function(){
			$('.slider-banner').DrSlider({
				'transition': 'fade',
				showNavigation: false,
				progressColor: "#03A9F4"
			});
		});
	</script>
</body>
</html>
