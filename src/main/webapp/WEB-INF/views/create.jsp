<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <title>여행 일정 만들기</title> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>       
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/map/css/common.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/map/css/create.css" />
  
  <!-- 파비콘 -->
  <link rel="shortcut icon" href="resources/home/assets/icons/favicon.ico">
  <link rel="apple-touch-icon-precomposed" href="resources/home/assets/icons/favicon_72.png" />
  <link rel="apple-touch-icon-precomposed" sizes="96x96" href="resources/home/assets/icons/favicon_96.png" />
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/home/assets/icons/favicon_144.png" />
  <link rel="apple-touch-icon-precomposed" sizes="192x192" href="resources/home/assets/icons/favicon_192.png" /> 
</head>
<body>
<div id="header">
  <h1 class="logo" alt="">
   <a href="${pageContext.request.contextPath}/home">
    <img src="${pageContext.request.contextPath}/resources/map/images/logo.png" alt="logo"/>
    <img src="${pageContext.request.contextPath}/resources/map/images/logo-sub.png" alt="logo"/>
   </a>
  </h1>
  <div class="close_btn">
    <a href="#">닫기</a>
  </div>
</div>
<div id="full_wrap">
  <div class="lf_full_wrap">
   
    <ul class="cat_menu">
      <li>경기도</li>
      <li>강원도</li>
      <li>충청남도</li>
      <li>충청북도</li>
      <li>경상북도</li>
      <li>경상남도</li>
      <li>전라북도</li>
      <li>전라남도</li>
      <li>제주도</li>     
     </ul>
       <div class="schedule_full_box"> 
       <div class="title_box">          
          <div class="back_btn fl"></div>
          <div class="cu_title fl">대한민국</div>
        </div>      
        <div id="city_list_box"></div>
       </div>
  </div><!-- lf_full_wrap -->

<div class="right_full_box">
<!-- 지도를 표시할 div 입니다 -->
<div id="map"></div> 

 <div id="select_detail_view" >
  <div id="city_title">
    <div class="city_title_name">여행 도시</div>
    <div id="pn_date_box" data="">
      <div class="pn_info">
                 출발일
      </div>
      <div class="pn_date_img">
        <img src="${pageContext.request.contextPath}/resources/map/images/pn_cal_btn.png" />
      </div>
      <div class="clearfix"></div>
      <div id="date_pick">    
      <input type="text" id="dateTime" /> 
      </div>
    </div>
  </div>  
    <div id="selected_cities">    
    </div>
    <div class="detail_city_bnt">
    <div class="detail_plan_go_btn" >  
    <input type="hidden" value="${sessionScope.username }" id="user_name" />  
        상세 일정 만들기
    </div>
  </div>
  </div>
  
</div>
</div>

</div> <!-- full_wrap end -->


<script type="text/javascript">
$(document).ready(function(){ 
  $('#full_wrap').css('height', $(window).height() - 67);
  
});	
</script>



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fdcd59468121eb8a944087722dca21e3&libraries=clusterer"></script>
<script type="text/javascript">
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표
        level: 13 // 지도의 확대 레벨
    };
    

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 


