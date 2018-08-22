<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>다음지도</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68583abf1012481a1d352ae8faf71f26"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
</script>
<script type="text/javascript">
	$(document).ready(function(){
		var csl = ${csl};		
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new daum.maps.LatLng(36.823687, 127.990077), //지도의 중심좌표.
			level : 12 //지도의 레벨(확대, 축소 정도)
		};		
		var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴		
		for (var i = 0; i < csl.length; i++) {
			// 마커를 생성합니다
			var marker = new daum.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : new daum.maps.LatLng(csl[i].latitude, csl[i].longitude) // 마커를 표시할 위치
			});			
			
			var iwPosition = new daum.maps.LatLng(csl[i].latitude, csl[i].longitude); //인포윈도우 표시 위치입니다
			var iwContent = [
		        '<div class="iw_inner">',
		        '   <h2>'+csl[i].campName+'</h2>',
		        '   <p>'+csl[i].campAddr+'<br /> 전화번호: ',		        
		        +csl[i].campPhone+'   가격: '+csl[i].price+'<br />',		        
		        '   </p>',
		        '</div>'
		    ].join('');
			//인포윈도우를 생성합니다
			var infowindow = new daum.maps.InfoWindow({
			position : iwPosition,
			content : iwContent
			});			
	 		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
			infowindow.open(map);
		};		
	})
</script>
</head>
<body>
	<div id="map" style="width: 50%; height: 850px; left: 950px"></div>
</body>
</html>