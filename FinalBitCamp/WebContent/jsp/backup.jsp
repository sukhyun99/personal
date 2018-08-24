<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Travel Mate - Hotel results 1</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"	rel="stylesheet" />
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/lineicons.css" />
<link rel="stylesheet" href="css/weather-icons.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/styles.css" />
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
							<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
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
											<input class="theme-search-area-section-input" value="4 Guests" type="text" />
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
						<div class="_mob-h">
							<div class="theme-search-results-item _mb-10 theme-search-results-item-full">
								<div class="theme-search-results-item-preview">
									<a class="theme-search-results-item-mask-link" href="#searchResultsItem-" role="button"
										data-toggle="collapse" aria-expanded="false"
										aria-controls="searchResultsItem-"></a>
									<div class="row row-no-gutter row-eq-height">
										<div class="col-md-4 ">
											<div class="banner theme-search-results-item-img-full banner-">
												<div class="banner-bg" style="background-image: url(./img/315x225.png);"></div>
												<a class="banner-link" href="#"></a>
											</div>
										</div>
										<div class="col-md-8 ">
											<div class="theme-search-results-item-body">
												<div class="row row-eq-height" data-gutter="20">
													<div class="col-md-9 ">														
														<h5	class="theme-search-results-item-title theme-search-results-item-title-lg">코코비발디 글램핑</h5>
														<div class="theme-search-results-item-hotel-rating">
															<p class="theme-search-results-item-hotel-rating-title">
																<b>7.8 Good</b>
															</p>
														</div>
														<p class="theme-search-results-item-location">
															<i class="fa fa-map-marker"></i>강원도
														</p>
													</div>
													<div class="col-md-3 ">
														<div class="theme-search-results-item-book">
															<div class="theme-search-results-item-price">
																<p class="theme-search-results-item-price-tag">40.000</p>
																<p class="theme-search-results-item-price-sign">1박</p>
															</div>
															<a class="btn btn-primary-inverse btn-block theme-search-results-item-price-btn" href="#">상세보기</a>
															<a class="theme-search-results-item-bookmark theme-search-results-item-bookmark-bottom"	href="#"> 
																<i class="fa fa-bookmark"></i> <span>찜하기</span>
															</a>
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
					<a class="btn _tt-uc _fs-sm btn-dark btn-block btn-lg" href="#">
						캠핑장 더 보기</a>
				</div>
				<div class="col-md-5 ">
					<div class="sticky-col _mob-h">
						<div class="theme-search-results-sidebar">
							<div class="theme-search-results-sidebar-map-view">
								<a class="theme-search-results-sidebar-map-view-link" href="#"></a>
								<div class="theme-search-results-sidebar-map-view-body">
									<i
										class="fa fa-map-marker theme-search-results-sidebar-map-view-icon"></i>
									<p class="theme-search-results-sidebar-map-view-sign">Map
										View</p>
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