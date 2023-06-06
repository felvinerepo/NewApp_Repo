<!DOCTYPE html>
<html>
<head>
	<title>WAR Web Service</title>
	<link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
	<link href="static/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h1>SGI Tech War Project</h1>
<p id="demo"> Locate User Position</p>

<script>
var x = document.getElementById("demo");

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else { 
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
  x.innerHTML = "Latitude: " + position.coords.latitude + 
  "<br>Longitude: " + position.coords.longitude;
}
</script>
</body>
</html>
