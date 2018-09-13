/**
 * 
 */
function tapMap(lat,lng){
	var container = document.getElementById('daum'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center : new daum.maps.LatLng(lat, lng), //지도의 중심좌표.
		level : 12 //지도의 레벨(확대, 축소 정도)
	};
	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
}