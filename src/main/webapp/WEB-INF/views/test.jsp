<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

      [{
    num: "0",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "37.56653500",
    ci_lng: "126.97796920",
    ci_name: "서울",
    ci_srl: "310",
    is_state: "0",
    link: "/ko/city/seoul_310"
  }, {
    num: "1",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "35.17955430",
    ci_lng: "129.07564160",
    ci_name: "부산",
    ci_srl: "311",
    is_state: "0"
  }, {
    num: "2",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "33.48901130",
    ci_lng: "126.49830230",
    ci_name: "제주도",
    ci_srl: "312",
    is_state: "0"
  }, {
    num: "3",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "37.45625570",
    ci_lng: "126.70520620",
    ci_name: "인천",
    ci_srl: "10202",
    is_state: "0"
  }, {
    num: "4",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "36.35041190",
    ci_lng: "127.38454750",
    ci_name: "대전",
    ci_srl: "10203",
    is_state: "0"
  }, {
    num: "5",
    ci_ct: "as",
    ci_cu: "205",   
    ci_lat: "35.87143540",
    ci_lng: "128.60144500",
    ci_name: "대구",
    ci_srl: "10204",
    is_state: "0" 
  }, {
    num: "6",
    ci_ct: "as",
    ci_cu: "205",
    
    ci_lat: "35.15954540",
    ci_lng: "126.85260120",
    ci_name: "광주",
    ci_srl: "10205",
    is_state: "0"
  }, {
    num: "7",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "35.53837730",
    ci_lng: "129.31135960",
    ci_name: "울산",
    ci_srl: "10206",
    is_state: "0"
  }, {
    num: "8",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "36.56561174",
    ci_lng: "127.25826405",
    ci_name: "세종특별자치시",
    ci_srl: "10207",
    is_state: "0"
  }, {
    num: "9",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "37.41380000",
    ci_lng: "127.51830000",
    ci_name: "경기도",
    ci_srl: "10208",
    is_state: "1"
  }, {
    num: "10",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "37.82280000",
    ci_lng: "128.15550000",
    ci_name: "강원도",
    ci_srl: "10209",
    is_state: "1"
  }, {
    num: "11",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "36.51840000",
    ci_lng: "126.80000000",
    ci_name: "충청북도",
    ci_srl: "10210",
    is_state: "1"
  }, {
    num: "12",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "36.51840000",
    ci_lng: "126.80000000",
    ci_name: "충청남도",
    ci_srl: "10211",
    is_state: "1"
  },{
    num: "13",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "36.49190000",
    ci_lng: "128.88890000",
    ci_name: "경상북도",
    ci_srl: "10212",
    is_state: "1"
  },{
    num: "14",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "35.46060000",
    ci_lng: "128.21320000",
    ci_name: "경상남도",
    ci_srl: "10213",
    is_state: "1"
  },{
    num: "15",
    ci_ct: "as",
    ci_cu: "205",
    ci_lat: "35.71750000",
    ci_lng: "127.15300000",
    ci_name: "전라북도",
    ci_srl: "10214",
    is_state: "1"
  },{
    num: "16",
    ci_ct: "as",
    ci_cu: "205", 
    ci_lat: "34.86790000",
    ci_lng: "126.99100000",
    ci_name: "전라남도",
    ci_srl: "10215",
    is_state: "1"
  }]
  
  
      
  [
    {       
      content: '<div class="overlay_info"><a href="#" target="_blank"><strong>서울</strong></a></div>',
      latlng: new kakao.maps.LatLng(37.57158975332472, 126.97500593020641)
    },
    {
      content: '<div class="overlay_info"><a href="#" target="_blank"><strong>인천</strong></a></div>',
        latlng: new kakao.maps.LatLng(37.39807592919139, 126.64836214240285)
    },
    {
      content: '<div class="overlay_info"><a href="#" target="_blank"><strong>경기도</strong></a></div>', 
        latlng: new kakao.maps.LatLng(37.389650484713194, 127.45494554570055)
    },
    {
      content: '<div class="overlay_info"><a href="#" target="_blank"><strong>강원도</strong></a></div>',
        latlng: new kakao.maps.LatLng(37.734401740867135, 128.25858071936105)
    },
    {
      content: '<div class="overlay_info"><a href="#" target="_blank"><strong>세종특별자치도</strong></a></div>',
      latlng: new kakao.maps.LatLng(36.596745337222245, 127.2442567967302)
  },
  {
   content: '<div class="overlay_info"><a href="#" target="_blank"><strong>충청남도</strong></a></div>',
    latlng: new kakao.maps.LatLng(37.389650484713194, 127.45494554570055)
  },
  {
    content: '<div class="overlay_info"><a href="#" target="_blank" onclick="return detailMap()"><strong>대전</strong></a></div>',
    latlng: new kakao.maps.LatLng(36.384073459322074, 127.40336723778067)
  },
  {
    content: '<div class="overlay_info"><a href="#" target="_blank"><strong>대구</strong></a></div>',
  latlng: new kakao.maps.LatLng(35.89371796950961, 128.63706544964955)
  },
  {
    content: '<div class="overlay_info"><a href="#" target="_blank"><strong>경상북도</strong></a></div>',
  latlng: new kakao.maps.LatLng(36.41967658149347, 128.63662188277746)
  },
  {
    content: '<div class="overlay_info"><a href="#" target="_blank"><strong>전라북도</strong></a></div>',
  latlng: new kakao.maps.LatLng(35.73851422529076, 127.24160826393657)
  },
  {
    content: '<div class="overlay_info"><a href="#" target="_blank"><strong>경상남도</strong></a></div>',
  latlng: new kakao.maps.LatLng(35.536371574678014, 128.4378400693527)
  },
  {
    content: '<div class="overlay_info"><a href="#" target="_blank"><strong>울산</strong></a></div>', 
  latlng: new kakao.maps.LatLng(35.534933355684174, 129.33953568856882)
  },
  {
    content: '<div class="overlay_info"><a href="#" target="_blank"><strong>부산</strong></a></div>', 
  latlng: new kakao.maps.LatLng(35.21235193421015, 129.06601543367506)
  },
  {
    content: '<div class="overlay_info"><a href="#" target="_blank"><strong>광주</strong></a></div>', 
  latlng: new kakao.maps.LatLng(35.169898592318745, 126.85071204765305)
  },
  {
    content: '<div class="overlay_info"><a href="#"_blank"><strong>전라남도</strong></a></div>', 
    latlng: new kakao.maps.LatLng(34.948463177582255 , 126.96321652718458)
  },
  {
    content: '<div class="overlay_info"><a href="#" target="_blank"><strong>제주도</strong></a></div>', 
    latlng: new kakao.maps.LatLng(33.4417659753342  , 126.54538953762496 )
  }
  
]; 

  