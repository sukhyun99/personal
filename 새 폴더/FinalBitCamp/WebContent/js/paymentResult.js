/**
 * 
 */

function settingInfo(bookingInfo, nights_days, mileage, payment_method) {

	//예약정보 리스트 생성
	$('.booking-info-list').append($('<li>', {
		text : '예약번호'
	}).append($('<span>', {
		text : bookingInfo.bookingNum
	}))

	).append($('<li>', {
		text : '예약일자'
	}).append($('<span>', {
		text : bookingInfo.bookingDate
	}))
	).append($('<li>', {
		text : '예약자명'
	}).append($('<span>', {
		text : bookingInfo.name
	}))
	).append($('<li>', {
		text : '연락처'
	}).append($('<span>', {
		text : bookingInfo.phone
	}))
	).append($('<li>', {
		text : '지불방법'
	}).append($('<span>', {
		text : bookingInfo.payment_method
	}))
	).append($('<li>', {
		text : '체크인날짜'
	}).append($('<span>', {
		text : bookingInfo.chkIn
	}))
	).append($('<li>', {
		text : '체크아웃날짜'
	}).append($('<span>', {
		text : bookingInfo.chkOut
	}))
	).append($('<li>', {
		text : '숙박일수'
	}).append($('<span>', {
		text : nights_days
	}))
	).append($('<li>', {
		text : '캠핑장명'
	}).append($('<span>', {
		text : bookingInfo.campName
	}))
	).append($('<li>', {
		text : '사이트명'
	}).append($('<span>', {
		text : bookingInfo.campSiteName
	}))
	).append($('<li>', {
		text : '사이트 수'
	}).append($('<span>', {
		text : String(bookingInfo.siteQuantity) + '개'
	}))
	).append($('<li>', {
		text : '인원 수'
	}).append($('<span>', {
		text : String(bookingInfo.guestQuantity) + '명'
	}))
	).append($('<li>', {
		text : '총 지불금액'
	}).append($('<span>', {
		text : String(bookingInfo.price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원'
	})));

	$('.theme-payment-success-check-order').append($('<a>', {
		href : "memberMybooking.do",
		text : '마이페이지'
	})).append('에서 주문정보 확인하기.');
	
	
	$('theme-payment-success-check-order').on('click', function(){
		
	})


}