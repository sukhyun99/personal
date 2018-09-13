<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8"/> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
	
    <link rel="stylesheet" href="css/font-awesome.css"/>
    <link rel="stylesheet" href="css/lineicons.css"/>
    <link rel="stylesheet" href="css/weather-icons.css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/styles.css"/>
    <link rel="stylesheet" href="css/mystyles.css"/>
 
     <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" 
    integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    
      
<title>예약정보</title>

</head>
<body>
<%-- 	<input type="hidden" name="sellerId" class="sellerId-value" value="${sellerId }"> --%>
	<input type="hidden" class="get-mileage">
	<input type="hidden" class="nights" value="${nights }">
	<input type="hidden" class="days" value="${days }">
	 <nav class="navbar navbar-default navbar-inverse navbar-theme" id="main-nav">
      <div class="container">
        <div class="navbar-inner nav">
          <div class="navbar-header">
            <button class="navbar-toggle collapsed" data-target="#navbar-main" data-toggle="collapse" type="button" area-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="main.do">
              <i class="far fa-compass fa-lg"></i>
              <span>캠핑스캐너</span>
            </a>
          </div>
          <div class="collapse navbar-collapse" id="navbar-main">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="#">내 캠핑장 등록</a></li>
              <li><a href="#">고객센터</a></li>
              <li><a href="#">로그인</a></li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    
   
    <div class="theme-page-section theme-page-section-lg">
      <div class="container">
        <div class="row row-col-static row-col-mob-gap" id="sticky-parent" data-gutter="60">
          <div class="col-md-8">
            <div class="theme-payment-page-sections">
<!--               <div class="theme-payment-page-sections-item" > -->
<!--                 <div class="theme-payment-page-signin"> -->
<!--                    <i class="fas fa-user-circle fa-3x"></i> -->
<!--                   <div class="theme-payment-page-signin-body"> -->
<!--                     <h4 class="theme-payment-page-signin-title">Sign in if you have an account</h4> -->
<!--                     <p class="theme-payment-page-signin-subtitle">We will retrieve saved travelers and credit cards for faster checkout</p> -->
<!--                   </div> -->
<!--                   <a class="btn theme-payment-page-signin-btn btn-primary" href="#">Sign in</a> -->
<!--                 </div> -->
<!--               </div> -->
              <div class="theme-payment-page-sections-item">
                <div class="theme-search-results-item theme-payment-page-item-thumb">
                  <div class="row" data-gutter="20">
                    <div class="col-md-9 ">
                    <h3 class="theme-payment-page-sections-item-title">예약정보확인</h3>
                    	<div class="row">
<!--                     	<i class="fa fa-home theme-search-results-item-room-feature-list-icon"></i> -->
                      	<h5 class="theme-search-results-item-title theme-search-results-item-title-lg col-md-10 camp-name" name="campSiteName"></h5>
                      	<p class="col-md-6 site-name"></p>
                    	</div>

                      <ul class="theme-search-results-item-room-feature-list">
<!--                         <li> -->
<!--                           <span class="theme-search-results-item-room-feature-list-title"> -->
                          	
<!--                           </span> -->
<!--                         </li> -->
                        <li class="col-md-12 _pl-0 price-type">
                          <i class="fa fa-bed theme-search-results-item-room-feature-list-icon"></i>
                          <input type="hidden" class="site-price-ex" value="${price }">
                        </li>
                        <li>
                        	<div class="col-md-12 _pt-10">
                        		<span class="theme-search-results-item-room-feature-list-title camp-stock"></span>
                        	</div>
                        </li>
                        <li class="col-md-12 _pl-0 _pt-10">
                        <i class="fas fa-male fa-lg"></i> 
                          <span class="_pr-10">최대숙박 인원 &#58;</span><span class="_pr-50 max-campPerson"></span>
                          <span class=" ">인원초과 &#58;</span><span class="_pr-30">10,000원</span>
<!--                           <i class="fa fa-refresh theme-search-results-item-room-feature-list-icon"></i> -->
<!--                           <span class="theme-search-results-item-room-feature-list-title">Refundable</span> -->
                        </li>
                      </ul>
                      <p class="theme-search-results-item-location">
