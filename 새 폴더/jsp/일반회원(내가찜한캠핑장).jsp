<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Travel Mate - Account</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"
	rel="stylesheet" />
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/lineicons.css" />
<link rel="stylesheet" href="css/weather-icons.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/styles.css" />
<style>
.pagination {
	display: block;
	text-align: center;
}

.pagination>li>a {
	float: none;
}
</style>
</head>

<body>

<nav class="navbar navbar-default navbar-inverse navbar-theme"
		id="main-nav">
		<div class="container">
			<div class="navbar-inner nav">
				<div class="navbar-header">
					<button class="navbar-toggle collapsed" data-target="#navbar-main"
						data-toggle="collapse" type="button" area-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"> <i
						class="fa fa-compass  fa-2x "></i>
					</a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-main">

					<ul class="nav navbar-nav navbar-right">
						<li class="nav-item "><a class="nav-link" href="#">내 캠핑장
								등록</a></li>
						<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
						<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
					</ul>

				</div>
			</div>
		</div>
	</nav>
	<div
		class="theme-page-section theme-page-section-gray theme-page-section-lg">
		<div class="container">
			<div class="row">
				<div class="col-md-2-5 ">
					<div class="theme-account-sidebar">
						<div class="theme-account-avatar">
							<img class="theme-account-avatar-img" src="./img/70x70.png"
								alt="Image Alternative text" title="Image Title" />
							<p class="theme-account-avatar-name">
								전다혜 님 <br> 마일리지 : 500
							</p>
						</div>
						<nav class="theme-account-nav">
							<ul class="theme-account-nav-list">
								<li><a href="#"> <i class="fa fa-history"></i>나의 예약
								</a></li>
								<li><a href="#"> <i class="fa fa-bell"></i>내가 작성한 글
								</a></li>
								<li class="active"><a href="#"> <i
										class="fa fa-bookmark"></i>내가 찜한 캠핑장
								</a></li>
								<li><a href="#"> <i class="fa fa-user-circle-o"></i>내
										정보 수정
								</a></li>

							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-8 ">
					<div class="container">
						<h2 style="margin-top: 10px;">
							<b>내가 찜한 캠핑장</b>
						</h2>
						<hr class="container">
					</div>



					<h1 class="theme-account-page-title"></h1>

					<div
						class="theme-search-results-item _mb-10 theme-search-results-item-full">
						<div class="theme-search-results-item-preview">
							<a class="theme-search-results-item-mask-link"
								href="#searchResultsItem-" role="button" data-toggle="collapse"
								aria-expanded="false" aria-controls="searchResultsItem-"></a>


							<div class="row row-no-gutter row-eq-height">

								<div class="col-md-4 ">
									<div class="banner theme-search-results-item-img-full banner-">

										<div class="banner-bg"
											style="background-image: url(./img/315x225.png);"></div>
										<a class="banner-link" href="#"></a>
									</div>
								</div>

								<div class="col-md-8 ">
									<div class="theme-search-results-item-body">
										<div class="row row-eq-height" data-gutter="20">
											<div class="col-md-9 ">
												<ul class="theme-search-results-item-hotel-stars">
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
												</ul>
												<h5
													class="theme-search-results-item-title theme-search-results-item-title-lg">
													코코비발디 글램핑</h5>
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
													<a
														class="btn btn-primary-inverse btn-block theme-search-results-item-price-btn"
														href="#">상세보기</a> <a
														class="theme-search-results-item-bookmark theme-search-results-item-bookmark-bottom"
														href="#"> <i class="fa fa-bookmark"></i> <span>찜하기
															취소</span>
													</a> </a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div
						class="theme-search-results-item _mb-10 theme-search-results-item-full">
						<div class="theme-search-results-item-preview">
							<a class="theme-search-results-item-mask-link"
								href="#searchResultsItem-" role="button" data-toggle="collapse"
								aria-expanded="false" aria-controls="searchResultsItem-"></a>
							<div class="row row-no-gutter row-eq-height">
								<div class="col-md-4 ">
									<div class="banner theme-search-results-item-img-full banner-">
										<div class="banner-bg"
											style="background-image: url(./img/315x225.png);"></div>
										<a class="banner-link" href="#"></a>
									</div>
								</div>
								<div class="col-md-8 ">
									<div class="theme-search-results-item-body">
										<div class="row row-eq-height" data-gutter="20">
											<div class="col-md-9 ">
												<ul class="theme-search-results-item-hotel-stars">
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
												</ul>
												<h5
													class="theme-search-results-item-title theme-search-results-item-title-lg">
													코코비발디 글램핑</h5>
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
													<a
														class="btn btn-primary-inverse btn-block theme-search-results-item-price-btn"
														href="#">상세보기</a> <a
														class="theme-search-results-item-bookmark theme-search-results-item-bookmark-bottom"
														href="#"> <i class="fa fa-bookmark"></i> <span>찜하기
															취소</span>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>




					<div
						class="theme-search-results-item _mb-10 theme-search-results-item-full">
						<div class="theme-search-results-item-preview">
							<a class="theme-search-results-item-mask-link"
								href="#searchResultsItem-" role="button" data-toggle="collapse"
								aria-expanded="false" aria-controls="searchResultsItem-"></a>
							<div class="row row-no-gutter row-eq-height">
								<div class="col-md-4 ">
									<div class="banner theme-search-results-item-img-full banner-">
										<div class="banner-bg"
											style="background-image: url(./img/315x225.png);"></div>
										<a class="banner-link" href="#"></a>
									</div>
								</div>
								<div class="col-md-8 ">
									<div class="theme-search-results-item-body">
										<div class="row row-eq-height" data-gutter="20">
											<div class="col-md-9 ">
												<ul class="theme-search-results-item-hotel-stars">
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
													<li><i class="fa fa-star"></i></li>
												</ul>
												<h5
													class="theme-search-results-item-title theme-search-results-item-title-lg">
													코코비발디 글램핑</h5>
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
													<a
														class="btn btn-primary-inverse btn-block theme-search-results-item-price-btn"
														href="#">상세보기</a> <a
														class="theme-search-results-item-bookmark theme-search-results-item-bookmark-bottom"
														href="#"> <i class="fa fa-bookmark"></i> <span>찜하기
															취소</span>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="a" style="position: absolute; right: 0;">
						<button type="submit" class="btn btn-primary">선택삭제</button>
						<button type="submit" class="btn btn-primary">전체삭제</button>
					</div>
					&emsp;

				</div>
			</div>

			<div class="container">
				<ul class="pagination">
				
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				</ul>

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
							<p>Rutrum ultrices euismod class ad eu senectus urna vel
								magnis mi donec lorem suscipit iaculis</p>
							<p>Lorem fringilla nullam venenatis ultrices cubilia feugiat
								cursus turpis sed est mi magna tempus in</p>
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
				<div class="col-md-4"></div>
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