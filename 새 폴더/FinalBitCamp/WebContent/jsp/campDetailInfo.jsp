<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68583abf1012481a1d352ae8faf71f26"></script>
    <link rel="stylesheet" href="css/font-awesome.css"/>
    <link rel="stylesheet" href="css/lineicons.css"/>
    <link rel="stylesheet" href="css/weather-icons.css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/styles.css"/>
    <link rel="stylesheet" href="css/mystyles.css"/>
    <!-- angularJS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" 
    integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<script type="text/javascript">
$(document).ready(function(){
	
	var campDetail = ${campDetail};
	var stockList = ${stockList};
	var campReview = ${campReview};
	if(campDetail[0].userId!=null){
		var userId = campDetail[0].userId;
		$("#loginState").val(userId);
	}
	if($('#loginState').val()){
		$('#login').text($('#loginState').val()+'님 로그아웃');
		$('#login').attr('href', 'logout.do');
		$('#loginList').before('<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>');
	}
	
	$('#login').click(function(e){
		var text = $('#login').text();
		if(text=='로그인'){
			$('#loginModal').modal();	
		}		
	})
	var length = campDetail.length;
	var pic = '';
	$.each(campDetail, function(index, item){
		if(index<length-1){
			pic = pic + "./img/" + item.file + ","
		}
		else{
			pic = pic + "./img/" + item.file
		}
	})
	$(".magnific-gallery-link").attr('data-items', pic);
	var backPic = "background-image:url(./img/" + campDetail[0].file + ");"
	$(".theme-hero-area-bg").attr('style', backPic);
	$(".theme-item-page-header-title").text(campDetail[0].campName);
	$(".campAddr").text(campDetail[0].campAddr);
	detailLoad(campDetail, stockList);
	$("#campContent").text(campDetail[0].content);
// 	tapMap(campDetail);
	$(".google-map").prop('data-lat', campDetail[0].latitude);
	$(".google-map").prop('data-lng', campDetail[0].longitude);
// 	alert($('.google-map').length)
	
	$("#rate").text(campDetail[0].rate);
	$(".theme-search-area-submit-no-border").click(function(){
		detailSearch(campDetail);
	})
	reviewLoad(campReview);
	facilityLoad(campDetail);
})
</script>
</head>
<body>
<nav class="navbar navbar-default navbar-inverse navbar-theme navbar-theme-abs navbar-theme-transparent navbar-theme-border" id="main-nav">
      <div class="container">
        <div class="navbar-inner nav">
          <div class="navbar-header">
            <button class="navbar-toggle collapsed" data-target="#navbar-main" data-toggle="collapse" type="button" area-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">
              <i class="far fa-compass fa-lg"></i>
            </a>
          </div>
          
          <!-- navigation -->
          <div class="collapse navbar-collapse" id="navbar-main">
            <!-- navigation 오른쪽 메뉴-->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="">내 캠핑장 등록</a></li>
                <li><a href="">고객센터</a></li>
                <li class="nav-item" id="loginList">
                    <a class="nav-link" id="login" href="#" data-target="#loginModal">로그인</a>
                    <input type="hidden" id="loginState" value="${member.userId}">
              	</li>
            </ul>
          </div>
          
        </div>
      </div>
    </nav>
    <div class="theme-hero-area">
      <div class="theme-hero-area-bg-wrap">
      	<input type="hidden" class="campId" name="campId" value="">
      	<input type="hidden" class="sellerId" name="sellerId" value="">
        <div class="theme-hero-area-bg" style=""></div>
        <div class="theme-hero-area-mask theme-hero-area-mask-half"></div>
        <div class="theme-hero-area-inner-shadow"></div>
      </div>
      <div class="theme-hero-area-body">
        <div class="container">
          <div class="theme-item-page-header _pt-300 _pb-50 theme-item-page-header-white">
            <div class="theme-item-page-header-body">
              
              <h1 class="theme-item-page-header-title"></h1>
              <ul class="theme-breadcrumbs">
                <li>
	                <span>
	                    <i class="campAddr fas fa-map-marker-alt"></i>
	                </span>
	            </li>
              </ul>
              <a class="btn _tt-uc _ls-0 _mt-30 _p-15 magnific-gallery-link btn-default btn-white" data-items="" href="#">
                <i class="btn-icon fa fa-camera"></i>사진보기
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 캠핑장상세정보 탭 -->
    <div class="theme-page-section">
      <div class="container">
        <div class="row row-col-static" id="sticky-parent" data-gutter="60">
          <div class="col-md-8 ">
            <div class="theme-item-page-tabs _mb-30">
              <div class="tabbable">
                <ul class="nav nav-tabs nav-default nav-sqr nav-mob-inline" role="tablist">
                  <li class="active" role="presentation">
                    <a aria-controls="HotelPageTabs-1" role="tab" data-toggle="tab" href="#HotelPageTabs-1">캠핑장 사이트</a>
                  </li>
                  <li role="presentation">
                    <a aria-controls="HotelPageTabs-2" role="tab" data-toggle="tab" href="#HotelPageTabs-2">캠핑장 소개</a>
                  </li>
                  <li role="presentation">
                    <a aria-controls="HotelPageTabs-3" role="tab" data-toggle="tab" href="#HotelPageTabs-3">지도</a>
                  </li>
                  <li role="presentation">
                    <a aria-controls="HotelPageTabs-4" role="tab" data-toggle="tab" href="#HotelPageTabs-4">문의/후기</a>
                  </li>
                  <li role="presentation">
                    <a aria-controls="HotelPageTabs-5" role="tab" data-toggle="tab" href="#HotelPageTabs-5">편의시설</a>
                  </li>
                </ul>
                <div class="tab-content _pt-30">
                  <div class="tab-pane active" id="HotelPageTabs-1" role="tab-panel">
                  	<div class="camp-seasons col-md-4 col-md-offset-9">
                             <span class="camp-season1">성</span>
                             <span>성수기</span>
                             <span class="camp-season2">평</span>
                             <span>평일</span>
                             <span class="camp-season3">주</span>
                             <span>주말</span>
                     </div>
                  	<div class="theme-item-page-rooms-table">
                  	<input type="hidden" name="campId" value="111-222">
                      <table class="table">
                        <tbody>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  
                  <!-- 캠핑장 소개 탭 -->
                  <div class="tab-pane" id="HotelPageTabs-2" role="tab-panel">
                    <div class="theme-item-page-desc">
                      <p id="campContent" ></p>
                    </div>
                  </div>
                  <div class="tab-pane" id="HotelPageTabs-3" role="tab-panel">
