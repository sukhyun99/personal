<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��������</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68583abf1012481a1d352ae8faf71f26"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
</script>
<script type="text/javascript">
	$(document).ready(function(){
		var csl = ${csl};		
		var container = document.getElementById('map'); //������ ���� ������ DOM ���۷���
		var options = { //������ ������ �� �ʿ��� �⺻ �ɼ�
			center : new daum.maps.LatLng(36.823687, 127.990077), //������ �߽���ǥ.
			level : 12 //������ ����(Ȯ��, ��� ����)
		};		
		var map = new daum.maps.Map(container, options); //���� ���� �� ��ü ����		
		for (var i = 0; i < csl.length; i++) {
			// ��Ŀ�� �����մϴ�
			var marker = new daum.maps.Marker({
				map : map, // ��Ŀ�� ǥ���� ����
				position : new daum.maps.LatLng(csl[i].latitude, csl[i].longitude) // ��Ŀ�� ǥ���� ��ġ
			});			
			
			var iwPosition = new daum.maps.LatLng(csl[i].latitude, csl[i].longitude); //���������� ǥ�� ��ġ�Դϴ�
			var iwContent = [
		        '<div class="iw_inner">',
		        '   <h2>'+csl[i].campName+'</h2>',
		        '   <p>'+csl[i].campAddr+'<br /> ��ȭ��ȣ: ',		        
		        +csl[i].campPhone+'   ����: '+csl[i].price+'<br />',		        
		        '   </p>',
		        '</div>'
		    ].join('');
			//���������츦 �����մϴ�
			var infowindow = new daum.maps.InfoWindow({
			position : iwPosition,
			content : iwContent
			});			
	 		// ��Ŀ ���� ���������츦 ǥ���մϴ�. �ι�° �Ķ������ marker�� �־����� ������ ���� ���� ǥ�õ˴ϴ�
			infowindow.open(map);
		};
	})
</script>
</head>
<body>
	<div id="map" style="width: 50%; height: 850px; left: 950px"></div>
</body>
</html>