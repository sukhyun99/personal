<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Travel Mate - Index 3</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/lineicons.css" />
<link rel="stylesheet" href="css/weather-icons.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/styles.css" />
<script type="text/javascript">

$(document).ready(function(){
	$('#memberLogin').click(function(){
	      $.ajax({
	         type: 'POST',
	         url: 'memberLogin.do',
	         data: {
	        	 'userId': $('#userId').val(),
	        	 'pw': $('#pw').val()
	         },
	         success: function(data){
	            if(data==0){
	               alert("비번틀림")
	               $('#userId').val('')
	               $('#pw').val('')
	            }
	            else{
	            	location.href = "main.do";
	            }
	         },
	         error: function(xhr, status, error){
	            alert(error);
	         }
	      })
	   })
	
	if($('#loginState').val()){
		$('#login').text($('#loginState').val()+'님 로그아웃');
		$('#login').attr('href', 'logout.do');
		$('#loginList').before('<li class="nav-item"><a class="nav-link" href="memberModifyPwCheck.do">마이페이지</a></li>');
	}
	
	$('#login').click(function(e){
		var text = $('#login').text();
		if(text=='로그인'){
			$('#loginModal').modal();	
		}		
	})
})
</script>
</head>
<body>
	<nav
		class="navbar navbar-default navbar-inverse navbar-theme navbar-theme-abs navbar-theme-transparent navbar-theme-border"
		id="main-nav">
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
				<a class="navbar-brand" href="main.do"> 
				<i class="far fa-compass fa-lg"></i> 
				<span>캠핑스캐너</span>
				</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-main">
				<ul class="nav navbar-nav">
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="nav-item"><a class="nav-link" href="#">내 캠핑장 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="customerCenter.do">고객센터</a></li>
					<li class="nav-item" id="loginList">
					<a class="nav-link" id="login" href="#" data-target="#loginModal">로그인</a> 
					<input type="hidden" id="loginState" value="${member.userId}"></li>
				</ul>
			</div>
		</div>
	</div>
	</nav>
	<div class="_pos-r">
		<div class="theme-hero-area _h-desk-100vh">
			<div class="theme-hero-area-bg-wrap">
				<div class="theme-hero-area-bg-video theme-hero-area-bg-video-blur"
					id="youtube-video" data-video-id="umVm3QXFE18"></div>
				<div class="theme-hero-area-bg"
					style="background-image: url(./img/1500x800.png);"></div>
				<div
					class="theme-hero-area-bg-pattern theme-hero-area-bg-pattern-strong"
					style="background-image: url(img/patterns/ep_naturalblack.png);"></div>
				<div class="theme-hero-area-mask"></div>
				<div class="theme-hero-area-inner-shadow"></div>
			</div>
			<div class="theme-hero-area-body _pos-desk-v-c _w-f _pv-mob-50">
				<div class="container">
					<div class="theme-search-area-tabs _pb-100">
						<div class="theme-search-area-tabs-header _c-w _mb-50">
							<!-- <h3 class="theme-search-area-tabs-title theme-search-area-tabs-title-lg"></h3> -->
							<h1>
								자연과 함께하는 시간,<br>
							</h1>
							<h1>
								전국의 캠핑장을 예약 해 보세요.<br>
							</h1>
						</div>
						<div class="tabbable">
							<div class="tab-content _pt-15">
								<div class="tab-pane active" id="SearchAreaTabs-1"
									role="tab-panel">
									<div class="theme-search-area theme-search-area-white">
										<div class="theme-search-area-form">
											<div class="row" data-gutter="30">
												<div class="col-md-3 ">
													<div
														class="theme-search-area-section first theme-search-area-section-line">
														<div class="theme-search-area-section-inner">
															<i
																class="theme-search-area-section-icon lin lin-location-pin"></i>
															<input class="theme-search-area-section-input typeahead"
																type="text" placeholder="search"
																data-provide="typeahead" />
														</div>
													</div>
												</div>
												<div class="col-md-4 ">
													<div class="row" data-gutter="30">
														<div class="col-md-6 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i class="theme-search-area-section-icon lin lin-calendar"></i>
																	<input class="theme-search-area-section-input datePickerStart _mob-h" type="text" placeholder="Check-in" /> 
																	<input class="theme-search-area-section-input _desk-h mobile-picker" type="date" />
																</div>
															</div>
														</div>
														<div class="col-md-6 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-calendar"></i>
																	<input
																		class="theme-search-area-section-input datePickerEnd _mob-h"
																		type="text" placeholder="Check-out" /> <input
																		class="theme-search-area-section-input _desk-h mobile-picker"
																		type="date" />
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-4 ">
													<div class="row" data-gutter="30">
														<div class="col-md-6 ">
															<div
																class="theme-search-area-section theme-search-area-section-line quantity-selector"
																data-increment="Guests">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-people"></i>
																	<!--                                     id값 추가 -->
																	<input class="theme-search-area-section-input"
																		id="guest" value="4 Guests" readonly="readonly" />
																	<div class="quantity-selector-box"
																		id="HotelSearchGuests">
																		<div class="quantity-selector-inner">
																			<p class="quantity-selector-title">Guests</p>
																			<ul class="quantity-selector-controls">
																				<li class="quantity-selector-decrement"><a
																					href="#">&#45;</a></li>
																				<li class="quantity-selector-current">4</li>
																				<li class="quantity-selector-increment"><a
																					href="#">&#43;</a></li>
																			</ul>
																		</div>

																	</div>
																</div>
															</div>
														</div>

													</div>

												</div>
												<div class="col-md-1 ">
													<button
														class="theme-search-area-submit _mt-0 _fs-xl theme-search-area-submit-curved theme-search-area-submit-primary theme-search-area-submit-glow">&rarr;</button>
												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="tab-pane" id="SearchAreaTabs-2" role="tab-panel">
									<div class="theme-search-area theme-search-area-white">
										<div class="theme-search-area-form">
											<div class="row" data-gutter="30">
												<div class="col-md-4 ">
													<div
														class="theme-search-area-section first theme-search-area-section-line">
														<div class="theme-search-area-section-inner">
															<i
																class="theme-search-area-section-icon lin lin-location-pin"></i>
															<input class="theme-search-area-section-input typeahead"
																type="text" placeholder="Apartment Location"
																data-provide="typeahead" />
														</div>
													</div>
												</div>
												<div class="col-md-7 ">
													<div class="row" data-gutter="30">
														<div class="col-md-4 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-calendar"></i>
																	<input
																		class="theme-search-area-section-input datePickerStart _mob-h"
																		value="Wed 06/27" type="text" placeholder="Check-in" />
																	<input
																		class="theme-search-area-section-input _desk-h mobile-picker"
																		value="2018-06-27" type="date" />
																</div>
															</div>
														</div>
														<div class="col-md-4 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-calendar"></i>
																	<input
																		class="theme-search-area-section-input datePickerEnd _mob-h"
																		value="Mon 07/02" type="text" placeholder="Check-out" />
																	<input
																		class="theme-search-area-section-input _desk-h mobile-picker"
																		value="2018-07-02" type="date" />
																</div>
															</div>
														</div>
														<div class="col-md-4 ">
															<div
																class="theme-search-area-section theme-search-area-section-line quantity-selector"
																data-increment="Guests">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-people"></i>
																	<input class="theme-search-area-section-input"
																		value="2 Guests" type="text" />
																	<div class="quantity-selector-box"
																		id="RoomSearchGuests">
																		<div class="quantity-selector-inner">
																			<p class="quantity-selector-title">Guests</p>
																			<ul class="quantity-selector-controls">
																				<li class="quantity-selector-decrement"><a
																					href="#">&#45;</a></li>
																				<li class="quantity-selector-current">1</li>
																				<li class="quantity-selector-increment"><a
																					href="#">&#43;</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-1 ">
													<button
														class="theme-search-area-submit _mt-0 _fs-xl theme-search-area-submit-curved theme-search-area-submit-primary theme-search-area-submit-glow">&rarr;</button>
												</div>
											</div>
										</div>
										<div class="theme-search-area-options _mob-h clearfix">
											<h5 class="theme-search-area-options-title">Apartment
												type</h5>
											<div class="btn-group theme-search-area-options-list"
												data-toggle="buttons">
												<label class="btn btn-primary active"> <input
													type="radio" name="room-options" id="room-option-1" checked />Any
												</label> <label class="btn btn-primary"> <input type="radio"
													name="room-options" id="room-option-2" />Entire Home
												</label> <label class="btn btn-primary"> <input type="radio"
													name="room-options" id="room-option-3" />Private Room
												</label> <label class="btn btn-primary"> <input type="radio"
													name="room-options" id="room-option-4" />Shared Space
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="SearchAreaTabs-3" role="tab-panel">
									<div class="theme-search-area theme-search-area-white">
										<div class="theme-search-area-form">
											<div class="row" data-gutter="30">
												<div class="col-md-5 ">
													<div class="row" data-gutter="30">
														<div class="col-md-6 ">
															<div
																class="theme-search-area-section first theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-location-pin"></i>
																	<input
																		class="theme-search-area-section-input typeahead"
																		type="text" placeholder="Departure"
																		data-provide="typeahead" />
																</div>
															</div>
														</div>
														<div class="col-md-6 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-location-pin"></i>
																	<input
																		class="theme-search-area-section-input typeahead"
																		type="text" placeholder="Arrival"
																		data-provide="typeahead" />
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-6 ">
													<div class="row" data-gutter="30">
														<div class="col-md-4 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-calendar"></i>
																	<input
																		class="theme-search-area-section-input datePickerStart _mob-h"
																		value="Wed 06/27" type="text" placeholder="Check-in" />
																	<input
																		class="theme-search-area-section-input _desk-h mobile-picker"
																		value="2018-06-27" type="date" />
																</div>
															</div>
														</div>
														<div class="col-md-4 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-calendar"></i>
																	<input
																		class="theme-search-area-section-input datePickerEnd _mob-h"
																		value="Mon 07/02" type="text" placeholder="Check-out" />
																	<input
																		class="theme-search-area-section-input _desk-h mobile-picker"
																		value="2018-07-02" type="date" />
																</div>
															</div>
														</div>
														<div class="col-md-4 ">
															<div
																class="theme-search-area-section theme-search-area-section-line quantity-selector"
																data-increment="Passengers">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-people"></i>
																	<input class="theme-search-area-section-input"
																		value="1 Passenger" type="text" />
																	<div class="quantity-selector-box"
																		id="FlySearchPassengers">
																		<div class="quantity-selector-inner">
																			<p class="quantity-selector-title">Passengers</p>
																			<ul class="quantity-selector-controls">
																				<li class="quantity-selector-decrement"><a
																					href="#">&#45;</a></li>
																				<li class="quantity-selector-current">1</li>
																				<li class="quantity-selector-increment"><a
																					href="#">&#43;</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-1 ">
													<button
														class="theme-search-area-submit _mt-0 _fs-xl theme-search-area-submit-curved theme-search-area-submit-primary theme-search-area-submit-glow">&rarr;</button>
												</div>
											</div>
										</div>
										<div class="theme-search-area-options clearfix">
											<div class="btn-group theme-search-area-options-list"
												data-toggle="buttons">
												<label class="btn btn-primary active"> <input
													type="radio" name="flight-options" id="flight-option-1"
													checked />Round Trip
												</label> <label class="btn btn-primary"> <input type="radio"
													name="flight-options" id="flight-option-2" />One Way
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="SearchAreaTabs-4" role="tab-panel">
									<div class="theme-search-area theme-search-area-white">
										<div class="theme-search-area-form">
											<div class="row" data-gutter="30">
												<div class="col-md-7 ">
													<div class="row" data-gutter="30">
														<div class="col-md-6 ">
															<div
																class="theme-search-area-section first theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-location-pin"></i>
																	<input
																		class="theme-search-area-section-input typeahead"
																		type="text" placeholder="Pick up location"
																		data-provide="typeahead" />
																</div>
															</div>
														</div>
														<div class="col-md-6 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-location-pin"></i>
																	<input
																		class="theme-search-area-section-input typeahead"
																		type="text" placeholder="Drop off location"
																		data-provide="typeahead" />
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-2 ">
													<div
														class="theme-search-area-section theme-search-area-section-line">
														<div class="theme-search-area-section-inner">
															<i
																class="theme-search-area-section-icon lin lin-calendar"></i>
															<input
																class="theme-search-area-section-input datePickerStart _mob-h"
																value="Wed 06/27" type="text" placeholder="Check-in" />
															<input
																class="theme-search-area-section-input _desk-h mobile-picker"
																value="2018-06-27" type="date" />
														</div>
													</div>
												</div>
												<div class="col-md-2 ">
													<div
														class="theme-search-area-section theme-search-area-section-line">
														<div class="theme-search-area-section-inner">
															<i
																class="theme-search-area-section-icon lin lin-calendar"></i>
															<input
																class="theme-search-area-section-input datePickerEnd _mob-h"
																value="Mon 07/02" type="text" placeholder="Check-out" />
															<input
																class="theme-search-area-section-input _desk-h mobile-picker"
																value="2018-07-02" type="date" />
														</div>
													</div>
												</div>
												<div class="col-md-1 ">
													<button
														class="theme-search-area-submit _mt-0 _fs-xl theme-search-area-submit-curved theme-search-area-submit-primary theme-search-area-submit-glow">&rarr;</button>
												</div>
											</div>
										</div>
										<div class="theme-search-area-options _mob-h clearfix">
											<h5 class="theme-search-area-options-title">Car type</h5>
											<div class="btn-group theme-search-area-options-list"
												data-toggle="buttons">
												<label class="btn btn-primary active"> <input
													type="radio" name="car-options" id="car-option-1" checked />Any
												</label> <label class="btn btn-primary"> <input type="radio"
													name="car-options" id="car-option-2" />Sedan
												</label> <label class="btn btn-primary"> <input type="radio"
													name="car-options" id="car-option-3" />Hatchback
												</label> <label class="btn btn-primary"> <input type="radio"
													name="car-options" id="car-option-4" />SUV
												</label> <label class="btn btn-primary"> <input type="radio"
													name="car-options" id="car-option-5" />Crossover
												</label> <label class="btn btn-primary"> <input type="radio"
													name="car-options" id="car-option-6" />Coupe
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="SearchAreaTabs-5" role="tab-panel">
									<div class="theme-search-area theme-search-area-white">
										<div class="theme-search-area-form">
											<div class="row" data-gutter="30">
												<div class="col-md-4 ">
													<div
														class="theme-search-area-section first theme-search-area-section-line">
														<div class="theme-search-area-section-inner">
															<i
																class="theme-search-area-section-icon lin lin-location-pin"></i>
															<input class="theme-search-area-section-input typeahead"
																type="text" placeholder="Destination"
																data-provide="typeahead" />
														</div>
													</div>
												</div>
												<div class="col-md-7 ">
													<div class="row" data-gutter="30">
														<div class="col-md-4 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-calendar"></i>
																	<input
																		class="theme-search-area-section-input datePickerStart _mob-h"
																		value="Wed 06/27" type="text" placeholder="Check-in" />
																	<input
																		class="theme-search-area-section-input _desk-h mobile-picker"
																		value="2018-06-27" type="date" />
																</div>
															</div>
														</div>
														<div class="col-md-4 ">
															<div
																class="theme-search-area-section theme-search-area-section-line">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-calendar"></i>
																	<input
																		class="theme-search-area-section-input datePickerEnd _mob-h"
																		value="Mon 07/02" type="text" placeholder="Check-out" />
																	<input
																		class="theme-search-area-section-input _desk-h mobile-picker"
																		value="2018-07-02" type="date" />
																</div>
															</div>
														</div>
														<div class="col-md-4 ">
															<div
																class="theme-search-area-section theme-search-area-section-line quantity-selector"
																data-increment="Guests">
																<div class="theme-search-area-section-inner">
																	<i
																		class="theme-search-area-section-icon lin lin-people"></i>
																	<input class="theme-search-area-section-input"
																		value="2 Guests" type="text" />
																	<div class="quantity-selector-box" id="ExpSearchGuests">
																		<div class="quantity-selector-inner">
																			<p class="quantity-selector-title">Guests</p>
																			<ul class="quantity-selector-controls">
																				<li class="quantity-selector-decrement"><a
																					href="#">&#45;</a></li>
																				<li class="quantity-selector-current">1</li>
																				<li class="quantity-selector-increment"><a
																					href="#">&#43;</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-1 ">
													<button
														class="theme-search-area-submit _mt-0 _fs-xl theme-search-area-submit-curved theme-search-area-submit-primary theme-search-area-submit-glow">&rarr;</button>
												</div>
											</div>
										</div>
										<div class="theme-search-area-options _mob-h clearfix">
											<h5 class="theme-search-area-options-title">Type</h5>
											<div class="btn-group theme-search-area-options-list"
												data-toggle="buttons">
												<label class="btn btn-primary active"> <input
													type="radio" name="exp-options" id="exp-option-1" checked />Any
												</label> <label class="btn btn-primary"> <input type="radio"
													name="exp-options" id="exp-option-2" />Experiences
												</label> <label class="btn btn-primary"> <input type="radio"
													name="exp-options" id="exp-option-3" />Immersions
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="theme-footer-abs">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<ul class="theme-footer-abs-nav">
							<li><a href="hotel-index-1.html">Hotels</a></li>
							<li><a href="flight-index-1.html">Flights</a></li>
							<li><a href="room-index-1.html">Homes</a></li>
							<li><a href="car-index-1.html">Cars</a></li>
							<li><a href="exp-index-1.html">Experiences</a></li>
							<li><a href="about-us.html">About Us</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
						<p class="theme-footer-abs-copyright">
							Copyright &copy; 2018 <a href="#">Bookify</a>. All rights
							reserved.
						</p>
					</div>
					<div class="col-md-6">
						<ul class="theme-social-list theme-footer-abs-social">
							<li><a class="fa fa-facebook" href="#"></a></li>
							<li><a class="fa fa-twitter" href="#"></a></li>
							<li><a class="fa fa-google" href="#"></a></li>
							<li><a class="fa fa-instagram" href="#"></a></li>
						</ul>
					</div>
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
					<h2 class="modal-title" style="font-weight: bold">로그인</h2>
				</div>
				<div class="modal-body">
					<div id="normal" class="tab-pane fade in active">
						<br>
						<form class="form-horizontal" action="memberLogin.do"
							method="post">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">아이디</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="userId"
										name="userId" placeholder="아이디">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label">비밀번호</label>
								<div class="col-sm-6">
									<input type="password" class="form-control" id="pw" name="pw"
										placeholder="비밀번호">
								</div>
							</div>
							<!--   						<div class="form-group"> -->
							<!--     						<div class="col-sm-offset-3 col-sm-10"> -->
							<!--       							<div class="checkbox"> -->
							<!--        						 	<label> -->
							<!--           						<input type="checkbox">로그인 유지 -->
							<!--         						</label> -->
							<!--       							</div> -->
							<!--     						</div> -->
							<!--  					 	</div> -->
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-10">
									<span id="msgBox"> </span>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-6">
									<input type="button" class="btn btn-primary btn-lg btn-block" id="memberLogin" value="확인"/>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-6">
									<a
										href="https://kauth.kakao.com/oauth/authorize?client_id=1ac3e7706d2467a442f2585681668ea0&redirect_uri=http://localhost:8080/FinalBitCamp/kakaoLogin.do&response_type=code&scope=account_email"
										id="kakaoBtn"><img alt="" src="img/kakao.png"
										style="width: 270px; height: 46"></a>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-6">
									<a href="naverLogin.do" id="naverBtn"><img alt=""
										src="img/naver.PNG" style="width: 270px;"></a>
								</div>
							</div>
							<br>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-6">
									<a href="memberFindingForm.do" class="col-sm-8">아이디/비밀번호 찾기</a>
									<a href="memeberJoinTerms.do" class="col-sm-4 _p-0">회원가입</a>
								</div>
							</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	<script src="js/main.js"></script>
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
</body>
</html>