<!--                     <div id="daum" class="theme-item-page-map" style="width: 740px; height: 300px;"></div> -->
                    <div class="theme-item-page-map google-map" data-lat=" " data-lng=" ">지도</div>
                  </div>
                  <div class="tab-pane" id="HotelPageTabs-4" role="tab-panel">
                    <div class="theme-reviews">
                      <div class="theme-reviews-score theme-reviews-score-hor">
                        <div class="row">
                          <div class="col-md-3 ">
                            <div class="theme-reviews-score-header">
                              <h5 class="theme-reviews-score-title">Review score</h5>
<!--                               <p class="theme-reviews-score-subtitle">Based on 2889 reviews</p> -->
                            </div>
                            <div class="theme-reviews-score-total">
                              <p id="rate">7.4</p>
                            </div>
                          </div>
                          <div class="col-md-9 ">
                            <div class="theme-reviews-score-list">
                              <div class="row">
                                <div class="col-md-6 ">
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">친절도</p>
                                      <p class="theme-reviews-score-item-num">5.6</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:56%;"></div>
                                    </div>
                                  </div>
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">청결함</p>
                                      <p class="theme-reviews-score-item-num">6.4</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:64%;"></div>
                                    </div>
                                  </div>
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">시설</p>
                                      <p class="theme-reviews-score-item-num">7.5</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:75%;"></div>
                                    </div>
                                  </div>
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">안전성</p>
                                      <p class="theme-reviews-score-item-num">7.5</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:75%;"></div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="theme-reviews-list">
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane" id="HotelPageTabs-5" role="tab-panel">
                    <div class="theme-item-page-facilities">
                      <div class="row">
                        <div class="col-md-3 " id="facility1">
                        </div>
                        <div class="col-md-3 " id="facility2">
                        </div>
                        <div class="col-md-3 " id="facility3">
                        </div>
                        <div class="col-md-3 " id="facility4">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="sticky-col">
              <div class="theme-search-area _mb-20 _p-20 _b _bc-dw theme-search-area-vert">
              <h4 class="theme-search-area-title">날짜선택</h4>
                <div class="theme-search-area-header _mb-20 theme-search-area-header-sm" >
                </div>
                <div class="theme-search-area-form">
                  <div class="row" data-gutter="10">
                    <div class="col-md-6">
                      <div class="theme-search-area-section theme-search-area-section-sm theme-search-area-section-curved">
                        <div class="theme-search-area-section-inner" >
                          <i class="theme-search-area-section-icon lin lin-calendar"></i>
                          <input class="theme-search-area-section-input datePickerStart _mob-h" name="chkIn" type="text" placeholder="체크인">
