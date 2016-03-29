$(document).ready(function() {

  // Place JavaScript code here...
var x = document.getElementById("demo");

});
var x = document.getElementById("demo");
function getLocation() {
    console.log("Mother of");
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
