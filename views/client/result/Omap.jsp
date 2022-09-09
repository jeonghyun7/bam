<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script><!--jquery-->
    <style>
		html, body {
			height : 100%;
		}
       /* Set the size of the div element that contains the map */
      #map {
		float : right;
        height: 100%;  /* The height is 400 pixels */
        width: 50%;  /* The width is the width of the web page */
       }

      #list {
		float : left;
        height: 100%;  /* The height is 400 pixels */
        width: 50%;  /* The width is the width of the web page */
       }
    </style>
  </head>
  <body>
    <h3 style='text-align:right'>구글 맵 테스트</h3>
    <!--The div element for the map -->
	<div id="list">
		<label id="seq">1</label>번 캠핑장 &nbsp;&nbsp;&nbsp;
		<button onclick="getAddr()">클릭해봥</button>
	</div>
    <div id="map"></div>
    
    <script>


		
		// Initialize and add the map
		function initMap() {
		  // 초기화된 맵
		  var uluru = {lat: 37.5642135, lng: 127.0016985};
		  // The map, centered at Uluru
		  var map = new google.maps.Map(
			  document.getElementById('map'), {zoom: 4, center: uluru});
		  // The marker, positioned at Uluru
		  var marker = new google.maps.Marker({position: uluru, map: map});
		}
		
		var addrLat = null;
		var addrLng = null;
		
		function getAddr(){
			$.ajax({
				url: "../result/search01.json", 
					   type: "POST",
					   data: { seq: $("#seq").val()},
					   success: function(responseData){
	                          alert(responseData);
                          if(!responseData.length){
							  //alert("존재하지 않는 seq 임");
							  return false;
						  }
						
					   }
					   
			});
		};

    </script>
    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIFmFYMYhbYkZRYtYcDuLcvDXBdxG4LP4&callback=initMap" type="text/javascript"></script>
  </body>
</html>