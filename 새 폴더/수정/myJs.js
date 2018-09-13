/**
 * 
 */

$(document).ready(function() { 
	

	//memberBookingForm_1.jsp
	
//	연락처 입력창 숫자만 입력되게
	$(".ctm-phone").keyup(function() {
		$(this).val($(this).val().replace(/[^0-9]/g, ""));
	});


	
	//사이트수량 및 가격계산
	var pre_order = parseInt($('.site_quantity').val());
	$('.site-num').text(String(pre_order)+'개');
	var site_total_price = parseInt($('.site-price-ex').val());
	var one_site_price = parseInt($('.site-price-ex').val());
	
	$('.site-price').text(String(one_site_price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원');
	
	$('.site_quantity').on('change', function() {
		var new_order = parseInt($('.site_quantity').val());
		var sum = 0;
		$('.site-num').text(String(new_order)+'개');
		site_total_price = (one_site_price * new_order);
		$('.site-price').text(String(site_total_price).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원');
		total_result();
	});

	//인원 수 및 가격계산
	var guest_total_charge = 0;
	var pre_guest = parseInt($('.guest_quantity').val());
	$('.guest-num').text(String(pre_guest) + '명');
	$('.guest-surplus').text('0명');
	$('.guest-overCharge').text('0원');

	
	$('.guest_quantity').on('change', function() {
		var over_guest_sum = 0;
		var campPerson = $('#campPerson-hidden').val();
		var guest_quantity = parseInt($(this).val());
		$('.guest-num').text($(this).val() + '명');
		if (campPerson < guest_quantity) {
			over_guest_sum = (guest_quantity - campPerson);
			guest_total_charge = (guest_quantity - campPerson) * 10000;
		}else{
			over_guest_sum = 0;
			guest_total_charge = 0;
		}
		$('.guest-surplus').text(String(over_guest_sum).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '명');
		$('.guest-overCharge').text(String(guest_total_charge).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원');
		total_result();

	});
	
	
	
		

	
	//마일리지 세팅
	var mileage_total = 0;
	var get_mileage = $('.get-mileage').val();	
	$('.use-mileage').text('0원');
	
	$('.using-mileage').on('change', function(){		// 마일리지 사용 여부 라디오 체크
		var mileage_type = $(this).val();
		if(mileage_type=='1'){
			if(get_mileage < 1000){
				alert('마일리지는 1000원 이상 부터 사용 가능합니다.');
			}else{
				$('#useMile').removeAttr('disabled');
			}
		}else{
			$('#useMile').val('');
			$('#useMile').attr('disabled','disabled');
			mileage_total = 0;
			$('.use-mileage').text('0원');
			$('.availible-mileage').text(get_mileage.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원');
		}
		total_result();
		
	});
	
	$('#useMile').blur(function(){				//마일리지 입력 체크
		var mile = parseInt($(this).val());
		var new_mile = 0;
		if(mile > get_mileage || 0 > mile){
			alert('마일리지를 초과 입력하셨습니다.');
		}else{
			new_mile = (get_mileage - mile);
			mileage_total = mile;
			$('.use-mileage').text(String(mileage_total).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원');
			$('.availible-mileage').text(String(new_mile).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원');
		}
		total_result();
	})
	
	
	total_result();
	
	function total_result(){		//합계 계산
		var result = 0;
		result = (site_total_price + guest_total_charge + mileage_total);
		$('.total-price').text(String(result).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원');
//		console.log('리절트:'+result);
//		console.log('사이트토탈:'+site_total_price+',게스트토탈차지:'+guest_total_charge+',마일리지토탈:'+mileage_total);
		return result;
	}
	
	//BOOK NOW 버튼 누르면 컨틀롤러로 전송 
		$(".btn-book").click(function() {
			
			var nameVal = $(".ctm-name").val();
			var phoneVal = $(".ctm-phone").val();
			if(!nameVal){
				alert('예약자명을 입력 해 주세요.');
			}else if(!phoneVal){
				alert('연락처를 입력 해 주세요.');
			}else if(!$('.icheck_1').is(':checked') || !$('.icheck_2').is(':checked')){
				alert('동의란을 체크해야 예약 진행이 가능합니다.');
			}else{
				var mileageVal = $(":input:radio[name=mileage_type]:checked").val();
				var campIdVal = $(".camp-value").val();
				var siteIdVal = $(".site-value").val();
				var personVal = $(".guest_quantity").val();
				var chkInVal = $(".chkInDate").text();
				var chkOutVal = $(".chkOutDate").text();
				var sellerIdVal = $(".sellerId-value").val();
				var guest_quantityVal = $(".guest_quantity").val();
				var site_quantityVal = $(".site_quantity").val();
				var campSiteStockVal = $("#camp-site-stock").val();
				var sitePriceVal = $(".site-price-ex").val();
				var typeVal = $('.type-value').val();
				var mileage = $('.get-mileage').val();
				var nightsVal = $('.nights').val();
				var daysVal = $('.days').val();
				var get_total = total_result();
				
				alert('마일리지타입:'+mileageVal);
				alert('마일리지:'+mileage);
				alert('캠프아이디'+campIdVal);
				alert('사이트아이디'+siteIdVal);
				alert('이름:'+nameVal);
				alert('폰:'+phoneVal);
				alert('최대인원:'+personVal);
				alert('체크인:'+chkInVal);
				alert('체크아웃'+chkOutVal);
				alert('인원수:'+guest_quantityVal);
				alert('사이트수'+site_quantityVal);
				alert('사이트재고:'+campSiteStockVal);
				alert('사이트가격:'+sitePriceVal);
				alert('타입:'+typeVal);
				alert('토탈가격:'+get_total);
				alert('박수:'+nightsVal+'일수:'+daysVal);
				
				var $form = $('<form></form>');
				$form.attr('action', 'memberBookCampSite.do');
				$form.attr('method', 'post');

				var mileage_type = "<input type='hidden' value='" + mileageVal + "' name='mileage_type'/>";
				var mileage_value = "<input type='hidden' value='" + mileage + "' name='mileage'/>";
				var campId = "<input type='hidden' value='" + campIdVal + "' name='campId'/>";
				var siteId = "<input type='hidden' value='" + siteIdVal + "' name='siteId'/>";
				var name = "<input type='hidden' value='" + nameVal + "' name='name'/>";
				var phone = "<input type='hidden' value='" + phoneVal + "' name='phone'/>";
				var campPerson = "<input type='hidden' value='" + personVal + "' name='campPerson'/>";
				var chkIn = "<input type='hidden' value='" + chkInVal + "' name='chkIn'/>";
				var chkOut = "<input type='hidden' value='" + chkOutVal + "' name='chkOut'/>";
				var guest_quantity = "<input type='hidden' value='" + guest_quantityVal + "' name='guest_quantity'/>";
				var site_quantity = "<input type='hidden' value='" + guest_quantityVal + "' name='site_quantity'/>";
				var campSiteStock = "<input type='hidden' value='" + campSiteStockVal + "' name='campSiteStock'/>";
				var price = "<input type='hidden' value='" + sitePriceVal + "' name='price'/>";
				var guest_total_price = "<input type='hidden' value='" + get_total + "' name='total_price'/>";
				var nights = "<input type='hidden' value='" + nightsVal + "' name='nights'/>"
				var days = "<input type='hidden' value='" + daysVal + "' name='days'/>"
				var type = "<input type='hidden' value='" + typeVal + "' name='type'/>"
				
				$form.append(days);
				$form.append(nights);
				$form.append(mileage_value);
				$form.append(mileage_type);
				$form.append(campId);
				$form.append(siteId);
				$form.append(name);
				$form.append(phone);
				$form.append(campPerson);
				$form.append(chkIn);
				$form.append(chkOut);
				$form.append(guest_quantity);
				$form.append(site_quantity);
				$form.append(campSiteStock);
				$form.append(guest_total_price);
				$form.append(price);
				$form.append(type);
				$form.appendTo('body');
				$form.submit();
			}
		});


		



}); //ready