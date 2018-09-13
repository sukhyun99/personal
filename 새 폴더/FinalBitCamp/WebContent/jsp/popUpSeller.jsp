<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script language="javascript">
	function goPopupSeller() { //seller 주소 입력창 띄우기
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("http://localhost:8080/FinalBitCamp/jsp/popUpSeller.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
	}
	function jusoCall(roadAddrPart1, addrDetail, zipNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.  //seller
		document.getElementById('roadAddrPart1').value = roadAddrPart1;
		document.getElementById('addrDetail').value = addrDetail;
		document.getElementById('zipNo').value = zipNo;
	}
</script>


</head>
<body>
	<div class="form-group">
		<i class="fa fa-check-circle" style="color: orange"></i> <label
			for="text" style="font-size: 1.1em">사업장 주소</label>
		<button class="btn btn-primary"
			onclick="goPopupSeller(); return false;">주소찾기</button>
		<input type="text" class="form-control" value="우편번호" id="zipNo"
			name="zipNo" style="width: 30%">
		<div class="form-inline">
			<input type="text" class="form-control col-sm-4" value="도로명주소"
				id="roadAddrPart1" name="roadAddrPart1" style="width: 50%">
			<input type="text" class="form-control" value="상세주소"
				name="addrDetail" id="addrDetail" style="width: 30%">
		</div>
	</div>
</body>
</html>