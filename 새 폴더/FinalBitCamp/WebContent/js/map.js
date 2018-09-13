/**
 * 
 */
function mapLoad(csl, map){
	for (var i = 0; i < csl.length; i++) {
		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
			map : map, // 마커를 표시할 지도
			position : new daum.maps.LatLng(csl[i].latitude, csl[i].longitude) // 마커를 표시할 위치
		});
		var iwPosition = new daum.maps.LatLng(csl[i].latitude, csl[i].longitude); //인포윈도우 표시 위치입니다
		var iwContent = [
		     '<div class="iw_inner" style="height: 100px; width: 300px;">',
		     '   <h4>'+csl[i].campName+'</h4>',
		     '   <p>'+csl[i].campAddr+'<br /> 전화번호: ',
		     +csl[i].campPhone+' 가격: '+csl[i].price+'<br />',
		     '   </p>',
		     '</div>'
		 ].join('');
	     //인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
// 		position : iwPosition,
		content : iwContent
		});
		daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	 	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다			
	};
	function makeOverListener(map, marker, infowindow) {
		 return function() {
		     infowindow.open(map, marker);
		 };
	}
	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
		 return function() {
		     infowindow.close();
		 };
	}
}