<!-- 								<input type="text" data-range="true" data-multiple-dates-separator=" - "data-language="en" -->
<!--     									class="theme-search-area-section-input datepicker-here _mob-h" placeholder=""> -->
<!-- 							<div class="col-md-6 _p-10 datepicker-here" data-language='en'></div> -->
                          <input class="theme-search-area-section-input _desk-h mobile-picker" name="chkOut" type="date">
                        </div>
							
                      </div>
                    </div>
                    <div class="col-md-6 ">
                      <div class="theme-search-area-section theme-search-area-section-sm theme-search-area-section-curved">
                        <div class="theme-search-area-section-inner">
                          <i class="theme-search-area-section-icon lin lin-calendar"></i>
                          <input class="theme-search-area-section-input datePickerEnd _mob-h" type="text" name="startdate" placeholder="체크아웃">
                          <input class="theme-search-area-section-input _desk-h mobile-picker" name="enddate" type="date">
                        </div>
                      </div>
                    </div>
                    <div class="ctm-choice col-md-12">
                    	
                    </div>
                  </div>
                  <button class="theme-search-area-submit _mt-0 _fw-n _ls-0 _tt-uc theme-search-area-submit-primary 
                  				theme-search-area-submit-no-border theme-search-area-submit-curved">조회</button>
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
                <p>Vestibulum felis quis adipiscing augue varius nam senectus tellus metus magnis mus aptent odio tempus</p>
                <p>Netus a at himenaeos magnis commodo tellus pretium mi interdum massa arcu lorem eget consequat</p>
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
        </div>
      </div>
    </div>
    <!-- Modal -->
<div class="modal fade" id="loginModal" role="dialog">
 <div class="modal-dialog">
    
<!-- Modal content-->
       <div class="modal-content">
      	<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title" style="font-weight : bold">로그인</h2>
        </div>
        <div class="modal-body">
        	<div id="normal" class="tab-pane fade in active"><br>
        		<form class="form-horizontal" action="memberLogin.do" method="post">
        				<div class="form-group">
        					<label for="inputEmail3" class="col-sm-3 control-label">아이디</label>
    						<div class="col-sm-6">
      						<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디">
      						</div>
      					</div>
      					<div class="form-group">
    						<label for="inputPassword3" class="col-sm-3 control-label">비밀번호</label>
   							<div class="col-sm-6">
      						<input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호">
   			 				</div>
  						</div>
  						<div class="form-group">
    						<div class="col-sm-offset-3 col-sm-10">
      							<div class="checkbox">
       						 	<label>
          						<input type="checkbox">로그인 유지
        						</label>
      							</div>
    						</div>
 					 	</div>
  						<div class="form-group">
    						<div class="col-sm-offset-3 col-sm-6">
      						<button type="submit" class="btn btn-primary btn-lg btn-block" >확인</button>
   					 		</div>	
        				</div>
        				<div class="form-group">
    						<div class="col-sm-offset-3 col-sm-6">
      						<a href="https://kauth.kakao.com/oauth/authorize?client_id=1ac3e7706d2467a442f2585681668ea0&redirect_uri=http://localhost:8080/FinalBitCamp/kakaoLogin.do&response_type=code&scope=account_email" 
							id="kakaoBtn"><img alt="" src="img/kakao.png" style="width : 270px; height: 46"></a>
   					 		</div>	
        				</div>
        				<div class="form-group">
    						<div class="col-sm-offset-3 col-sm-6">
      						<a href="naverLogin.do" id="naverBtn"><img alt="" src="img/naver.PNG" style="width : 270px;"></a>
   					 		</div>	
        				</div><br>
        				<div class="form-group">
    						<div class="col-sm-offset-3 col-sm-6" >
      						<a href="#" class="col-sm-8">아이디/비밀번호 찾기</a>
      						<a href="#" class="col-sm-4 _p-0">회원가입</a>
   					 		</div>	
        				</div>
        		</form>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
      
 </div>
</div>
    <script src="js/facility.js"></script>
    <script src="js/review.js"></script>
    <script src="js/tapMap.js"></script>
    <script src="js/campDetailSearch.js"></script>
    <script src="js/campDetail.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/moment.js"></script>
    <script src="js/bootstrap.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDYeBBmgAkyAN_QKjAVOiP_kWZ_eQdadeI&callback=initMap&libraries=places"></script>
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
<!--     <script src="datepicker/dist/js/datepicker.min.js"></script> -->
    <!-- Include English language -->
<!--     <script src="datepicker/dist/js/i18n/datepicker.en.js"></script> -->

</body>
</html>