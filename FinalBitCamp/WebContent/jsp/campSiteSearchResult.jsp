<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Travel Mate - Hotel results 1</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=68583abf1012481a1d352ae8faf71f26"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"	rel="stylesheet" />
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/lineicons.css" />
<link rel="stylesheet" href="css/weather-icons.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/styles.css" />
<style type="text/css">

</style>
<script type="text/javascript">
$(document).ready(function(){
	var csl = ${csl};
	var sc = ${sc};
	var mcl = ${mcl};
	if(csl[0].userId!=null){
		var userId = csl[0].userId;
		$("#loginState").val(userId);
	}
	if($('#loginState').val()){
		$('#login').text($('#loginState').val()+'님 로그아웃');
		$('#login').attr('href', 'logout.do');
	}
	$('#login').click(function(e){
		var text = $('#login').text();
		if(text=='로그인'){
			$('#loginModal').modal();	
		}		
	})
	var userId = $("#loginState").val();
	var cslArray = [];
	for(var i=0; i<csl.length; i++){
		cslArray.push(csl[i]);
	}
	if(csl.length<5){
		$("#nextBtn").remove();
	}
	if(sc.page==1){
		cslLoad(csl);
	};
	var container = document.getElementById('daum'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center : new daum.maps.LatLng(36.419420, 128.159689), //지도의 중심좌표.
		level : 12 //지도의 레벨(확대, 축소 정도)
	};
	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
	myCampList(mcl);
	mapLoad(csl, map);
	$("#next").click(function(){
		sc.page = sc.page + 1;
		$.ajax({
			type: 'get',
			url: 'campSiteSearch.do',
			data: {
				'search': sc.search,
				'chkIn': sc.chkIn,
				'chkOut': sc.chkOut,
				'campPerson': sc.campPerson,
				'type': sc.type,
				'page': sc.page
			},
			success: function(csl){
				cslLoad(csl);
				detail(sc);
				$.each(csl[0].mcl, function(index, item){
					mcl.push(item);
				})
				myCampList(mcl);
				bookMark(userId);
				$.each(csl, function(index, item){
					cslArray.push(item);
				});
				if(csl.length<5){
					$("#nextBtn").remove();
				};
				mapLoad(csl, map);
			},
			error: function(xhrReq, status, error){
				alert(status);
				alert(error);
			}
		});
	});					//next의 끝
	$(".dropdown-menu").on('click','li',function (){
		if($(this).text()=="인기순"){
			$("#start").children().remove();
			for(var i=0; i<cslArray.length; i++){
				var first = cslArray[i];
				for(var p=i+1; p<cslArray.length; p++){
					if(cslArray[i].rate<cslArray[p].rate){
						cslArray[i] = cslArray[p];
						cslArray[p] = first;
						first = cslArray[i];
					}
				}
			}
			cslLoad(cslArray);
			myCampList(mcl);
			bookMark(userId);
			detail(sc);
			mapLoad(cslArray, map);
		}		//인기순의 끝
		else if($(this).text()=="낮은가격순"){
			$("#start").children().remove();
			for(var i=0; i<cslArray.length; i++){
				var first = cslArray[i];
				for(var p=i+1; p<cslArray.length; p++){
					if(cslArray[i].price>cslArray[p].price){
						cslArray[i] = cslArray[p];
						cslArray[p] = first;
						first = cslArray[i];
					}
				}
			}
			cslLoad(cslArray);
			myCampList(mcl);
			bookMark(userId);
			detail(sc);
			mapLoad(cslArray, map);
		}		//낮은가격순의 끝
		else if($(this).text()=="높은가격순"){
			$("#start").children().remove();
			for(var i=0; i<cslArray.length; i++){
				var first = cslArray[i];
				for(var p=i+1; p<cslArray.length; p++){
					if(cslArray[i].price<cslArray[p].price){
						cslArray[i] = cslArray[p];
						cslArray[p] = first;
						first = cslArray[i];
					}
				}
			}
			cslLoad(cslArray);
			myCampList(mcl);
			bookMark(userId);
			detail(sc);
			mapLoad(cslArray, map);
		}		//높은가격순의 끝
	});			//정렬기준의 끝
	bookMark(userId);
	detail(sc);
});
</script>
</head>
<body>
<nav class="navbar navbar-default navbar-inverse navbar-theme navbar-theme-abs navbar-theme-transparent navbar-theme-border" id="main-nav">
		<div class="container">
			<div class="navbar-inner nav">
				<div class="navbar-header">
					<button class="navbar-toggle collapsed" data-target="#navbar-main"
						data-toggle="collapse" type="button" area-expanded="false">
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"> 
					<i class="fa fa-compass  fa-2x "></i>
					</a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-main">
					<ul class="nav navbar-nav"></ul>
					<ul class="nav navbar-nav navbar-right">
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item "><a class="nav-link" href="#">내 캠핑장 등록</a></li>
							<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
							<li class="nav-item">
                    			<a class="nav-link" id="login" href="#" data-target="#loginModal">로그인</a>
                    			<input type="hidden" id="loginState" value="${member.userId}">
              				</li>
						</ul>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<div class="theme-hero-area front">
		<div class="theme-hero-area-bg-wrap">
			<div class="theme-hero-area-bg"	style="background-image: url(./img/헤더.jpg);" id="hero-banner"></div>
			<!-- 헤더 -->
			<div class="theme-hero-area-mask theme-hero-area-mask-half"></div>
			<div class="blur-area" data-bg-area="#hero-banner" data-blur-area="#hero-search-form" data-blur="20"></div>
		</div>
		<div class="theme-hero-area-body">
			<div class="container">
				<div class="_pb-100 _pt-150 _pv-mob-50">
					<div class="theme-search-area _mob-h theme-search-area-stacked theme-search-area-white">
						<div class="theme-search-area-form" id="hero-search-form">
							<div class="row" data-gutter="none">
								<div class="col-md-4 ">
									<div class="theme-search-area-section first theme-search-area-section-curved">
										<div class="theme-search-area-section-inner">
											<i class="theme-search-area-section-icon lin lin-location-pin"></i>
											<input class="theme-search-area-section-input typeahead" type="text" placeholder="search"
												data-provide="typeahead" />
										</div>
									</div>
								</div>
								<div class="col-md-4 ">
									<div class="row" data-gutter="none">
										<div class="col-md-6 ">
											<div class="theme-search-area-section theme-search-area-section-curved">
												<div class="theme-search-area-section-inner">
													<i class="theme-search-area-section-icon lin lin-calendar"></i>
													<input class="theme-search-area-section-input datePickerStart _mob-h"
														type="text" placeholder="Check-in" />
														 <input class="theme-search-area-section-input _desk-h mobile-picker" type="date" />
												</div>
											</div>
										</div>
										<div class="col-md-6 ">
											<div class="theme-search-area-section theme-search-area-section-curved">
												<div class="theme-search-area-section-inner">
													<i class="theme-search-area-section-icon lin lin-calendar"></i>
													<input class="theme-search-area-section-input datePickerEnd _mob-h"
														type="text" placeholder="Check-out" /> 
														<input class="theme-search-area-section-input _desk-h mobile-picker" type="date" />
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<div class="theme-search-area-section theme-search-area-section-curved quantity-selector" data-increment="Guests">
										<div class="theme-search-area-section-inner">
											<i class="theme-search-area-section-icon lin lin-people"></i>
											<input class="theme-search-area-section-input" id="guest" value="4 Guests" type="text" />
											<div class="quantity-selector-box" id="HotelSearchGuests">
												<div class="quantity-selector-inner">
													<p class="quantity-selector-title">Guests</p>
													<ul class="quantity-selector-controls">
														<li class="quantity-selector-decrement"><a href="#">&#45;</a></li>
														<li class="quantity-selector-current">4</li>
														<li class="quantity-selector-increment"><a href="#">&#43;</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<button	class="theme-search-area-submit _mt-0 theme-search-area-submit-curved theme-search-area-submit-primary">검색</button>
									<!-- <button type="button" class="theme-search-area-submit _mt-0 theme-search-area-submit-curved theme-search-area-submit-primary">검색</button> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="theme-page-section theme-page-section-gray">
		<div class="container">
			<div class="row row-col-static" id="sticky-parent">
				<div class="col-md-6-5 ">					
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">정렬기준 <span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li><a href="#">인기순</a></li>
							<li><a href="#">낮은가격순</a></li>
							<li><a href="#">높은가격순</a></li>
						</ul>
					</div>
					<div class="theme-search-results">
						<div class="_mob-h" id="start">
						
						</div>					
					</div>
					
					<div id="nextBtn">
					<a class="btn _tt-uc _fs-sm btn-dark btn-block btn-lg" id="next">
						캠핑장 더 보기</a></div>
				</div>
				<div class="col-md-5 ">
					<div class="sticky-col _mob-h">
						<div class="theme-search-results-sidebar" id="daum" style="width: 500px; height: 900px;">
							<div class="theme-search-results-sidebar-map-view">
								<a class="theme-search-results-sidebar-map-view-link" href="#"></a>
								<div class="theme-search-results-sidebar-map-view-body">
									<i class="fa fa-map-marker theme-search-results-sidebar-map-view-icon"></i>
									<p class="theme-search-results-sidebar-map-view-sign">Map View</p>
								</div>
								<div class="theme-search-results-sidebar-map-view-mask"></div>
							</div>
							<div class="theme-search-results-sidebar-sections"></div>
						</div>
					</div>
				</div>

				<div class="col-md-3 "></div>
			</div>
		</div>
	</div>
	<div class="theme-footer" id="mainFooter">
		<div class="container _ph-mob-0">
			<div class="row row-eq-height row-mob-full" data-gutter="60">
				<div class="col-md-3">
					<div class="theme-footer-section theme-footer-">
						<a class="theme-footer-brand _mb-mob-30" href="#"> <img
							src="img/logo-black.png" alt="Image Alternative text"
							title="Image Title" />
						</a>
						<div class="theme-footer-brand-text">
							<p>Ultrices cursus luctus imperdiet justo fermentum porttitor
								sodales suscipit tempor sed inceptos viverra aliquet pretium</p>
							<p>Cursus vivamus habitasse velit aenean consequat congue
								fringilla volutpat blandit laoreet leo litora dis habitasse</p>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="row">
						<div class="col-md-4">
							<div class="theme-footer-section theme-footer-">
								<h5 class="theme-footer-section-title">Travel Mate</h5>
								<ul class="theme-footer-section-list">
									<li><a href="#">About Travel Mate</a></li>
									<li><a href="#">Mobile App</a></li>
									<li><a href="#">Customer Support</a></li>
									<li><a href="#">Advertising</a></li>
									<li><a href="#">Jobs</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Terms of Use</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4">
							<div class="theme-footer-section theme-footer-">
								<h5 class="theme-footer-section-title">Explore</h5>
								<ul class="theme-footer-section-list">
									<li><a href="#">Countries</a></li>
									<li><a href="#">Regions</a></li>
									<li><a href="#">Cities</a></li>
									<li><a href="#">Districs</a></li>
									<li><a href="#">Airports</a></li>
									<li><a href="#">Hotels</a></li>
									<li><a href="#">Places of Interest</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4">
							<div class="theme-footer-section theme-footer-">
								<h5 class="theme-footer-section-title">Book</h5>
								<ul class="theme-footer-section-list">
									<li><a href="#">Apartments</a></li>
									<li><a href="#">Resorts</a></li>
									<li><a href="#">Villas</a></li>
									<li><a href="#">Hostels</a></li>
									<li><a href="#">B&Bs</a></li>
									<li><a href="#">Guesthouses</a></li>
									<li><a href="#">Hotel Chains</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
				
				</div>
			</div>
		</div>
	</div>
	<div class="theme-copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<p class="theme-copyright-text">
						Copyright &copy; 2018 <a href="#">Bookify</a>. All rights
						reserved.
					</p>
				</div>
				<div class="col-md-6">
					<ul class="theme-copyright-social">
						<li><a class="fa fa-facebook" href="#"></a></li>
						<li><a class="fa fa-google" href="#"></a></li>
						<li><a class="fa fa-twitter" href="#"></a></li>
						<li><a class="fa fa-youtube-play" href="#"></a></li>
						<li><a class="fa fa-instagram" href="#"></a></li>
					</ul>
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
	<script src="js/mcl.js"></script>
<!-- 	<script src="js/myCamp.js"></script> -->
	<script src="js/main.js"></script>
	<script src="js/detail.js"></script>
	<script src="js/map.js"></script>
	<script src="js/csl.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/moment.js"></script>
	<script src="js/bootstrap.js"></script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDYeBBmgAkyAN_QKjAVOiP_kWZ_eQdadeI&callback=initMap&libraries=places"></script>
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
</body>
</html>