<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=ubYkwNDAOLjTQv2_cVfk"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
</script>
</head>
<body>

<script type="text/javascript">
var length = ${length};
var latitude = [];
var longitude = [];
var list = ${list};
alert(list[0].latitude);
alert(list.length);
// for(var i=0; i<length; i++){
// 	var x = ${list[i].latitude};
// 	alert(x);
// 	latitude.push()
// 	longitude.push(${list[i].longitude})
// }
// document.write(latitude.length);
</script>

</body>
</html>