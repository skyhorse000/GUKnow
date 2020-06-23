<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
  
  <!-- drag -->
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <link rel="stylesheet" type="text/css"
  href="${pageContext.request.contextPath}/resources/map/css/common.css" />
  <link rel="stylesheet" type="text/css"
  href="${pageContext.request.contextPath}/resources/map/css/workspace.css" />
  
  <!-- 파비콘 -->
  <link rel="shortcut icon" href="resources/home/assets/icons/favicon.ico">
  <link rel="apple-touch-icon-precomposed" href="resources/home/assets/icons/favicon_72.png" />
  <link rel="apple-touch-icon-precomposed" sizes="96x96" href="resources/home/assets/icons/favicon_96.png" />
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/home/assets/icons/favicon_144.png" />
  <link rel="apple-touch-icon-precomposed" sizes="192x192" href="resources/home/assets/icons/favicon_192.png" />


<title>G.U.Know travel</title>
</head>
<body>

  <div id="header">
    <div class="header_wrap">
      <h1 class="logo fl">
        <a href="/project/home">
        <img src="${pageContext.request.contextPath}/resources/map/images/logo.png" alt="logo"/>
        <img src="${pageContext.request.contextPath}/resources/map/images/logo-sub.png" alt="logo"/>
        </a>
      </h1>
      <div id="plan_title" class="fl">제목을 입력해주세요.</div>
      <div id="plan_total_buget" class="fl">KRW 0</div>
      <a href="#" id="plan_preview_link" class="fl" target="_blank">
        <img
        src="${pageContext.request.contextPath}/resources/map/images/plan_preview_btn.png" />
        미리보기
      </a>
      <div class="fr gnb_box">
        <div>
          <div id="plan_member_list_box" class="fl">
            <a href="#"> <img
              src="${pageContext.request.contextPath}/resources/map/images/img_profile.png"
              alt="프로필 사진" />
            </a>
          </div>
          <div id="ws_invite_btn" class="fl">
            <img
              src="${pageContext.request.contextPath}/resources/map/images/ws_invite_btn.png"
              alt="친구 초대" />
          </div>
          <div class="fl" id="plan_out_btn">저장&닫기</div>
          <div class="fl" id="plan_complete_btn">완료</div>
        </div>
        <div class="clearfix"></div>
      </div>       
    </div>
     <div class="clearfix"></div>
  </div>
  <script type="text/javascript"></script>
  <!-- 헤더 끝 -->

  <div id="full_wrap">
    <div class="fl left_full_box">
    <div id="left_container" class="fl">
      <div id="pn_title_box">
        <div class="pn_data">
          <div class="full_date_info fl"></div>
          <div class="fl day_edit_btn">EDIT</div>
        </div>
        <div id="cat_menu_wrap">
          <ul id="cat_menu"></ul>
        </div>
        <div id="cat_add_box">
          
        </div>
      </div>
      <div id="pn_date_controll_box">
        <div class="con_wrap">
          <div class="con_box">
            <img src="${pageContext.request.contextPath}/resources/map/images/cat_tuto_icon.png" alt="이용방법 icon" />
                     이용방법
          </div>
        </div>
      </div>
    </div>
    <div id="schedule_full_box" class="fl">
      <div class="title_box">
        <div id="schedule_detail_title">
          <div class="fl schedule_detail_title_text">
            <div class="fl schedule_title">
              DAY1 
              <span style="color:#999999">|</span>
              05.31(일요일)
            </div>
            <div class="fl day_reset_btn"></div>
            <div class="fr day_next_btn"></div>
            <div class="fr day_prev_btn"></div>
            <div class="clearfix"></div>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
      <div id="day_controller_btn_box">
        <div id="day_optimize_btn" class="fl">
                 경로최적화(구현중...)
        </div>
        <div class="clearfix"></div>
      </div>
      <div id="schedule_detail_box" class="connectedSortable ui-sortable">
        <div class="tip_box">
          <img src="${pageContext.request.contextPath}/resources/map/images/tip_ko.png" alt="사용 방법"/>
        </div>
      </div>
      <div class="inspot_add_box">
        <div class="inspot_set_box">
          <div class="fl add_inspot_spot_btn">+ 기능 구현중</div>
          <div class="fl add_inspot_trans_btn">+ 구현중...</div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
    <div class="clearfix"></div>
    </div> <!-- left_full_box -->
    <div id="right_full_box">
      <div id="on_city_open_btn"></div>
      <div id="city_list">
        <div class="list_title">
          <span>서울</span>
          <div class="list_title_option_menu">도시 변경</div>
        </div>
        <div class="on_city_close_btn"></div>
        <div class="city_change_box"></div>       
        <div class="list_search_full_box">
         <div class="list_search_box">    
          <input type="text" id="input_search" placeholder="장소 검색">
          <div class="type_box">
            <span type="radio" class="radio on">
              <span class="et-radio">&nbsp</span>
              <span class="et-radio_text">도시내 검색</span>
            </span>
            <span type="radio" class="radio">
               <span class="et-radio">&nbsp</span>
              <span class="et-radio_text">전체 검색</span>
            </span>
          </div>      
         </div>
         <div class="list_category_box">
            <div class="list_cat_item fl on" data-c="C01" data-c-type="25">
              <img src="${pageContext.request.contextPath}/resources/map/images/cat_item/ic_300_c.png" alt="볼거리"/>
            </div>
            <div class="list_cat_item fl" data-c="C01" data-c-type="39" >
              <img src="${pageContext.request.contextPath}/resources/map/images/cat_item/ic_200_a.png" alt="먹거리"/>
            </div>
            <div class="list_cat_item fl" data-c="C01" data-c-type="38">
              <img src="${pageContext.request.contextPath}/resources/map/images/cat_item/ic_400_a.png" alt="쇼핑"/>
            </div>
            <div class="list_cat_item fl" data-c="C01" data-c-type="32">
              <img src="${pageContext.request.contextPath}/resources/map/images/cat_item/ic_100_a.png" alt="숙박"/>
            </div>
            <div class="list_cat_item fl" data-c="C01" data-c-type="0">
              <img src="${pageContext.request.contextPath}/resources/map/images/cat_item/ic_000_a.png" alt="파일첨부"/>
            </div>
            <div class="clearfix"></div>
            <div class="list_tag_box">
              <div id="map_tag_select_box">
                                태그 선택
              </div>
            </div>
         </div>
        </div>         
        <div class="list_box connectedSortable"></div>
      </div><!-- city_list  -->   
      <div class="clearfix"></div>
      <div id="map" class="fr"></div>
      <div class="clearfix"></div>
    </div><!-- right_full_box -->    
  </div><!-- full_wrap -->
  

  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fdcd59468121eb8a944087722dca21e3&libraries=clusterer"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/map/js/KakaoMap.js"></script>
  <script type="text/javascript">
 		 $(document).ready(function() {
 		   
 	
 		   
 		var pn_srl = getParameterByName("pn_srl");
 		console.log(pn_srl);
 		url_check(pn_srl);
 		
 		var contentTypeId = 0;
 		var bounds = new kakao.maps.LatLngBounds();
 			   
 		var map_width = $( window ).width() - 790; 
 		var map_height = $(window).height() - 74;
 		var _map_width = $( window ).width() - 425;
 		
 		$('#full_wrap').css('height', $(window).height() - 74);  
 		$('#schedule_detail_box').css('height',map_height - 141);
 		$('#city_list .list_box').css('height',map_height - 245);
 		$('#map').css('width', map_width + 'px' );
 		$('#map').css('height', map_height + 'px' );
 		$('#right_full_box').css('width',_map_width+'px');
 		
 		
 	 	function url_check(pn_srl){
 	 	  
		  $.ajax({ 		     
		    url : '${pageContext.request.contextPath}/url_check',
		  	type : "POST",
		  	data : {"pn_srl" : pn_srl},
		  	dataType:"JSON",
		  	success : function(data){
		  	  console.log("url_check : " + data);
		  	  if(data == 0){
		  	    
		  	    alert("잘못된 접근입니다.");
		  	    window.location ='${pageContext.request.contextPath}/home';
		  	  }else{
		  	    
		  	    // plan_day_list 데이터 가져오기 위한 ajax
		  			
		        $.ajax({
		          type : 'POST',
		          url : '${pageContext.request.contextPath}/get_plan_day',     
		          data : {"pn_srl" : pn_srl},
		          dataType:"JSON",
		          success : function(data, status) {
		        
		          console.log(data);	
		            
		           var city_geo = [];
		           var html1_2 = "";
		           var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');
		           var day_num = "";
		           
		           
		           
		           
		          $.each(data, function(key, val){
		              
		            

		      		day_num = week[val.day_week]; 
		           
		    
		              	
		              	if(key == 0){
		              	  html1_2 += '<li data="'+val.set_day+'" data-let="'+val.city_lat+'" data-lng="'+val.city_lng+'" data-ci="'+val.ci_srl+'" class="on" original-title="'+val.city_name+'">';	
		            			html1_2 += "<div class='fl cat_date_left_box'><div class='cat_left_day'>DAY"+val.set_day+"</div><div class='cat_left_date'>"+val.city_date+"</div></div>";
		                 	    html1_2 += "<div class='fl cat_date_right_box'><div class='cat_right_weekday'>"+day_num+"</div><div class='cat_right_city'>"+val.city_name+"</div></div></li>";
		              	  
		              	}else{
		              	  
		              	  		html1_2 += '<li data="'+val.set_day+'" data-let="'+val.city_lat+'" data-lng="'+val.city_lng+'" data-ci="'+val.ci_srl+'" original-title="'+val.city_name+'">';	
		            			html1_2 += "<div class='fl cat_date_left_box'><div class='cat_left_day'>DAY"+val.set_day+"</div><div class='cat_left_date'>"+val.city_date+"</div></div>";
		                 	    html1_2 += "<div class='fl cat_date_right_box'><div class='cat_right_weekday'>"+day_num+"</div><div class='cat_right_city'>"+val.city_name+"</div></div></li>";
		              	}
		         	
		           	    
		            });
		            
		            $('#cat_menu').html(html1_2);
		            
		            var set_day = $('#cat_menu li.on').attr("data");
		            
		            var title_text_day = $('#cat_menu li.on').find(".cat_left_day").text();
		            var title_text_date = $('#cat_menu li.on').find(".cat_left_date").text();
		            var title_text_week = $('#cat_menu li.on').find(".cat_right_weekday").text();
		            
		            
		            $(".schedule_title").html(title_text_day+" <span>|</span> "+title_text_date+"("+title_text_week+")");
		            
		            getPlanInfoLoad(pn_srl);            
		       
		            inspot_reload(pn_srl, set_day);
		            
		            var cat_height = $('#cat_menu').height();
		            var map_height = $(window).height() - 139;
		            
		            $('#cat_add_box').css('height', map_height - cat_height - 45);  
		           
		            console.log(cat_height+"cath")
		     		
		          }
		           
		             
		        });
		  	    
		  	  }	  	  
		  	}
		     
		  	});
		   } // 아이디 pn_srl 체크		 
 		
 		
 		
 

/*      var getPlanDayList = JSON.parse(sessionStorage.getItem("planDay"));
        var getPlanInfo = JSON.parse(sessionStorage.getItem("planInfo"));
		var getUser_id = sessionStorage.getItem("user_id");
		 */
		 
		 
	
		 
/*    var date = new Date(getPlanInfo.startDay);
      var start_day = getFormatDate(date);
      var total_day = Number(getPlanInfo.totalDay);
      var end_day = date.setDate(date.getDate() + total_day);
      end_day = new Date(end_day);
      end_day = getFormatDate(end_day);
		
		console.log(getPlanDayList); */
		

     
    /*    
        console.log(end_day);
		
		
 */		
 
 
        function getParameterByName(name) {
          name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
          var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                  results = regex.exec(location.search);
          return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    	  }
        
       

     
        	
        

        
          
            // cat_menu 클릭 이벤트
            $("#cat_menu").on("click",'li',function(){
              $(this).addClass('on').siblings().removeClass('on');
              
              areaCode = $(this).attr("data-ci");
              contentTypeId = $(".list_category_box div.on").attr("data-c-type");
              
              var title_text_day = $(this).find(".cat_left_day").text();
              var title_text_date = $(this).find(".cat_left_date").text();
              var title_text_week = $(this).find(".cat_right_weekday").text();
              
              $(".schedule_title").html(title_text_day+" <span>|</span> "+title_text_date+"("+title_text_week+")");
              
          	/* 	if($(".list_box div").length < 1){
          		  console.log($(".list_box div").length + "랭스");
           		         		  
           		} */
              
         /*      console.log(contentTypeId + "cont 아이디"); */
               
         		$(".list_box").empty();
         		$("#schedule_detail_box").find(".day_spot_item").remove();
         		$("#schedule_detail_box").find(".tip_box").show();
         		hideMarkers();
         		hideMarkers_reg();
         		
         		closeInfoWindow();
         		get_list(areaCode, contentTypeId);         		
         		
         		var set_day = $("#cat_menu li.on").attr("data");
         		console.log("set_day"+set_day);
         		
         		inspot_reload(pn_srl, set_day);
         	
            });
            
            
            
          	
          	 
          function getPlanInfoLoad(pn_srl){
           			
           		 $.ajax({
           		   type: 'POST',
           		   url: '${pageContext.request.contextPath}/get_plan_info',
           		   data : {"pn_srl" : pn_srl},
           		  dataType:"JSON",
           		   success : function(data){
           		     
           		     
           		     console.log(data);        
           		     
           		     var pn_title = data[0].pn_title;
           		     
           		     var start_day = new Date(data[0].start_day);            		     
           		   	
           		     var s_day = getFormatDate(start_day);
           		    console.log("s데이 : " + s_day);
           		     
           		    
           		     console.log("start_day : " + start_day);
           		     
           		     var tour_day = data[0].tour_day;  
           		     var tour_num = Number(tour_day)-1;
           		     
           		     
           		     var end_day = start_day.setDate(start_day.getDate() + tour_num);
           	     	 end_day = new Date(end_day);
           	    	 end_day = getFormatDate(end_day);
           		    
           		 
           		     
           		      console.log("엔드 : " + end_day);
           		     
           		     
           		     
           		     $(".full_date_info").html(s_day+"~"+end_day);
           		     $("#plan_title").html(pn_title);
           		     
           		     var user_id = data[0].user_id
           		     
           		  	 //member
           		     $("#plan_member_list_box a").attr("user_id", user_id);
           		  	 
           		  	
           		  	 
           		   }
           		   
           		   
           		 });	
           
           
         		}
          
          
          
     	 
         	 
            
         		
         function getFormatDate(date) {
             var year = date.getFullYear(); //yyyy
             var month = (1 + date.getMonth()); //M
             month = month >= 10 ? month : '0' + month; //month 두자리로 저장
             var day = date.getDate(); //d
             day = day >= 10 ? day : '0' + day; //day 두자리로 저장
             return month + '-' + day;
           }
        
            
            
            function inspot_reload(_pn_srl, _set_day){
                   
         		console.log(_pn_srl +" : "+ _set_day);
              
           		$.ajax({
           		
                 type : 'POST',
                 url : '${pageContext.request.contextPath}/get_plan_inspot',
           /*      headers : {
                   'Content-Type' : 'application/json',
                   'X-HTTP-Method-Override' : 'POST'
                 }, 	 */
                 data : {"pn_srl" : _pn_srl, "set_day" : _set_day},
                 dataType : "JSON",
                 success : function(data, status) {       
                   var mylist =  JSON.stringify(data);
                   var html_5 = "";
                   
                   if( $("#schedule_detail_box div").length < 1){                  	  
                   	console.log("팁 박스 : show");
                   	$("#schedule_detail_box").append("<div class='tip_box'><img src='${pageContext.request.contextPath}/resources/map/images/tip_ko.png' alt='팁 박스'/></div>");               
                   	
                  	}
                  	  
                   hideLine();
             	   
                   $.each(data, function(k, v){
                     
                  
                 	  
                    html_5 += "<div class='day_spot_item ui-draggable' data-set_day='"+v.set_day+"' data='"+(k+1)+"' data-lat='"+v.lat+"' data-lng='"+v.lng+"' >";
              	   	html_5 += "<div class='img_box fl' style='width: 62px; height: 55px;'><img src='"+v.img+"' style='width: 62px; height: 55px;' /></div>";
              	   	html_5 += "<div class='fl info_box'><div class='title'>"+v.title+"</div><div class='read_count'>"+v.read_count+"</div></div><div class='spot_to_inspot' style='display:none'><img src='${pageContext.request.contextPath}/resources/map/images/spot_to_inspot_a.png' /></div><div class='clearfix'></div></div>";
                    

         			$("#schedule_detail_box").html(html_5);
         			
         			$("#schedule_detail_box .day_spot_item").prepend("<div class='deleteBox' style='display:none;'><img src='${pageContext.request.contextPath}/resources/map/images/item_del_icon_a.png' alt='삭제'/></div>");
       			 	$("#schedule_detail_box .day_spot_item").prepend("<div class='set_day_box'><span class='day_sp'>DAY</span><span class='day_num'>"+v.set_day+"</span></div>");
       		
       			
       			 	setTimeout(function(){
       			 	  
       				  create_marker_reg(v.lat,v.lng);
       				}, 1500);
       				
                   
                   });// each   
                   
                
                   
                 }// seccess
           		  
           		});// ajax
           		
            }// function
            
        
            
            // list_category_box 클릭 이벤트
             $(".list_category_box").on("click",'.list_cat_item',function(){
              
              $(this).addClass('on').siblings().removeClass('on');
              closeInfoWindow();
              areaCode = $("#cat_menu li.on").attr("data-ci");
              contentTypeId = $(this).attr("data-c-type");
              
          	/* 	if($(".list_box div").length < 1){
          		  console.log($(".list_box div").length + "랭스");
           		         		  
           		} */
              
         /*      console.log(contentTypeId + "cont 아이디"); */
         		

               
         		$(".list_box").empty();
         		hideMarkers();         		
         		hideMarkers_reg();
         		hideLine();    		
         		
         		get_list(areaCode, contentTypeId);
         		
         		
         		
         		setTimeout(function(){
         		 $("#schedule_detail_box .day_spot_item").each(function(k, v){
          	 	  
          	 	  console.log("실행");
          		 var _lat = $(v).attr("data-lat");
          		 var _lng = $(v).attr("data-lng");
          		  
          		 create_marker_reg(_lat,_lng);
          		  
          		});
          		
            }, 500);
         	
         	 	
         		
         		
         	 
         		
         
            });
            

            
         

        
        
        
        $(window).resize(function() {   
          
          var cat_height = $('#cat_menu').height();
          var map_height = $(window).height() - 74;
          var map_width = $( window ).width() - 790; 
          var _map_width = $( window ).width() - 425;
          
          
          
          $('#full_wrap').css('height', $(window).height() - 74);  
          $('#cat_add_box').css('height', map_height - cat_height - 110 );
          $('#city_list .list_box').css('height',map_height - 245);
          $('#schedule_detail_box').css('height',map_height - 141);
          $('#right_full_box').css('width',_map_width);
          $('#map').css('width', map_width + 'px' );
       	  $('#map').css('height', map_height + 'px' );       			
       	  setBounds();
       	  console.log(map_height);
          console.log(cat_height+"win_cat");
          map.relayout();
          
          
        }); 
        
        var moveLatLon = new kakao.maps.LatLng(36.2683, 127.6358);
        map.setCenter(moveLatLon); 
        map.relayout();
        
        
        $('#plan_title').mouseover(function(){
        	if($(this).hasClass('on')){
        		$('#plan_title').css('background','');
        		$('#plan_title').css('background-color','#fff');
        	}else{
        		$('#plan_title').css('background','url("${pageContext.request.contextPath}/resources/map/images/title_edit_btn.png") no-repeat right 10px top 12px');
        		$('#plan_title').css('background-color','#ededed');
        	}

        });

        $('#plan_title').mouseout(function(){
        	$('#plan_title').css('background','');
        	$('#plan_title').css('background-color','#fff');
        });
        
        $("#plan_title").click(function(e){
          
          if($(e.target).is('.pn_title_chg_ok')){
            
       		 e.stopPropagation();
       		 _this_val = $('#plan_title input').val();
       			
       			$.ajax({
       			  type : 'POST',
       			  url : "${pageContext.request.contextPath}/set_plan_info",
       			  data : {"pn_srl" : pn_srl, "pn_title" : _this_val },
       			  success : function(data){
       			    
       			    console.log(data);
       			    
       			   $('#plan_title').html(_this_val);
         			$('#plan_title').removeClass('on');   			    
       			    
       			  }
       			  
       			});
       			
       			
    			return;    			
          }   
          
          if($(this).hasClass('on')){
            
          } else{
          		$(this).addClass('on');
        		_this_txt = $(this).text();
        		_this_html = '<input type="text" value="'+_this_txt+'" class="pn_title_input_box"><div style="font-size: 10px;position:absolute;top: 24px;left: 353px;color:##808080" id="pl_title_cnt">'+_this_txt.length+'/20</div><button class="pn_title_chg_ok">확인</button>';
        		$('#plan_title').html(_this_html);
          }         
          	
          
        });

        
        $('#plan_title').on('keydown', '.pn_title_input_box', function(){
        	title_cnt = $(this).val().length;
        	if(title_cnt > 20){
        		$(this).val($(this).val().substring(0,20));
        	}
        	if(title_cnt < 20){
        		$('#pl_title_cnt').html(title_cnt+'/20');
        	}else{
        		$('#pl_title_cnt').html('20/20');
        	}

        });
        
        
        
        
        $("#city_list .list_cat_item").click(function(){
         
          _pre_img = $('.list_cat_item.on img').attr('src');
          _pre_change_img = _pre_img.replace('_c','_a');
          $('.list_cat_item.on img').attr('src',_pre_change_img);
          $('.list_cat_item.on').removeClass('on');
          
          _this_img = $(this).find('img').attr('src');
          _this_change_img = _this_img.replace('_a','_c');
          $(this).find('img').attr('src',_this_change_img);  
          $(this).addClass('on');
          
          
        });
        
        
        
        
        
        
        // 시작시 DAY1의 마커 출력
        
          setTimeout(function() {
            var areaCode = $("#cat_menu li.on").attr("data-ci");
            contentTypeId = $(".list_category_box div.on").attr("data-c-type");
            
        	console.log(areaCode);
        	console.log(contentTypeId + "콘텐츠 타입 아이디");
        	
        	get_list(areaCode, contentTypeId);
        	
        	
        	var set_day = $("#cat_menu li.on").attr("data");
        	
        
          }, 500);
  
        
          
         var markers = [];
         var markers_reg = [];
         var lines = [];
         var linePath = [];
        
        function get_list(_areaCode, _contentTypeId){ 
          
          var html_4 ="";   
          var _contentId = 0;
          var pointers = [];          
          bounds = new kakao.maps.LatLngBounds();          
          
          console.log(_areaCode + ": _area");
          console.log(_contentTypeId + ": _contentTypeId");
          $.ajax({
            type : 'POST',
            url : '${pageContext.request.contextPath}/getCityList',
      /*      headers : {
              'Content-Type' : 'application/json',
              'X-HTTP-Method-Override' : 'POST'
            }, 	 */
            data : {"areaCode" : _areaCode, "contentTypeId" : _contentTypeId},            
            success : function(data, status) {     
            	
          	    var Mydata = JSON.parse(data);              	
            	console.log(Mydata);            	
            	var Myitem = Mydata.response.body.items.item;
    
            	$.each(Myitem, function(key, val){              	 
            	        	
             		
            		/*  속도 문제로 사용 불가
                 		
                     		_contentId = val.contentid;    		
                     		
                      		// 받아온 지역의 상세 정보              		  
                   			$.ajax({
                     		 type : 'POST',
                     		 url : '${pageContext.request.contextPath}/get_detail_area',
                     		 data : { "contentId" : _contentId },
                     		 success : function(detailData){
                     		   
                     		  var MyDetailData = JSON.parse(detailData);         		           		          
                     		   var MyDetail = MyDetailData.response.body.items.item;          		   		 
                     			 console.log(MyDetailData);        		   
                     		 }
                     		  
                     		});       				
                   			
                    */
                    
        
        
         		if(val.firstimage2 == null ){
       	   		val.firstimage2 = "${pageContext.request.contextPath}/resources/map/images/none_img.jpg";          		  
           		} 		
        				
        		
      			html_4 += "<div class='day_spot_item ui-draggable' data-set_day='0' data='"+key+"' spot_count='"+key+"' data-areaCode='"+val.areacode+"' data-contentId='"+val.contentid+"' data-contentTypeId='"+val.contenttypeid+"' data-lat='"+val.mapy+"' data-lng='"+val.mapx+"' >";
     	   		html_4 += "<div class='img_box fl'><img src='"+val.firstimage2+"' /></div>";
     	   		html_4 += "<div class='fl info_box'><div class='title'>"+val.title+"</div><div class='read_count'>조회수 : "+val.readcount+"</div></div><div class='spot_to_inspot'><img src='${pageContext.request.contextPath}/resources/map/images/spot_to_inspot_a.png' /></div><div class='clearfix'></div></div>";
   
     	   	
     	   		$(".list_box").html(html_4);
     	   		
     	   		
     	  	 	create_marker(key, val.firstimage2, val.title, val.readcount,val.mapy, val.mapx);
     	  	 	
     	  	 	
     	  	 	
          	
     	   		// 위치 조정이 가능한 테이블
     	   		$(function(){
     	   		  $("#schedule_detail_box").sortable({
     	   		  placeholder:"itemBoxHighlight",
     	   		  revert:false,
     	   		  scroll: false,     	   	
     	   		  items : '.day_spot_item',
     	   		  start : function(e, ui){
     	   		  $(ui.item).css("width", 264);     	   		  
     	   		  },
     	   		  stop : function(e, ui){     	   		    
     	   		   	
     	   		  $(ui.item).css("width", "auto");
     	   		     
     	   /* 		  var markerImage = new kakao.maps.MarkerImage(
                  '${pageContext.request.contextPath}/resources/map/images/marker_img_g.png',
                  new kakao.maps.Size(40, 40));
             		index = $(ui.item).attr("spot_count");	       	    
           	 		markers[index].setZIndex(99);
       	   	 		markers[index].setImage(markerImage);
       	   	 		
       	   	 		$(ui.item).attr("marker_count", 2); */
       	   	 		
       	   	 /* 		
       	   	 		
       	   	 	var _lat =  $(ui.item).attr('data-lat');
  	  			var _lng =  $(ui.item).attr('data-lng');     	   	 	
  	  			 */
       	   	   
       	   	                  
  	  			
  	  			
  	  			closeInfoWindow();
       	   	 		
       	   	 		
     	   		
     	           }, // stop 기능 	   		 
  					update : function(e, ui){  	
  					  
  					   hideMarkers_reg();
  					   hideLine();
  					   
  					   $("#schedule_detail_box .day_spot_item").each(function(k, v){
    					    
  					  	  var area_code = $(v).attr('data-areacode');
  					  	/*   console.log("area_code : "+area_code); */
    					  var content_id = $(v).attr('data-contentid');
    					/*   console.log("content_id : " + content_id); */
    					  
    					  var content_type_id = $(v).attr('data-contenttypeid');  					  
    					  var jj = 1;
    	        		  $('#schedule_detail_box .day_spot_item').each(function(ii, val) {
    	             	  $(this).attr('data',jj);
    	            		  jj++;
    	        		  });   
    	        		  
    	        		  var list_num = $(v).attr('data');	// list 순서    	        		  
    	  				  var set_day = $('#cat_menu li.on').attr('data');
    	  				  
    	        		  
    	  				  var set_day_date = $(v).attr('data-set_day', set_day);
    	  				  var _lat =  $(v).attr('data-lat');
    	  				  var _lng =  $(v).attr('data-lng');
    	  				  
    	  				  var img = $(v).find(".img_box img").attr("src");
    	  				  var title = $(v).find(".info_box .title").text();
    	  				  var read_count = $(v).find(".info_box .read_count").text();		 
    	  				 
    	  				 /*   var cur_day = ui.item.attr('data-set_day', set_day); */ // 오브젝트 타입으로 출력 실행 X   	  				  
    	        		  
    	        		 set_plan_inspot(pn_srl, set_day, list_num, _lat, _lng, img, title, read_count); 	  				 
    	        		 create_marker_reg(_lat,_lng);  
    	  				 
    	        		 
  						  }); // each

  						}// update
     	           
     	   			  });// sortable end
     	   		  
     	   			}); // function
           
     	   		
     	   	  		var index = 0;
     	 	 	  // draggable
    			  $(".list_box .day_spot_item").draggable({					
					  revert: false,
					  connectToSortable: "#schedule_detail_box",
					  helper: "clone",					  
					  start:function(e, ui){
					    
					       
					    
					    console.log(ui);
					    $('#schedule_detail_box .tip_box').hide();
					    $(ui.helper).removeClass("hover");
					    $(ui.helper).find('.spot_to_inspot').hide();
					  	$(ui.helper).find('.img_box').css('width',62);
						$(ui.helper).find('.img_box').css('height',55);
						$(ui.helper).find('.img_box img').css('width',62);
						$(ui.helper).find('.img_box img').css('height',55);
					
						
					  },
					  drag : function(e, ui){		    
					   
					    
					  },
					  stop :function(e, ui){    				    
					   		
						var set_day = $('#cat_menu li.on').attr('data');
						$(".list_box .day_spot_item").removeClass("hover");
						$(ui.helper).prepend("<div class='deleteBox'><img src='${pageContext.request.contextPath}/resources/map/images/item_del_icon_a.png' alt='삭제'/></div>");
						$(ui.helper).prepend("<div class='set_day_box'><span class='day_sp'>DAY</span><span class='day_num'>"+set_day+"</span></div>");
			
					  }
					  
				
					 
				
    			  }).disableSelection();
     	   		
     	    	bounds.extend(new kakao.maps.LatLng(val.mapy, val.mapx));        
     	    	map.setBounds(bounds);
     	    	
         	   	
            	});
            	
            }
            
      	  });
     
        }  // end get_list 

      
        
      	$(".list_box").on('mouseenter','.day_spot_item',function(){     	  
	     	  
      	
      	  
         	var markerImage = new kakao.maps.MarkerImage(
              '${pageContext.request.contextPath}/resources/map/images/marker_img_over.png',
              new kakao.maps.Size(40, 40));
      	  
      	  
      	  
         	index = $(this).attr("data");       	    
       	 	markers[index].setZIndex(99);
   	   	 	markers[index].setImage(markerImage);
   	   	 	
   	   	 	
   	   	});
        
        
     	$(".list_box").on('mouseleave','.day_spot_item',function(){
     	  
     	  
      		var markerImage = new kakao.maps.MarkerImage(
            '${pageContext.request.contextPath}/resources/map/images/marker_img.png',
            new kakao.maps.Size(40, 40));
     	    var index = $(this).attr("data");	 
     		markers[index].setZIndex(1);
 	   	 	markers[index].setImage(markerImage);
 	   	 	
 	   	 	
 	  	 	});
		    
     	
        
        
    
   			
   	   		
   	   	$("#schedule_detail_box").on('mouseenter','.day_spot_item',function(){
   	   	 	$(this).find('.deleteBox').show();    	   	  
   	   	});
   	   	
   	  	$("#schedule_detail_box").on('mouseleave','.day_spot_item',function(){
   	   	 	$(this).find('.deleteBox').hide();    	   	  
   	   	});
        
        
        $("#schedule_detail_box").on('click', '.deleteBox',function(){      
        		 
 	   			
 	   			var set_day_del = $("#cat_menu li.on").attr("data"); 	   		
 	 
 	   			var day_spot_item_cnt = $('#schedule_detail_box .day_spot_item').length;
	   		 	 
				 console.log("데이 카운트 : " + day_spot_item_cnt);
				 
			 
			   var index_data = $(this).parent().attr('data')-1;
			   
			   console.log("index data : " + index_data);
			   console.log("렝스 : " + markers_reg.length);
		
			   
			   del_plan_list(pn_srl, set_day_del);
			   $(this).parent().remove();
			   
			   
	 		    if(day_spot_item_cnt == 0){
	 		 	    
			    	if($("#schedule_detail_box").hasClass("tip_box") === false){
          
          				$("#schedule_detail_box").append("<div class='tip_box'><img src='${pageContext.request.contextPath}/resources/map/images/tip_ko.png' alt='팁 박스'/></div>");
          				$(".tip_box").show(); 
          				
        			}else{
        			  
        			  $(".tip_box").show();
        			  
        			}
			    	
			    	$(".tip_box").show();
				    
				  }		
	 		    
	 		   hideMarkers_reg();
	 		   hideLine();
	 		    
	 	 
		   $("#schedule_detail_box .day_spot_item").each(function(k, v){		
		     
			 var set_day = $("#cat_menu li.on").attr("data");
			 var jj = 1;
			  $('#schedule_detail_box .day_spot_item').each(function(ii, val) {
       	  	  $(this).attr('data',jj);
      		  jj++;
  		 	 });  
   			 var list_num = $(v).attr("data");
			 var _lat = $(v).attr("data-lat");
   			 var _lng = $(v).attr("data-lng");
   			 var img = $(v).find(".img_box img").attr("src");
		     var title = $(v).find(".info_box .title").text();
		     var read_count = $(v).find(".info_box .read_count").text();	
   			 
			 set_plan_inspot(pn_srl, set_day, list_num, _lat, _lng, img, title, read_count);  
			 
			 create_marker_reg(_lat,_lng);
			 
			 }); // each	 		
 	   		
			
			 
 	   		}); // .deleteBox click
  	   	
        

 	   		function del_plan_list(pn_srl, _set_day){
 	   		  
 	   		  
 	   		  $.ajax({
 	   		  type : 'POST',
       		  url : '${pageContext.request.contextPath}/del_plan_inspot',
   		  	  data : {"pn_srl" : pn_srl, "set_day" : _set_day },
   		  	  success : function(del_data){
   		  	    console.log("del 성공 : " + del_data);
   		  	       		  	    
   		  	    
   		  	  }  		    

 	   		  });
 	   		   
 	   		   	   		       	   		  
 	   		}  // del_plan_list
        
 	   		
 	   		
        
        // plan_update()
        
        function set_plan_inspot(pn_srl, set_day, list_num, _lat, _lng, img, title, read_count){
          
          
          $.ajax({
           	url : '${pageContext.request.contextPath}/set_plan_inspot',
           	type : "POST",
           	data : {"pn_srl" : pn_srl,"set_day" : set_day, "list_num" : list_num, "lat" : _lat, "lng" : _lng, "img" : img ,"title" : title, "read_count" : read_count}, 	
           	success : function(data){
           	           	  
           	  console.log("업데이트 완료 " + data);
           	  
           	  
           	}
           	
           	
           	  
          	});
          
         
        }
     	
        
        var clusterer = new kakao.maps.MarkerClusterer({
          map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
          averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
          minLevel: 10 // 클러스터 할 최소 지도 레벨 
   		});
        
        
        // inspot_list 마커 추가
      
        function create_marker_reg(_lat,_lng){
          // 마커 이미지의 이미지 주소입니다   		
  	   		 var imageSrc = "${pageContext.request.contextPath}/resources/map/images/marker_img_g.png"; 
  	   		
  	           
  	          //마커 이미지의 이미지 크기 입니다  
  	          var imageSize = new kakao.maps.Size(40, 40);
  	          //마커 이미지를 생성합니다    
  	          var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
  	          
  	          var marker_position = new kakao.maps.LatLng(_lat, _lng);
  	          var marker_reg = new kakao.maps.Marker({
  	            position: marker_position, // 마커를 표시할 위치
  	            image : markerImage, // 마커 이미지           
  	         	});
  	          
  	         	marker_reg.setMap(map);
     	   	 	markers_reg.push(marker_reg);       	   	 	    
   	   		    console.log("마커 추가");    	   		     
   	   		    marker_reg.setZIndex(100);
   	   		    
   	   		    
   	   		linePath.push(marker_position);
   	     	
  	          	
   	   		var polyline = new kakao.maps.Polyline({
   	   	    path: linePath, // 선을 구성하는 좌표배열 입니다
   	   	  	endArrow: true,   	   	  
   	   	    strokeWeight: 5, // 선의 두께 입니다
   	   	    strokeColor: 'red', // 선의 색깔입니다
   	   	    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
   	   	    strokeStyle: 'solid' // 선의 스타일입니다
   	   		});
   	   		
   	   		
   	   		polyline.setZIndex(1000);
   	   		polyline.setMap(map); 
   	   		lines.push(polyline);
   	   		console.log("폴리라인 zindex : " + polyline.getZIndex());
          
        }
        
        var info_array = []; 
        
        function create_marker(_data,_img,_title,_readcount,_lat, _lng){      
      	 
          
          // 마커 이미지의 이미지 주소입니다   		  
   		
   		 var imageSrc = "${pageContext.request.contextPath}/resources/map/images/marker_img.png"; 
   		
           
          //마커 이미지의 이미지 크기 입니다  
          var imageSize = new kakao.maps.Size(40, 40);
          //마커 이미지를 생성합니다    
          var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
          
          var marker_position = new kakao.maps.LatLng(_lat, _lng);
          var marker = new kakao.maps.Marker({
            position: marker_position, // 마커를 표시할 위치
            image : markerImage, // 마커 이미지           
         });
          
 
          
   	          
  	   	  setBounds();	
          
          markers.push(marker);
          
          clusterer.clear();
          clusterer.addMarkers(markers);
          map.relayout();
          
          
          
      	  // 마커에 마우스오버 이벤트를 등록합니다
          kakao.maps.event.addListener(marker, 'mouseover', function() {
          		var markerImage = new kakao.maps.MarkerImage(
                '${pageContext.request.contextPath}/resources/map/images/marker_img_over.png',
                new kakao.maps.Size(40, 40));         
          		marker.setZIndex(99);
          		marker.setImage(markerImage);
              
          });

          // 마커에 마우스아웃 이벤트를 등록합니다
          kakao.maps.event.addListener(marker, 'mouseout', function() {
            var markerImage = new kakao.maps.MarkerImage(
                '${pageContext.request.contextPath}/resources/map/images/marker_img.png',
                new kakao.maps.Size(40, 40));  
           	    marker.setZIndex(1);
          		marker.setImage(markerImage);
          });
      
          
          var cusContent = '<div class="info_win"><div class="info_close_btn"><img src="${pageContext.request.contextPath}/resources/map/images/close-btn.png" alt="인포윈도우 닫기"/></div><div class="info_img"><img src="'+_img+'" /></div><br><div class="info_title">'+_title+'</div></div>'; 
          // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
          var cusPosition = new kakao.maps.LatLng(_lat, _lng); //인포윈도우 표시 위치입니다

      // 인포윈도우를 생성합니다
      var customOverlay = new kakao.maps.CustomOverlay({
    		 position: cusPosition,
   			 content: cusContent,
   			 xAnchor: 0.5,
   			 yAnchor: 1.4
		});
          
          
        
      info_array.push(customOverlay);
          

      

          
          
          // 마커에 클릭이벤트를 등록합니다                    
            kakao.maps.event.addListener(marker, 'click', function() {
 
              console.log(_data);
              closeInfoWindow();
              
              $('.day_spot_item').removeClass('hover');
              $(".list_box .day_spot_item[data="+_data+"]").addClass("hover");
             var scrollh = $(".list_box").scrollTop()+$(".list_box .day_spot_item[data="+_data+"]").offset().top;
              console.log(scrollh);
              $('.list_box').animate({
                scrollTop: scrollh-350}, 500);
              // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
             
              customOverlay.setMap(map); 
              customOverlay.setZIndex(100);
              
              
              
              $(".info_close_btn").on('click', function(){          
                console.log("닫기 실행");
                closeInfoWindow();
              });
              
             
            });
      		
        
        } // create_marker       
        
        

     		
        function closeInfoWindow() {
       		for(var idx=0; idx<info_array.length; idx++){
       		 info_array[idx].setMap(null);
       		 }
        }
    
          
        

        
        
        function setBounds() {
          // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
          // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
          map.setBounds(bounds);
     	}
        
     
  	   // "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
        function hideMarkers() {
          for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }            
            markers = [];
        }   
  	   	
  	   
        function hideLine() {
          
          for (var i = 0; i < lines.length; i++) {
            lines[i].setMap(null);
        }   
          	 linePath= [];
         	 lines = [];	
          
        }   
  	   
        // "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
        function hideMarkers_reg() {
          for (var i = 0; i < markers_reg.length; i++) {
            markers_reg[i].setMap(null);
        }            
            markers_reg = [];
            
        }   
  	   
  	   
      $("#plan_out_btn").on('click',function(){
        window.location ='${pageContext.request.contextPath}/planlist;'			  	   	 		   
   	   });
  	   
  	   
  	   
  	   
  	   
  	   $("#plan_complete_btn").on('click',function(){
  	     var pn_complete = 1;
  	     $.ajax({
   			  type : 'POST',
   			  url : "${pageContext.request.contextPath}/set_plan_info_com",
   			  data : {"pn_srl" : pn_srl, "pn_complete" : pn_complete },
   			  success : function(data){
   			    
   			    console.log("일정 등록 성공");
   			   window.location ='${pageContext.request.contextPath}/planlist';
   			     			    
   			    
   			  }
   			  
   			});
  	   
  	   
  	   });
  	   
  	   
        
  	 
  	   	
  	   
  	   

      
  	 	});
 			 
 	 
    </script>
     
</body>
</html>