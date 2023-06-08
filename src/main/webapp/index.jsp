<!DOCTYPE html>
<html>
<head>
	<title>WAR Web Service</title>
	<link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
	<link href="static/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h1>SGI Tech War Project Version 5.0</h1>
<p id="demo"> Locate User Position Application - Pipeline Structure</p>

<p>Click the button to get your coordinates.</p>

<button onclick="getLocation()">Track My Location</button>

<h1 style="background-color:Green;">Hello World SGI Tech</h1>

<p style="background-color:Tomato;">
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
</p>
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
