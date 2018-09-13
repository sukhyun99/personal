<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<title>Insert title here</title>
</head>
<body>
<!-- 	<form action="memberGetOneSiteInfo.do" id="parameter-form" -->
<!-- 		method="post"> -->
<%-- 		<input type="hidden" name="payment_method" value="${payment_method }" /> --%>
<%-- 		<input type="hidden" name="siteId" value="${siteId }" /> <input --%>
<%-- 			type="hidden" name="campId" value="${campId }" /> <input --%>
<%-- 			type="hidden" name="sellerId" value="${sellerId }" /> <input --%>
<%-- 			type="hidden" name="chkIn" value="${chkIn }" /> <input type="hidden" --%>
<%-- 			name="chkOut" value="${chkOut }" /> <input type="hidden" --%>
<%-- 			name="campSiteStock" value="${campSiteStock }"> <input --%>
<%-- 			type="hidden" name="guestOverCharge" value="${guestOverCharge }"> --%>
<%-- 		<input type="hidden" name="price" value="${sitePrice }"> <input --%>
<%-- 			type="hidden" name="type" value="${type }"> <input --%>
<%-- 			type="hidden" name="total_price" value="${total_price }"> --%>
<!-- 	</form> -->
	<script type="text/javascript">
	window.onload = function(){
		var IMP = window.IMP; // 생략가능
		IMP.init('imp04857580'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		var bookingInfo = ${bookingInfo}
		IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : bookingInfo.campName+':'+bookingInfo.campSiteName,
		    amount : 100,
		    buyer_email : 'bitamp@bicamp.com',
		    buyer_name : '캠핑스캐너',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 관철동',
		    buyer_postcode : '123-456',
		    m_redirect_url : 'http://localhost:8080/FinalBitCamp/memberPaymentSuccess.do'
 		    		
		}, function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        msg += '결제 방법 : '+ rsp.pay_method;
		        location.href = 'memberPaymentSuccess.do?siteId='+bookingInfo.siteId+'&campId='+bookingInfo.campId+'&phone='+bookingInfo.phone+
		        	'&mileage_type='+bookingInfo.mileage_type+'&chkIn='+bookingInfo.chkIn+'&chkOut='+bookingInfo.chkOut+
		    		'&name='+bookingInfo.name+'&campSiteName='+bookingInfo.campSiteName+'&campSiteStock='+bookingInfo.campSiteStock+'&payment_method='+
		    		rsp.pay_method+'&guest_quantity='+bookingInfo.guest_quantity+'&site_quantity='+bookingInfo.site_quantity+'&sitePrice='+bookingInfo.sitePrice+
		    		'&mileage='+bookingInfo.mileage+'&total_price='+bookingInfo.total_price+'&campName='+bookingInfo.campName+'&type='+bookingInfo.type+
		    		'&nights='+bookingInfo.nights+'&days='+bookingInfo.days
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		        location.href = 'memberGetOneSiteInfo.do?siteId='+bookingInfo.siteId+'&campId='+bookingInfo.campId+
		        		'&chkIn='+bookingInfo.chkIn+'&chkOut='+bookingInfo.chkOut+'&campSiteStock='+bookingInfo.campSiteStock+
		        		'&price='+bookingInfo.sitePrice+'&type='+bookingInfo.type
// 		        var $form = $('#parameter-form');
// 		        $form.submit();
		    }
		    alert(msg);
		});
	};
</script>
</body>
</html>