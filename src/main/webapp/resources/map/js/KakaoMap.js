/**
 * 
 */
 
 

  var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
  var mapOption = { 
     center: new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표
     level: 13 // 지도의 확대 레벨
  };

  var map = new kakao.maps.Map(mapContainer, mapOption); 
  var moveLatLon = new kakao.maps.LatLng(36.2683, 127.6358);
  

  
  
  setTimeout(function() {  
 
    map.relayout();   
    console.log("맵 로드 ");
    
  }, 100);
  

  


$(window).resize(function(){ 

map.setCenter(moveLatLon);  
map.relayout();


});
    
  