<!--                         <i class="fa fa-map-marker"></i>Midtown East -->
                      </p>
                    </div>
                    <div class="col-md-3 " >
                      <div class="theme-search-results-item-img-wrap">
                        <div id="mydiv"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="theme-payment-page-sections-item">
                  <h3 class="theme-payment-page-sections-item-title">예약 유의사항</h3>
                  <div class="theme-payment-page-booking-header">
                    <h3 class="theme-payment-page-booking-title"><i class="fas fa-ban" style="color:tomato"></i>
                                              취소 및 환불 규정</h3><br>
                    <p class="_pb-20">
                        <i class="campPolicy_cancel fas fa-quote-left"></i>
                       	 체크인 ${campPolicy_cancel }일 전까지 무료 취소가 가능합니다. 체크인 날짜까지 최소 ${campPolicy_cancel }일의 여유를<br>
                        	두지 않고 취소 할 경우, 지불해야 할 금액은 총 요금 입니다.
                        <i class="fas fa-quote-right"></i>
                    </p>
                    	<div class="col-md-12">
                          <label class="checkbox-inline icheck-label col-md-2">
                            <input class="icheck_1" type="checkbox"> 동의합니다.
                          </label>
                         </div>
                  </div>
              </div>
              <div class="theme-payment-page-sections-item">
                <h3 class="theme-payment-page-sections-item-title">예약 할 사이트 정보를 선택 해 주세요.</h3>
                <div class="theme-payment-page-form">
                  <div class="row row-col-gap" data-gutter="20">
<!--                     <div class="col-md-4 "> -->
<!--                       <label for="theme-payment-page-form-item" name="period">이용기간</label> -->
<!--                       <div class="theme-payment-page-form-item form-group"> -->
<!--                         <input type="number" class="form-control" value="1"> -->
<!--                       </div> -->
<!--                     </div> -->
                  	<div class="col-md-6">
                     <label for="theme-payment-page-form-item">사이트 수</label>
                      <div class="theme-payment-page-form-item form-group">
                      	<input type="hidden" id="camp-site-stock" value="${campSiteStock }">
                        <i class="fa fa-angle-down"></i>
                          <select class="site_quantity form-control">
                        </select>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <label for="theme-payment-page-form-item">인원 수</label>
                      <div class="theme-payment-page-form-item form-group">
						<input type="hidden" id="campPerson-hidden">
						<i class="fa fa-angle-down"></i>
						<select name="guest_quantity" class="guest_quantity form-control">
<%-- 							<c:forEach var="i" begin="2" end="10"> --%>
<%-- 								<option value="${i }"><c:out value="${i }"></c:out></option> --%>
<%-- 							</c:forEach> --%>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="theme-payment-page-sections-item">
                <h3 class="theme-payment-page-sections-item-title">예약자 정보</h3>
                <div class="theme-payment-page-form _mb-20">
                  <div class="row row-col-gap" data-gutter="20">
                    <div class="col-md-6 ">
                    <label for="theme-payment-page-form-item">예약자명</label>
                      <div class="theme-payment-page-form-item form-group">
							<input class="form-control ctm-name" name="name" type="text" placeholder="예약자명"/>
                      </div>
                    </div>
                    <div class="col-md-6 ">
                    	<label for="theme-payment-page-form-item">연락처</label>
                      <div class="theme-payment-page-form-item form-group">
                        <input class="form-control ctm-phone" name="phone" type="text" placeholder=" '-'없이 숫자만 입력"/>
                      </div>
                    </div>
                    <div class="col-md-12"> 