//마커를 표시할 위치와 title 객체 배열입니다 


 
$(document).ready(function(){
  
   
  var markers = [];

 
 
  $.ajax({
    type : "post",
    url: "${pageContext.request.contextPath}/get_city_list",
    dataType:"JSON",
    success: function(data){
      console.log(data);
      html = '';      
		$.each(data, function(key, val) {
		  
				html += '<div class="item" data-no="'+key+'" data="'+val.ci_srl+'" data-ci_name="'+val.ci_name+'" data-lat="'+val.ci_lat+'" data-lng="'+val.ci_lng+'">';						
				html += '<div class="info_box fl"><div class="info_title">'+val.ci_name+'</div></div>';
				html += '<div class="spot_to_inspot"><img src="resources/map/images/spot_to_inspot_a.png"></div><div class="clearfix"></div></div>';
		     	add_marker_city(val.ci_lat,val.ci_lng,val.ci_name,val.ci_srl,key,0);
		     	add_overayInfo(val.ci_lat,val.ci_lng,val.ci_name);
		     	
			});
			$('#city_list_box').html(html);	
			citySlide();    
			total_day_calc();
      
    }
    
  });	
			
	

  
  $('#full_wrap').css('width', $(window).width()); 
  $('.right_full_box').css('width', $(window).width() - 336); 
  $('.right_full_box').css('height', $(window).height() - 67);
  $('.cat_menu').css('height', $(window).height() - 67);
  $('#city_list_box').css('height', $(window).height() - 137);
  var moveLatLon = new kakao.maps.LatLng(36.2683, 127.6358);
  
  map.setCenter(moveLatLon);  
  map.relayout();
  



$(window).resize(function() {
  
  $('#full_wrap').css('height', $(window).height() - 67);
  $('#full_wrap').css('width', $(window).width() - 336); 
  $('.right_full_box').css('width', $(window).width() - 336); 
  $('.right_full_box').css('height', $(window).height() - 67);
  $('#city_list_box').css('height', $(window).height() - 137);
  $('.cat_menu').css('height', $(window).height() - 67);
  var moveLatLon = new kakao.maps.LatLng(36.2683, 127.6358);
  map.setCenter(moveLatLon);  
  map.relayout();
 
  
}); 


$("#selected_cities").on('click','.del_city_btn',function(){
  	$(this).parent().parent().remove();  
  	citySlide();
});

$(function() {
  
  var cal = {
      closeText : "닫기",
      prevText : "이전달",
      nextText : "다음달",
      currentText : "오늘",
      changeMonth: true, // 월을 바꿀 수 있는 셀렉트 박스
      changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스
      monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
      monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
      dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
      dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
      dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
      weekHeader : "주",
      dateFormat : "yy-mm-dd",
      firstDay : 0,
      maxDate: '+1Y',
      isRTL : false,
      showMonthAfterYear : true, // 연,월,일 순으로
      yearSuffix : '',    
      dateFormat:"yy-mm-dd",
      autoclose: true,
      minDate: 0,
      onSelect: function(dateText) {      
        $('.pn_info').text(dateText);
        $('.pn_info').attr("data",dateText);        
    }
            
  } 
  
  $("#dateTime").datepicker(cal);
	
});


$("#selected_cities").on('click','.city_set_minus_btn',function(){
  _now_set = $(this).parent().find('.city_set_day_info span').text();
  if(_now_set == '1'){
    _chg_set = 1;
 
  }else {
    _chg_set = Number(_now_set)  - 1;  
  }
 	$(this).parent().find('.city_set_day_info span').text(_chg_set);
	/* $(this).parent().parent().parent().find('.city_set_day_info span').text(_chg_set); */
	$(this).parent().parent().parent().attr('data-day',_chg_set);
	total_day_calc();
	
  
});


$("#selected_cities").on('click','.city_set_plus_btn',function(){
  _now_set = $(this).parent().find('.city_set_day_info span').text();
  if(_now_set == '0.5'){
    _chg_set = 1;
  }else {
    _chg_set = Number(_now_set) + 1;  
  }
 	$(this).parent().find('.city_set_day_info span').text(_chg_set);
	/* $(this).parent().parent().parent().find('.city_set_day_info span').text(_chg_set); */
	$(this).parent().parent().parent().attr('data-day',_chg_set);
	total_day_calc();
  
});


$("#city_list_box").on('click','.spot_to_inspot',function(){
	ci_srl = $(this).parent().attr('data');
	_lat = $(this).parent().attr('data-lat');
	_lng = $(this).parent().attr('data-lng');
    ci_name = $(this).parent().attr("data-ci_name")
  	_html = '<div class="s_cities" data-ci="'+ci_srl+'" data-day="2" data-lat="'+_lat+'" data-lng="'+_lng+'"><div class="city_route_info"><div class="clearfix"></div></div>';
	_html += '<div class="city_info"><div class="del_city_btn"><img src="${pageContext.request.contextPath}/resources/map/images/del_city_btn_b.png"></div><div class="city_info_name">'+ci_name+'</div>';
	_html += '<div class="city_set_day_box"><div class="fl city_set_minus_btn"><img src="${pageContext.request.contextPath}/resources/map/images/city_item_minus_btn.png"></div><div class="fl city_set_day_info"><span>2</span>일</div>';
	_html += '<div class="fl city_set_plus_btn"><img src="${pageContext.request.contextPath}/resources/map/images/city_item_plus_btn.png"></div><div class="clear"></div></div><div class="clearfix"></div></div>';
	_html += '</div>';		
	$('#selected_cities').append(_html);		
	citySlide();
	total_day_calc();
});







// 마커 이미지의 이미지 주소입니다
var imageSrc = "${pageContext.request.contextPath}/resources/map/images/marker_img.png";
//마커 이미지의 이미지 크기 입니다  
var imageSize = new kakao.maps.Size(30, 30);
//마커 이미지를 생성합니다    
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

function add_marker_city(_lat,_lng, ci_name,ci_srl,num, is_state){
   var marker_position = new kakao.maps.LatLng(_lat, _lng);
   var marker = new kakao.maps.Marker({
     map: map, // 마커를 표시할 지도
     position: marker_position, // 마커를 표시할 위치
     image : markerImage, // 마커 이미지
     clickable: true
	 });   
   
// 마커에 마우스오버 이벤트를 등록합니다
   kakao.maps.event.addListener(marker, 'mouseover', function() {
   		var markerImage = new kakao.maps.MarkerImage(
         '${pageContext.request.contextPath}/resources/map/images/marker_img_over.png',
         new kakao.maps.Size(30, 30));         
   		marker.setZIndex(99);
   		marker.setImage(markerImage);
       
   });

   // 마커에 마우스아웃 이벤트를 등록합니다
   kakao.maps.event.addListener(marker, 'mouseout', function() {
     var markerImage = new kakao.maps.MarkerImage(
         '${pageContext.request.contextPath}/resources/map/images/marker_img.png',
         new kakao.maps.Size(30, 30));  
    	    marker.setZIndex(1);
   		marker.setImage(markerImage);
   });
   
   
	// 마커에 클릭이벤트를 등록합니다
  	 kakao.maps.event.addListener(marker, 'click', function() {
  	   
	  	_html = '<div class="s_cities" data-ci="'+ci_srl+'" data-day="2" data-lat="'+_lat+'" data-lng="'+_lng+'"><div class="city_route_info"><div class="clearfix"></div></div>';
		_html += '<div class="city_info"><div class="del_city_btn"><img src="${pageContext.request.contextPath}/resources/map/images/del_city_btn_b.png"></div><div class="city_info_name">'+ci_name+'</div>';
		_html += '<div class="city_set_day_box"><div class="fl city_set_minus_btn"><img src="${pageContext.request.contextPath}/resources/map/images/city_item_minus_btn.png"></div><div class="fl city_set_day_info"><span>2</span>일</div>';
		_html += '<div class="fl city_set_plus_btn"><img src="${pageContext.request.contextPath}/resources/map/images/city_item_plus_btn.png"></div><div class="clear"></div></div><div class="clearfix"></div></div>';
		_html += '</div>';		
		$('#selected_cities').append(_html);		
		citySlide();
		total_day_calc();
 	});  	
  
}

function add_overayInfo(ci_lat,ci_lng,ci_name){
  
  var content = '<div class="customoverlay">' +
  '  <a href="#">' +
  '    <span class="title">'+ci_name+'</span>' +
  '  </a>' +
  '</div>';
  
  var position = new kakao.maps.LatLng(ci_lat,ci_lng);
  
  var customOverlay = new kakao.maps.CustomOverlay({
    map : map,
    position: position,
    content: content,  	    
    xAnchor: -0.3, // 커스텀 오버레이의 x축 위치입니다. 1에 가까울수록 왼쪽에 위치합니다. 기본값은 0.5 입니다
    yAnchor: 1.5 // 커스텀 오버레이의 y축 위치입니다. 1에 가까울수록 위쪽에 위치합니다. 기본값은 0.5 입니다  
	});
  }
  
  
  $(".customoverlay a").click(function(e){
    e.preventDefault();    
  });






function citySlide(){
  
  now_select_city_cnt = $('#selected_cities .s_cities').length;
  console.log('now_select_city_cnt:' + now_select_city_cnt);  
  
  if($('#select_detail_view').css("display") == "none"){
    if(now_select_city_cnt > 0){
      $('#select_detail_view').stop().show("slide", { direction: "left" },200);  
    }
  }else {
    if(now_select_city_cnt <= 0){
      $('#select_detail_view').hide("slide", { direction: "left" },200);  
    }
    
  }
  
}




$("#pn_date_box").on("click", function(e){  
  e.preventDefault();
  $('#dateTime').show().focus().hide();

});



var full_day = 0;
var this_day = 0;
var data = ""; 
var city_name = "";
var citys_names = []; 
var this_cis = [];
var dateDesc = [];
var plan_result = new Array();





  function getDateStr(myDate){ 
  let month = myDate.getMonth() + 1;
  let day = myDate.getDate();
  if(month < 10) {
    month = '0' + month; 
	}  
    if(day < 10)
    {
       day = '0' + day;
    }
 return (month + '.' + day); // '2019.12.11' }

}



  

$(".detail_plan_go_btn").on('click',function(){
  
  if($(".pn_info").attr("data") == null){
    alert("출발일을 정해주세요.");   
    $("#pn_date_box").click();
    return;    
  }
  
  var total_date = $("#selected_cities").attr("data");
  var start_day = $("#selected_cities .s_cities").parent().parent().find(".pn_info").attr("data");
  var date = new Date(start_day);

  
  var dayOfWeek = date.getDay();
  console.log("dayOfWeek : " + dayOfWeek);
   	 
  var setDay = 0;
  
  for(var x = 1; x <= total_date; x++){     
	  dateDesc[x] = getDateStr(date);
	  date.setDate(date.getDate()+1);
	  console.log(dateDesc[x]);
	}
      
  	var user_id = $("#user_name").val();
  	  
 	$.ajax({
 	url : '${pageContext.request.contextPath}/add_plan_member',
 	type : "POST",
 	data : {"user_id" : user_id},
 	dataType:"JSON",
 	success : function(data){
 	  
 	  
 	  var pn_srl = data;
 	  
 	  
 	 $("#selected_cities .s_cities").each(function(index){
 	    
 	    
 	   var this_term = $(this).attr("data-day");    
 	   var ci_srl = $(this).attr("data-ci"); 
 	   var city_name = $(this).find(".city_info_name").text();	 
 	   	for(var i = 1; i <= this_term; i++){    	   	  
 	      setDay++;  	     
 	  	
 	    var city_date = dateDesc[setDay]; 	 
		var year = date.getFullYear();
	  	var city_lat = $(this).attr("data-lat"); 
	    var city_lng = $(this).attr("data-lng");  
	    
	    if(dayOfWeek > 5){       
	  	  dayOfWeek = 0;        
	  	}else {
	  	  dayOfWeek++;	 	  
	  	}
	      console.log("set_day : " + setDay);
	    
    	
	   	  console.log("pn_srl : " + pn_srl);  	
 		  console.log("ci_srl : " + ci_srl);
 	      console.log("city_name : " + city_name); 
 	      console.log("date : " + city_date); 	    
 	      console.log("day_week : " + dayOfWeek);
 	      console.log("year : " + year);
 	      console.log("lat : " + city_lat +", lng : " + city_lng); 
 	      
 	      
 	   	add_plan_city(pn_srl,setDay, ci_srl, city_name, city_date, dayOfWeek, year, city_lat, city_lng); 
 	      
 	  	}// for end
 			});  // each
 			
 		  plan_complete(pn_srl);
 	 	  window.location ='${pageContext.request.contextPath}/workspace?pn_srl='+pn_srl; 

 		} // success

	}); // ajax
  
}); // click event


// 완료버튼


function plan_complete(pn_srl){
  
  var user_id = $("#user_name").val();
  var city_count = $("#selected_cities .s_cities").length; 
  var default_city_name = $("#selected_cities .s_cities").first().find(".city_info_name").text();  
  var default_ci = $("#selected_cities .s_cities").first().attr("data-ci");
  var start_day = $("#pn_date_box .pn_info").attr("data");
  var tour_day = $("#selected_cities").attr("data");
  var pn_title = "제목을 입력해주세요.";
  var pn_complete = 0;
  
 	     
  $.ajax({
	    type: "POST",
	    url : '${pageContext.request.contextPath}/add_plan_info',
	    data : {"pn_srl" : pn_srl, "user_id" : user_id, "city_count" : city_count, "default_ci" : default_ci, "start_day" : start_day, "tour_day" : tour_day, "pn_title" : pn_title,"default_city_name" : default_city_name,"pn_complete" : pn_complete},
	    success : function(data){
	   		console.log("complete 성공 ");     
	    }
	    
	  });
 
  
	}
	
	
 
 $(".close_btn").on("click", 'a', function(){
   window.location = '${pageContext.request.contextPath}/home';
 });
 
   
 	



 function add_plan_city(pn_srl,set_day, ci_srl, city_name, city_date, day_week, year, city_lat, city_lng){
    
    $.ajax({
      type : "POST",
      url : "${pageContext.request.contextPath}/add_plan_city",
      data : {"pn_srl" : pn_srl, "set_day" : set_day, "ci_srl" : ci_srl, "city_name" : city_name, "city_date" : city_date, "day_week" : day_week, "year" : year, "city_lat" : city_lat, "city_lng" : city_lng },
      success : function(data){
	
        
      }
      
    });
    
  }


function total_day_calc(){
	var _total_day = 0;
	$('#selected_cities .s_cities').each(function() {
		_this_day = $(this).attr("data-day");
		_total_day = _total_day + Number(_this_day);
	});
	$('#selected_cities').attr('data',_total_day);
}


});
</script>
</body>
</html>