<!--                     <form> -->
<!--                     	<label for="theme-payment-page-form-item">요청사항</label> -->
<!--                       <div class="theme-payment-page-form-item form-group"> -->
<!--                           <textarea class="ctm_request form-control" rows="5" id="comment" name="ctm_request"></textarea> -->
<!--                       </div> -->
<!--                      </form> -->
                    </div>
                  </div>
                </div> 
                <div class="theme-payment-page-form">
                   <h3 class="theme-payment-page-sections-item-title _mt-10">이용요금 결제</h3>
                  <div class="row row-col-gap _mt-10" data-gutter="20">
                  	<div class="col-md-12">
                  		<table class="table table-bordered">
                  		<tr>
                  			<th>마일리지 사용 여부 </th>  
                  			<td class="radio-mileage">사용 가능한 마일리지 :
                  				<span class="availible-mileage"></span>
                  				
                  				<form class="form-inline">
                  					<div>
                  						<div class="form-group">
									    <label class="sr-only" for="exampleInputPassword3">Password</label>
									    <input type="number" class="form-control input-sm" id="useMile" min="0" disabled>원
									  </div>
									    <label class="radio-inline _ml-50">
 	                  						<input type="radio" name="mileage_type" class="using-mileage" value="1">사용
 	                  					</label> 
 									 	 <label class="radio-inline">
 	                  						<input type="radio" name="mileage_type" class="using-mileage" value="0" checked>미사용
 	                  					</label>
                  					</div>
                  				</form>
	
                  			</td>
                  		</tr>
                  		<tr>
                  			<th>결제방식</th> 
                  			<td>
                  				<label class="radio-inline">
                  					<input type="radio" class="payment-method" name="payment_method" value="1" checked>신용카드
                  				</label>
                  			</td>
                  		</tr>
                  	</table>
                  	</div>
                  	 
                  </div>
                </div>
              </div>
              <div class="theme-payment-page-sections-item">
                <div class="theme-payment-page-booking">
                  <div class="theme-payment-page-booking-header">
                      <h3 class="theme-payment-page-sections-item-title col-md-11 _p-0 _mr-30">약관동의</h3>
                <p class="theme-payment-page-booking-subtitle _pb-10">개인정보 수집 동의</p>
                  <div class="checkbox-agree_1">
                  	  <span class="icheck-title col-md-2 _mb-10"><b>약관동의</b></span>
	                      <label class="icheck-inline col-md-4">
	    						<input type="checkbox" class="icheck_2">
							   	동의합니다.
						  </label>

                      <div class="accordion btn btn-default" data-toggle="collapse" data-target="#demo">
                        <div class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
                          <a style="text-decoration: none;">보기</a>
                        </div>
                        </div>
                      	<div class="collapse _p-10" id="demo" style="font-size: 0.8em">
                          <p>
                              -개인정보 수집 동의-
                          </p>
                          <p>
                              1. 수집항목 : [필수] 이름, 연락처
                          </p>
                          <p>
                              2. 수집 및 이용목적 : 사업자회원과 예약이용자의 원활한 거래 진행, 고객상담, 불만처리 등 민원 처리, 분쟁조정 해결을 위한 기록보존, 캠핑스캐너 예약 이용 후 리뷰작성에 따른 마일리지 지급 및 관련 안내
                          </p>
                          <p>
                              3. 보관기간
                                - 회원탈퇴 등 개인정보 이용목적 달성 시까지 보관
                                - 단, 상법 및 ‘전자상거래 등에서의 소비자 보호에 관한 법률’ 등 관련 법령에 의하여 일정 기간 보관이 필요한 경우에는 해당 기간 동안 보관함
                          </p>      
                          <p>
                              4. 동의 거부권 등에 대한 고지: 정보주체는 개인정보의 수집 및 이용 동의를 거부할 권리가 있으나, 이 경우 상품 및 서비스 예약이 제한될 수 있습니다.
                          </p>
                      </div>
                      </div>
                      <div class="_mt-30">
                      	 <a class="btn _tt-uc btn-primary-inverse btn-lg btn-block btn-book">Book Now</a>
                      </div>
                    
                   </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 ">
            <div class="sticky-col">
              <div class="theme-sidebar-section _mb-10">
                <h5 class="theme-sidebar-section-title">예약정보</h5>
                <ul class="theme-sidebar-section-summary-list" >
                  <c:choose>
                  	<c:when test="${nights != 0 }">
                  		<li><span>${nights }박</span>&nbsp;${days }일</li>
                  	</c:when>
                  	<c:otherwise>
                  		<li>${days }일</li>
                  	</c:otherwise>
                  	</c:choose>
                  		<li>체크인: <span class="chkInDate" name="chkIn">${chkIn }</span></li>
                  		<li>체크아웃: <span class="chkOutDate" name="chkOut">${chkOut }</span></li>
               </ul>
              </div>
              <div class="theme-sidebar-section _mb-10">
                <h5 class="theme-sidebar-section-title">요금정보</h5>
                <div class="theme-sidebar-section-charges">
                  <ul class="theme-sidebar-section-charges-list"> 
                    <li class="theme-sidebar-section-charges-item">
                      <input type="hidden" class="camp-site-price">
<%--                       ${campSiteName } --%>
                      <h5 class="theme-sidebar-section-charges-item-title camp-site-name">사이트 수</h5>
                       <p class="site-num theme-sidebar-section-charges-item-subtitle"></p>
                      <p class="site-price theme-sidebar-section-charges-item-price"></p>

                    </li>
                    <li class="theme-sidebar-section-charges-item">
                      <h5 class="theme-sidebar-section-charges-item-title">인원 수</h5>
                      <p class="guest-num theme-sidebar-section-charges-item-subtitle"></p>
<%--                       ${guest_quantity } --%>
                      <p class="theme-sidebar-section-charges-item-price"></p>
                      <input type="hidden" class="hidden-guest-price">
                    </li>
                    
                    <li class="theme-sidebar-section-charges-item">
                      <h5 class="theme-sidebar-section-charges-item-title">초과인원</h5>
                      <p class="guest-surplus theme-sidebar-section-charges-item-subtitle"></p>
                      <p class="theme-sidebar-section-charges-item-price guest-overCharge"></p>
                      <input type="hidden" class="hidden-over-charge">
                    </li>
                    <li class="theme-sidebar-section-charges-item">
                      <h5 class="theme-sidebar-section-charges-item-title">마일리지 사용</h5>
<!--                       <p class="theme-sidebar-section-charges-item-subtitle">Tourist tax (France)</p> -->
                      <p class="theme-sidebar-section-charges-item-price use-mileage"></p>
                    </li>
                  </ul>
                  <p class="theme-sidebar-section-charges-total" name="total">합계
                    <span class="total-price"></span>
                  </p>
					
                  
                </div>
              </div>
              <div class="theme-sidebar-section _mb-10">
                <ul class="theme-sidebar-section-features-list">
                  <li>
                    <h5 class="theme-sidebar-section-features-list-title">Manage your bookings!</h5>
                    <p class="theme-sidebar-section-features-list-body">You're in control of your booking - no registration required.</p>
                  </li>
                  <li>
                    <h5 class="theme-sidebar-section-features-list-title">Customer support available 24/7 worldwide!</h5>
                    <p class="theme-sidebar-section-features-list-body">Website and customer support in English and 41 other languages.</p>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="theme-footer" id="mainFooter">
      <div class="container _ph-mob-0">
        <div class="row row-eq-height row-mob-full" data-gutter="60">
          <div class="col-md-3">
            <div class="theme-footer-section theme-footer-">
              <a class="theme-footer-brand _mb-mob-30" href="#">
                <img src="img/logo-black.png" alt="Image Alternative text" title="Image Title"/>
              </a>
              <div class="theme-footer-brand-text">
                <p>Urna dolor integer ornare diam curae leo praesent odio est euismod eu hac dis luctus</p>
                <p>Litora laoreet dapibus placerat molestie netus feugiat porta aliquam sagittis porttitor molestie praesent sapien rhoncus</p>
              </div>
            </div>
          </div>
          <div class="col-md-5">
            <div class="row">
              <div class="col-md-4">
                <div class="theme-footer-section theme-footer-">
                  <h5 class="theme-footer-section-title">Travel Mate</h5>
                  <ul class="theme-footer-section-list">
                    <li>
                      <a href="#">About Travel Mate</a>
                    </li>
                    <li>
                      <a href="#">Mobile App</a>
                    </li>
                    <li>
                      <a href="#">Customer Support</a>
                    </li>
                    <li>
                      <a href="#">Advertising</a>
                    </li>
                    <li>
                      <a href="#">Jobs</a>
                    </li>
                    <li>
                      <a href="#">Privacy Policy</a>
                    </li>
                    <li>
                      <a href="#">Terms of Use</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-md-4">
                <div class="theme-footer-section theme-footer-">
                  <h5 class="theme-footer-section-title">Explore</h5>
                  <ul class="theme-footer-section-list">
                    <li>
                      <a href="#">Countries</a>
                    </li>
                    <li>
                      <a href="#">Regions</a>
                    </li>
                    <li>
                      <a href="#">Cities</a>
                    </li>
                    <li>
                      <a href="#">Districs</a>
                    </li>
                    <li>
                      <a href="#">Airports</a>
                    </li>
                    <li>
                      <a href="#">Hotels</a>
                    </li>
                    <li>
                      <a href="#">Places of Interest</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-md-4">
                <div class="theme-footer-section theme-footer-">
                  <h5 class="theme-footer-section-title">Book</h5>
                  <ul class="theme-footer-section-list">
                    <li>
                      <a href="#">Apartments</a>
                    </li>
                    <li>
                      <a href="#">Resorts</a>
                    </li>
                    <li>
                      <a href="#">Villas</a>
                    </li>
                    <li>
                      <a href="#">Hostels</a>
                    </li>
                    <li>
                      <a href="#">B&Bs</a>
                    </li>
                    <li>
                      <a href="#">Guesthouses</a>
                    </li>
                    <li>
                      <a href="#">Hotel Chains</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="theme-footer-section theme-footer-section-subscribe bg-grad _mt-mob-30">
              <div class="theme-footer-section-subscribe-bg" style="background-image:url(img/footer/footer_subscribe_bg.png);"></div>
              <div class="theme-footer-section-subscribe-content">
                <h5 class="theme-footer-section-title">Save up to 50% off your next trip</h5>
                <p class="text-muted">Subscribe to unlock our secret deals</p>
                <form>
                  <div class="form-group">
                    <input class="form-control theme-footer-subscribe-form-control" type="email" placeholder="Type your e-mail here"/>
                  </div>
                  <button class="btn btn-primary-invert btn-shadow text-upcase theme-footer-subscribe-btn" type="submit">Get deals</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="theme-copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <p class="theme-copyright-text">Copyright &copy; 2018
              <a href="#">Bookify</a>. All rights reserved.
            </p>
          </div>
          <div class="col-md-6">
            <ul class="theme-copyright-social">
              <li>
                <a class="fa fa-facebook" href="#"></a>
              </li>
              <li>
                <a class="fa fa-google" href="#"></a>
              </li>
              <li>
                <a class="fa fa-twitter" href="#"></a>
              </li>
              <li>
                <a class="fa fa-youtube-play" href="#"></a>
              </li>
              <li>
                <a class="fa fa-instagram" href="#"></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

	<script type="text/javascript">
	$(document).ready(function(){
		
		var campJson = ${campJson}
		var siteJson = ${siteJson}
		var origin_price = '${originPrice}'	//사이트1박 가격
		var type = ${type}
		var mileage = ${mileage}
		var price = ${price}
// 		getEnd(siteJson.campPerson);
			var strHtml = "";
			var campPersonHtml = "";
			for(var i=1;i<=siteJson.campSiteStock;i++){						//사이트 재고에 따른 선택 옵션 생성
				strHtml += "<option value='"+i+"'>"+i+"</option>";
			}
			$('.site_quantity').append(strHtml);
			
			for(var i=2;i<=(siteJson.campPerson+5);i++){						//최대인원수+5 옵션 생성
				campPersonHtml += "<option value='"+i+"'>"+i+"</option>";
			}
			$('.guest_quantity').append(campPersonHtml);
			
			$('.camp-name').text(campJson.campName);						//캠프이름 셋팅
			$('.site-name').text(siteJson.campSiteName);					//사이트이름 셋팅
			$('.camp-stock').text(siteJson.campSiteStock+'자리가능');
			$('#campPerson-hidden').val(siteJson.campPerson);
															//요일에 따른 가격 변동사항 적용
			var price_type = (type==1)?'성':(type==2)?'평':(type==3)?'주':'없음';
			$('.camp-season').text(price_type);
			var price_day = "<span class='camp-season"+type+"'>"+price_type+"</span>";	//성/평/주 선택해서 html 셋팅
			var show_price = "<span class='camp-price-price'></span>";					//가격셋팅
			$('.price-type').append(price_day).append(show_price);
			$('.camp-price-price').append('1박&nbsp;'+origin_price.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원');
			$('.max-campPerson').text(siteJson.campPerson + '명');
			
			$('.get-mileage').val(mileage);
			
			if(mileage==0){					//마일리지가 0원이면 마일리지 사용 여부 선택하는 라디오 버튼 disabled 설정
				$('input[name=mileage_type]').attr('disabled',true);
			}
			$('.availible-mileage').text(String(mileage).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,') + '원');
			
			var input1 = "<input type='hidden' name='campId' class='camp-value' value='"+campJson.campId+"'></input>"
			var input2 = "<input type='hidden' name='siteId' class='site-value' value='"+siteJson.siteId+"'></input>"
			var type_input = "<input type='hidden' name='type' class='type-value' value='"+type+"'></input>"
			
			$('body').append(input1).append(input2).append(type_input);
			
		
	});
	
</script>


	<script src="js/jquery.js"></script>
    <script src="js/moment.js"></script>
    <script src="js/bootstrap.js"></script>
<!--     <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDYeBBmgAkyAN_QKjAVOiP_kWZ_eQdadeI&callback=initMap&libraries=places"></script> -->
    <script src="js/owl-carousel.js"></script>
    <script src="js/blur-area.js"></script>
    <script src="js/icheck.js"></script>
    <script src="js/gmap.js"></script>
    <script src="js/magnific-popup.js"></script>
    <script src="js/ion-range-slider.js"></script>
    <script src="js/sticky-kit.js"></script>
    <script src="js/smooth-scroll.js"></script>
    <script src="js/fotorama.js"></script>
    <script src="js/bs-datepicker.js"></script>
    <script src="js/typeahead.js"></script>
    <script src="js/quantity-selector.js"></script>
    <script src="js/countdown.js"></script>
    <script src="js/window-scroll-action.js"></script>
    <script src="js/fitvid.js"></script>
    <script src="js/youtube-bg.js"></script>
    <script src="js/custom.js"></script>
 	<script src="js/myJs.js"></script>
<!--  	<script src="js/test.js"></script> -->
<!--  	<script src="js/myAngular.js"></script> -->
  </body>
</body>
</html>