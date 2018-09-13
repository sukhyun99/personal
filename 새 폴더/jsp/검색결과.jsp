<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Travel Mate - Hotel results 1</title>
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
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"> <i
					class="fa fa-compass  fa-2x "></i>
				</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-main">
				<ul class="nav navbar-nav">
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<ul class="nav navbar-nav navbar-right">
						<li class="nav-item "><a class="nav-link" href="#">내 캠핑장
								등록</a></li>
						<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							data-toggle="modal" data-target="#myModal">로그인</a></li>
					</ul>


				</ul>
			</div>
		</div>
	</div>
	</nav>
	<div class="theme-hero-area front">
		<div class="theme-hero-area-bg-wrap">
			<div class="theme-hero-area-bg"
				style="background-image: url(./img/헤더.jpg);" id="hero-banner"></div>
			<!-- 헤더 -->
			<div class="theme-hero-area-mask theme-hero-area-mask-half"></div>
			<div class="blur-area" data-bg-area="#hero-banner"
				data-blur-area="#hero-search-form" data-blur="20"></div>
		</div>
		<div class="theme-hero-area-body">
			<div class="container">
				<div class="_pb-100 _pt-150 _pv-mob-50">
					<div
						class="theme-search-area _mob-h theme-search-area-stacked theme-search-area-white">

						<div class="theme-search-area-form" id="hero-search-form">
							<div class="row" data-gutter="none">
								<div class="col-md-4 ">
									<div
										class="theme-search-area-section first theme-search-area-section-curved">
										<div class="theme-search-area-section-inner">
											<i
												class="theme-search-area-section-icon lin lin-location-pin"></i>
											<input class="theme-search-area-section-input typeahead"
												value="" type="text" placeholder="search"
												data-provide="typeahead" />
										</div>
									</div>
								</div>
								<div class="col-md-4 ">
									<div class="row" data-gutter="none">
										<div class="col-md-6 ">
											<div
												class="theme-search-area-section theme-search-area-section-curved">
												<div class="theme-search-area-section-inner">
													<i class="theme-search-area-section-icon lin lin-calendar"></i>
													<input
														class="theme-search-area-section-input datePickerStart _mob-h"
														value="08/14" type="text" placeholder="Check-in" /> <input
														class="theme-search-area-section-input _desk-h mobile-picker"
														value="2018-08-14" type="date" />
												</div>
											</div>
										</div>
										<div class="col-md-6 ">
											<div
												class="theme-search-area-section theme-search-area-section-curved">
												<div class="theme-search-area-section-inner">
													<i class="theme-search-area-section-icon lin lin-calendar"></i>
													<input
														class="theme-search-area-section-input datePickerEnd _mob-h"
														value="08/15" type="text" placeholder="Check-out" /> <input
														class="theme-search-area-section-input _desk-h mobile-picker"
														value="2018-08-15" type="date" />
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-2">

									<div
										class="theme-search-area-section theme-search-area-section-curved quantity-selector"
										data-increment="Guests">
										<div class="theme-search-area-section-inner">
											<i class="theme-search-area-section-icon lin lin-people"></i>
											<input class="theme-search-area-section-input"
												value="2 Guests" type="text" />
											<div class="quantity-selector-box" id="HotelSearchGuests">
												<div class="quantity-selector-inner">
													<p class="quantity-selector-title">Guests</p>
													<ul class="quantity-selector-controls">
														<li class="quantity-selector-decrement"><a href="#">&#45;</a>
														</li>
														<li class="quantity-selector-current">1</li>
														<li class="quantity-selector-increment"><a href="#">&#43;</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<button
										class="theme-search-area-submit _mt-0 theme-search-area-submit-curved theme-search-area-submit-primary">검색</button>
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

					<div class="theme-search-results-sort-select _desk-h">
						<select>
							<option>Price</option>
							<option>Guest Rating</option>
							<option>Property Class</option>
							<option>Property Name</option>
							<option>Recommended</option>
							<option>Most Popular</option>
							<option>Trendy Now</option>
							<option>Best Deals</option>
						</select>
					</div>
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							정렬기준 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">인기순</a></li>
							<li><a href="#">낮은가격순</a></li>
							<li><a href="#">높은가격순</a></li>
						</ul>
					</div>
					<div class="theme-search-results">
						<div class="_mob-h">
							<div
								class="theme-search-results-item _mb-10 theme-search-results-item-full">
								<div class="theme-search-results-item-preview">
									<a class="theme-search-results-item-mask-link"
										href="#searchResultsItem-" role="button"
										data-toggle="collapse" aria-expanded="false"
										aria-controls="searchResultsItem-"></a>
									<div class="row row-no-gutter row-eq-height">
										<div class="col-md-4 ">
											<div
												class="banner theme-search-results-item-img-full banner-">
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
																href="#"> <i class="fa fa-bookmark"></i> <span>찜하기</span>
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="collapse theme-search-results-item-collapse"
									id="searchResultsItem-">
									<div class="theme-search-results-item-extend">
										<a class="theme-search-results-item-extend-close"
											href="#searchResultsItem-" role="button"
											data-toggle="collapse" aria-expanded="false"
											aria-controls="searchResultsItem-">&#10005;</a>
										<div class="tabbable theme-search-results-item-tabs">
											<ul class="nav nav-tabs" role="tablist">
												<li class="active" role="presentation"><a role="tab"
													data-toggle="tab" href="#tab-item--1"
													aria-controls="tab-item--1">Details</a></li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item--2" aria-controls="tab-item--2">Map</a></li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item--3" aria-controls="tab-item--3">Reviews</a>
												</li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item--4" aria-controls="tab-item--4">Similar</a>
												</li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" role="tabpanel"
													id="tab-item--1">
													<div class="row" data-gutter="20">
														<div class="col-md-6 ">
															<ul
																class="magnific-gallery theme-search-results-item-tabs-gallery">
																<li><a href="img/hotel-results/gallery/10.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/9.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/6.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/8.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/1.jpg">
																		<img src="./img/251x251.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/12.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/7.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/2.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/5.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/4.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/3.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/11.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
															</ul>
														</div>
														<div class="col-md-6 ">
															<p class="theme-search-results-item-tabs-details-desc">Good
																business hotel. Close to Starbucks. Good for sightseeing
																and close to the city center. Friendly atmosphere and
																good hotel grounds. Great valet service. Popular among
																families.</p>
															<table
																class="theme-search-results-item-tabs-details-table">
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Location</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 56%;"></div>
																		</div>
																	</th>
																	<th><b>5.6</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Clearness</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 59%;"></div>
																		</div>
																	</th>
																	<th><b>5.9</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Value
																		for Money</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 92%;"></div>
																		</div>
																	</th>
																	<th><b>9.2</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Amenities</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 50%;"></div>
																		</div>
																	</th>
																	<th><b>5</b></th>
																</tr>
															</table>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item--2">
													<div class="row" data-gutter="20">
														<div class="col-md-9 ">
															<div
																class="google-map theme-search-results-item-tabs-map"
																data-lat="40.7483624" data-lng="-73.9900896"></div>
														</div>
														<div class="col-md-3 ">
															<h3 class="theme-search-results-item-tabs-map-title">870
																7th Avenue, New York, NY</h3>
															<p class="theme-search-results-item-tabs-map-phone">+1
																216 054 0330</p>
															<ul class="theme-search-results-item-tabs-map-rates">
																<li><i
																	class="fa fa-camera theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Sightseeing</p>
																</li>
																<li><i
																	class="fa fa-cutlery theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Eating</p>
																</li>
																<li><i
																	class="fa fa-glass theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Nightlife</p>
																</li>
																<li><i
																	class="fa fa-shopping-cart theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Shopping</p>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item--3">
													<div class="theme-reviews">
														<div class="theme-reviews-list">
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Thu,
																			Jun 21</p>
																		<p class="theme-reviews-item-author">by Elizabeth
																			Wallace</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">8.6</span> <span
																				class="theme-reviews-rating-title">Excellent</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 86%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Consequat
																			cubilia nulla class lectus sit sapien est leo a curae
																			montes lectus dapibus quis augue nullam sociosqu ut
																			nisl primis neque ultricies faucibus montes class
																			cras tellus proin bibendum curae suscipit eget rutrum
																			vel per non purus varius aptent quam commodo nisi
																			dignissim est</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Wed,
																			Jun 20</p>
																		<p class="theme-reviews-item-author">by Richard
																			Jones</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">5.1</span> <span
																				class="theme-reviews-rating-title">Okay</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 51%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Neque volutpat
																			elit blandit ultrices amet metus cursus imperdiet
																			ante montes nisi faucibus accumsan vivamus lacinia
																			potenti cras magnis bibendum turpis felis inceptos
																			pulvinar tincidunt sem diam parturient magnis
																			vestibulum porta augue velit vehicula dapibus tempor
																			volutpat platea aliquet iaculis pulvinar netus
																			vivamus</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Fri,
																			Jun 15</p>
																		<p class="theme-reviews-item-author">by Frank
																			Mills</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">8.2</span> <span
																				class="theme-reviews-rating-title">Excellent</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 82%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Torquent mollis
																			dictumst sollicitudin maecenas habitasse pretium
																			lorem ante rhoncus suscipit sagittis hac sociosqu
																			sodales venenatis sapien fermentum eu tortor
																			facilisis placerat tristique</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Wed,
																			Jun 13</p>
																		<p class="theme-reviews-item-author">by Alison
																			Mackenzie</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">9.7</span> <span
																				class="theme-reviews-rating-title">Excellent</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 97%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Consectetur
																			justo per nisl auctor libero porttitor parturient
																			bibendum ultrices conubia elit fermentum leo torquent
																			bibendum magnis ad torquent felis a magnis magnis</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Tue,
																			Jun 12</p>
																		<p class="theme-reviews-item-author">by Neil
																			Davidson</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">7.5</span> <span
																				class="theme-reviews-rating-title">Good</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 75%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Potenti
																			malesuada cum donec a vitae cum ornare ipsum
																			suspendisse pretium hendrerit odio ullamcorper
																			pulvinar bibendum posuere dignissim volutpat donec
																			facilisis vitae nullam molestie donec hendrerit
																			egestas fringilla dignissim interdum luctus turpis
																			turpis nunc consequat ullamcorper non est nascetur
																			adipiscing conubia</p>
																	</div>
																</div>
															</div>
															</article>
															<div class="row">
																<div class="col-md-9 col-md-offset-3">
																	<a class="theme-reviews-more" href="#">&#x2b; More
																		Reviews</a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item--4">
													<div class="row" data-gutter="10">
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$371</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Millennium
																		Broadway Hotel - Times Square</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$163</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">The
																		Time New York</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$233</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Hudson
																		New York, Central Park</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$258</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Row
																		NYC</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
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
							<div
								class="theme-search-results-item _mb-10 theme-search-results-item-full">
								<div class="theme-search-results-item-preview">
									<a class="theme-search-results-item-mask-link"
										href="#searchResultsItem-2" role="button"
										data-toggle="collapse" aria-expanded="false"
										aria-controls="searchResultsItem-2"></a>
									<div class="row row-no-gutter row-eq-height">
										<div class="col-md-4 ">
											<div
												class="banner theme-search-results-item-img-full banner-">
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
																href="#"> <i class="fa fa-bookmark"></i> <span>찜하기</span>
															</a>
														</div>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
								<div class="collapse theme-search-results-item-collapse"
									id="searchResultsItem-2">
									<div class="theme-search-results-item-extend">
										<a class="theme-search-results-item-extend-close"
											href="#searchResultsItem-2" role="button"
											data-toggle="collapse" aria-expanded="false"
											aria-controls="searchResultsItem-2">&#10005;</a>
										<div class="tabbable theme-search-results-item-tabs">
											<ul class="nav nav-tabs" role="tablist">
												<li class="active" role="presentation"><a role="tab"
													data-toggle="tab" href="#tab-item-2-1"
													aria-controls="tab-item-2-1">Details</a></li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item-2-2" aria-controls="tab-item-2-2">Map</a></li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item-2-3" aria-controls="tab-item-2-3">Reviews</a>
												</li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item-2-4" aria-controls="tab-item-2-4">Similar</a>
												</li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" role="tabpanel"
													id="tab-item-2-1">
													<div class="row" data-gutter="20">
														<div class="col-md-6 ">
															<ul
																class="magnific-gallery theme-search-results-item-tabs-gallery">
																<li><a href="img/hotel-results/gallery/2.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/3.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/6.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/9.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/10.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/7.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/5.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/1.jpg">
																		<img src="./img/251x251.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/8.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/4.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/12.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/11.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
															</ul>
														</div>
														<div class="col-md-6 ">
															<p class="theme-search-results-item-tabs-details-desc">Good
																business hotel. Close to Starbucks. Good for sightseeing
																and close to the city center. Friendly atmosphere and
																good hotel grounds. Great valet service. Popular among
																families.</p>
															<table
																class="theme-search-results-item-tabs-details-table">
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Location</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 67%;"></div>
																		</div>
																	</th>
																	<th><b>6.7</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Clearness</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 84%;"></div>
																		</div>
																	</th>
																	<th><b>8.4</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Value
																		for Money</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 84%;"></div>
																		</div>
																	</th>
																	<th><b>8.4</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Amenities</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 56%;"></div>
																		</div>
																	</th>
																	<th><b>5.6</b></th>
																</tr>
															</table>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item-2-2">
													<div class="row" data-gutter="20">
														<div class="col-md-9 ">
															<div
																class="google-map theme-search-results-item-tabs-map"
																data-lat="40.7483624" data-lng="-73.9900896"></div>
														</div>
														<div class="col-md-3 ">
															<h3 class="theme-search-results-item-tabs-map-title">870
																7th Avenue, New York, NY</h3>
															<p class="theme-search-results-item-tabs-map-phone">+1
																194 027 0300</p>
															<ul class="theme-search-results-item-tabs-map-rates">
																<li><i
																	class="fa fa-camera theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Sightseeing</p>
																</li>
																<li><i
																	class="fa fa-cutlery theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Eating</p>
																</li>
																<li><i
																	class="fa fa-glass theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Nightlife</p>
																</li>
																<li><i
																	class="fa fa-shopping-cart theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Shopping</p>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item-2-3">
													<div class="theme-reviews">
														<div class="theme-reviews-list">
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Tue,
																			Jun 26</p>
																		<p class="theme-reviews-item-author">by Carl
																			Butler</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">6.4</span> <span
																				class="theme-reviews-rating-title">Good</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 64%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Magna ridiculus
																			ante non cursus interdum ultricies vestibulum erat
																			cum placerat proin magna felis senectus condimentum
																			mauris ut sodales ac laoreet</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Thu,
																			Jun 21</p>
																		<p class="theme-reviews-item-author">by Joseph
																			Watson</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">5.0</span> <span
																				class="theme-reviews-rating-title">Okay</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 50%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Dapibus platea
																			commodo non amet sem placerat rhoncus cras pulvinar
																			porta donec inceptos parturient rhoncus sit penatibus
																			varius lacinia bibendum aliquet vulputate quisque
																			euismod enim</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Tue,
																			Jun 19</p>
																		<p class="theme-reviews-item-author">by Minnie
																			Aviles</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">7.1</span> <span
																				class="theme-reviews-rating-title">Good</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 71%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Dictumst nostra
																			sit tempor imperdiet venenatis nostra bibendum
																			dapibus accumsan pulvinar ut sodales interdum tempus
																			est magnis ultricies est erat duis mauris lacus enim
																			fusce sociosqu conubia enim ipsum porta est nisi
																			faucibus class luctus porttitor</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Sat,
																			Jun 16</p>
																		<p class="theme-reviews-item-author">by John
																			Mathis</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">9.8</span> <span
																				class="theme-reviews-rating-title">Excellent</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 98%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Consequat leo
																			habitasse venenatis nec non iaculis et tempor vivamus
																			netus vitae ligula euismod aliquam mus augue est per
																			non lectus nulla morbi magnis sollicitudin viverra
																			luctus gravida phasellus</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Mon,
																			Jun 11</p>
																		<p class="theme-reviews-item-author">by Leah Kerr</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">7.0</span> <span
																				class="theme-reviews-rating-title">Good</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 70%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Lacus eu class
																			turpis nunc ridiculus netus vulputate nec potenti
																			posuere gravida ipsum aliquam magna inceptos
																			elementum nostra vestibulum justo dolor sociosqu odio
																			gravida rutrum conubia curabitur gravida aptent neque
																			libero maecenas tellus morbi inceptos massa feugiat
																			viverra malesuada turpis porta</p>
																	</div>
																</div>
															</div>
															</article>
															<div class="row">
																<div class="col-md-9 col-md-offset-3">
																	<a class="theme-reviews-more" href="#">&#x2b; More
																		Reviews</a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item-2-4">
													<div class="row" data-gutter="10">
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$243</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Millennium
																		Broadway Hotel - Times Square</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$260</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">The
																		Time New York</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$205</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Hudson
																		New York, Central Park</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$220</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Row
																		NYC</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
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
							<div
								class="theme-search-results-item _mb-10 theme-search-results-item-full">
								<div class="theme-search-results-item-preview">
									<a class="theme-search-results-item-mask-link"
										href="#searchResultsItem-3" role="button"
										data-toggle="collapse" aria-expanded="false"
										aria-controls="searchResultsItem-3"></a>
									<div class="row row-no-gutter row-eq-height">
										<div class="col-md-4 ">
											<div
												class="banner theme-search-results-item-img-full banner-">
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
																href="#"> <i class="fa fa-bookmark"></i> <span>찜하기</span>
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="collapse theme-search-results-item-collapse"
									id="searchResultsItem-3">
									<div class="theme-search-results-item-extend">
										<a class="theme-search-results-item-extend-close"
											href="#searchResultsItem-3" role="button"
											data-toggle="collapse" aria-expanded="false"
											aria-controls="searchResultsItem-3">&#10005;</a>
										<div class="tabbable theme-search-results-item-tabs">
											<ul class="nav nav-tabs" role="tablist">
												<li class="active" role="presentation"><a role="tab"
													data-toggle="tab" href="#tab-item-3-1"
													aria-controls="tab-item-3-1">Details</a></li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item-3-2" aria-controls="tab-item-3-2">Map</a></li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item-3-3" aria-controls="tab-item-3-3">Reviews</a>
												</li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item-3-4" aria-controls="tab-item-3-4">Similar</a>
												</li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" role="tabpanel"
													id="tab-item-3-1">
													<div class="row" data-gutter="20">
														<div class="col-md-6 ">
															<ul
																class="magnific-gallery theme-search-results-item-tabs-gallery">
																<li><a href="img/hotel-results/gallery/9.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/11.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/5.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/8.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/12.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/3.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/1.jpg">
																		<img src="./img/251x251.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/6.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/2.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/10.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/7.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/4.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
															</ul>
														</div>
														<div class="col-md-6 ">
															<p class="theme-search-results-item-tabs-details-desc">Good
																business hotel. Close to Starbucks. Good for sightseeing
																and close to the city center. Friendly atmosphere and
																good hotel grounds. Great valet service. Popular among
																families.</p>
															<table
																class="theme-search-results-item-tabs-details-table">
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Location</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 94%;"></div>
																		</div>
																	</th>
																	<th><b>9.4</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Clearness</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 51%;"></div>
																		</div>
																	</th>
																	<th><b>5.1</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Value
																		for Money</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 68%;"></div>
																		</div>
																	</th>
																	<th><b>6.8</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Amenities</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 100%;"></div>
																		</div>
																	</th>
																	<th><b>10</b></th>
																</tr>
															</table>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item-3-2">
													<div class="row" data-gutter="20">
														<div class="col-md-9 ">
															<div
																class="google-map theme-search-results-item-tabs-map"
																data-lat="40.7483624" data-lng="-73.9900896"></div>
														</div>
														<div class="col-md-3 ">
															<h3 class="theme-search-results-item-tabs-map-title">870
																7th Avenue, New York, NY</h3>
															<p class="theme-search-results-item-tabs-map-phone">+1
																001 657 9521</p>
															<ul class="theme-search-results-item-tabs-map-rates">
																<li><i
																	class="fa fa-camera theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Sightseeing</p>
																</li>
																<li><i
																	class="fa fa-cutlery theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Eating</p>
																</li>
																<li><i
																	class="fa fa-glass theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Nightlife</p>
																</li>
																<li><i
																	class="fa fa-shopping-cart theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Shopping</p>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item-3-3">
													<div class="theme-reviews">
														<div class="theme-reviews-list">
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Thu,
																			Jun 21</p>
																		<p class="theme-reviews-item-author">by Carol
																			Blevins</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">8.4</span> <span
																				class="theme-reviews-rating-title">Excellent</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 84%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Laoreet integer
																			parturient quisque vel nascetur tempor nunc odio
																			fusce hendrerit euismod enim netus sem pretium donec
																			sodales mauris semper</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Sun,
																			Jun 17</p>
																		<p class="theme-reviews-item-author">by Blake
																			Abraham</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">8.8</span> <span
																				class="theme-reviews-rating-title">Excellent</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 88%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Pellentesque
																			porta vitae eget nec non taciti ullamcorper vitae
																			curabitur dapibus nascetur vestibulum torquent risus
																			sem ipsum nisi dignissim ornare pretium fermentum
																			sodales etiam libero quisque risus auctor quisque
																			potenti blandit lacinia interdum at parturient
																			volutpat pharetra mauris</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Sun,
																			Jun 10</p>
																		<p class="theme-reviews-item-author">by Joseph
																			Hudson</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">5.7</span> <span
																				class="theme-reviews-rating-title">Okay</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 57%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Nibh sociis
																			mattis pellentesque magna malesuada fusce accumsan
																			interdum volutpat placerat magna dui feugiat litora
																			donec sagittis suscipit sed lectus torquent conubia
																			justo risus primis sollicitudin lacinia consectetur
																			habitasse sociis dui vehicula per pretium non cursus</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Fri,
																			Jun 08</p>
																		<p class="theme-reviews-item-author">by Dylan
																			Taylor</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">7.5</span> <span
																				class="theme-reviews-rating-title">Good</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 75%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Porttitor
																			montes cubilia aptent id habitasse a aptent bibendum
																			non duis faucibus nam inceptos vel malesuada eros
																			augue parturient ligula pharetra ad leo consequat
																			dignissim tellus lobortis maecenas pretium netus
																			mauris lacinia convallis pellentesque luctus mauris
																			ad luctus natoque commodo class sagittis ipsum
																			parturient dignissim hendrerit curae libero leo</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Wed,
																			Jun 06</p>
																		<p class="theme-reviews-item-author">by Sarah
																			Slater</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">7.0</span> <span
																				class="theme-reviews-rating-title">Good</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 70%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Id laoreet
																			platea suspendisse vel posuere gravida mi sem laoreet
																			fermentum egestas class mattis nibh enim venenatis
																			aliquet at tempus curae tristique elementum interdum
																			urna lorem consequat leo lacus lacinia lorem semper
																			suspendisse dapibus phasellus semper tempor
																			adipiscing gravida</p>
																	</div>
																</div>
															</div>
															</article>
															<div class="row">
																<div class="col-md-9 col-md-offset-3">
																	<a class="theme-reviews-more" href="#">&#x2b; More
																		Reviews</a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item-3-4">
													<div class="row" data-gutter="10">
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$443</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Millennium
																		Broadway Hotel - Times Square</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$409</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">The
																		Time New York</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$210</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Hudson
																		New York, Central Park</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$212</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Row
																		NYC</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
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
							<div
								class="theme-search-results-item _mb-10 theme-search-results-item-full">
								<div class="theme-search-results-item-preview">
									<a class="theme-search-results-item-mask-link"
										href="#searchResultsItem-4" role="button"
										data-toggle="collapse" aria-expanded="false"
										aria-controls="searchResultsItem-4"></a>
									<div class="row row-no-gutter row-eq-height">
										<div class="col-md-4 ">
											<div
												class="banner theme-search-results-item-img-full banner-">
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
																href="#"> <i class="fa fa-bookmark"></i> <span>찜하기</span>
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="collapse theme-search-results-item-collapse"
									id="searchResultsItem-4">
									<div class="theme-search-results-item-extend">
										<a class="theme-search-results-item-extend-close"
											href="#searchResultsItem-4" role="button"
											data-toggle="collapse" aria-expanded="false"
											aria-controls="searchResultsItem-4">&#10005;</a>
										<div class="tabbable theme-search-results-item-tabs">
											<ul class="nav nav-tabs" role="tablist">
												<li class="active" role="presentation"><a role="tab"
													data-toggle="tab" href="#tab-item-4-1"
													aria-controls="tab-item-4-1">Details</a></li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item-4-2" aria-controls="tab-item-4-2">Map</a></li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item-4-3" aria-controls="tab-item-4-3">Reviews</a>
												</li>
												<li role="presentation"><a role="tab" data-toggle="tab"
													href="#tab-item-4-4" aria-controls="tab-item-4-4">Similar</a>
												</li>
											</ul>
											<div class="tab-content">
												<div class="tab-pane active" role="tabpanel"
													id="tab-item-4-1">
													<div class="row" data-gutter="20">
														<div class="col-md-6 ">
															<ul
																class="magnific-gallery theme-search-results-item-tabs-gallery">
																<li><a href="img/hotel-results/gallery/8.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/5.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/6.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/3.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/4.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/11.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/2.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/9.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/12.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/1.jpg">
																		<img src="./img/251x251.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/10.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
																<li><a href="img/hotel-results/gallery/7.jpg">
																		<img src="./img/100x100.png"
																		alt="Image Alternative text" title="Image Title" />
																</a></li>
															</ul>
														</div>
														<div class="col-md-6 ">
															<p class="theme-search-results-item-tabs-details-desc">Good
																business hotel. Close to Starbucks. Good for sightseeing
																and close to the city center. Friendly atmosphere and
																good hotel grounds. Great valet service. Popular among
																families.</p>
															<table
																class="theme-search-results-item-tabs-details-table">
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Location</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 79%;"></div>
																		</div>
																	</th>
																	<th><b>7.9</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Clearness</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 63%;"></div>
																		</div>
																	</th>
																	<th><b>6.3</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Value
																		for Money</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 80%;"></div>
																		</div>
																	</th>
																	<th><b>8</b></th>
																</tr>
																<tr>
																	<th
																		class="theme-search-results-item-tabs-details-table-title">Amenities</th>
																	<th
																		class="theme-search-results-item-tabs-details-table-value">
																		<div
																			class="theme-search-results-item-tabs-details-table-value-bar">
																			<div style="width: 78%;"></div>
																		</div>
																	</th>
																	<th><b>7.8</b></th>
																</tr>
															</table>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item-4-2">
													<div class="row" data-gutter="20">
														<div class="col-md-9 ">
															<div
																class="google-map theme-search-results-item-tabs-map"
																data-lat="40.7483624" data-lng="-73.9900896"></div>
														</div>
														<div class="col-md-3 ">
															<h3 class="theme-search-results-item-tabs-map-title">870
																7th Avenue, New York, NY</h3>
															<p class="theme-search-results-item-tabs-map-phone">+1
																168 860 5123</p>
															<ul class="theme-search-results-item-tabs-map-rates">
																<li><i
																	class="fa fa-camera theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Sightseeing</p>
																</li>
																<li><i
																	class="fa fa-cutlery theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Eating</p>
																</li>
																<li><i
																	class="fa fa-glass theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Nightlife</p>
																</li>
																<li><i
																	class="fa fa-shopping-cart theme-search-results-item-tabs-map-rates-icon"></i>
																	<h5
																		class="theme-search-results-item-tabs-map-rates-title">
																		<b>9.9</b>Superb
																	</h5>
																	<p
																		class="theme-search-results-item-tabs-map-rates-sign">Shopping</p>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item-4-3">
													<div class="theme-reviews">
														<div class="theme-reviews-list">
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Wed,
																			Jun 20</p>
																		<p class="theme-reviews-item-author">by Carl
																			Butler</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">6.7</span> <span
																				class="theme-reviews-rating-title">Good</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 67%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Elementum eu
																			porta nulla libero arcu ultrices dictumst non proin
																			proin facilisis commodo cursus ad diam id ac iaculis
																			felis proin senectus justo orci varius cursus montes</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Fri,
																			Jun 15</p>
																		<p class="theme-reviews-item-author">by Blake
																			Abraham</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">7.1</span> <span
																				class="theme-reviews-rating-title">Good</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 71%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Pretium augue
																			phasellus penatibus elit egestas eros venenatis
																			habitasse suscipit ultricies rhoncus cum massa odio
																			massa ad platea luctus eros maecenas purus nisl
																			lectus aliquet conubia risus</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Mon,
																			Jun 11</p>
																		<p class="theme-reviews-item-author">by Minnie
																			Aviles</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">9.0</span> <span
																				class="theme-reviews-rating-title">Excellent</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 90%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Ipsum quisque
																			etiam pharetra pretium odio molestie parturient
																			interdum phasellus curae amet dignissim dictum
																			pulvinar per leo egestas justo aptent penatibus
																			litora dictum lectus scelerisque donec tempus diam
																			velit integer eget himenaeos dapibus mattis ante
																			torquent cum neque</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Thu,
																			Jun 07</p>
																		<p class="theme-reviews-item-author">by Alison
																			Mackenzie</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">6.4</span> <span
																				class="theme-reviews-rating-title">Good</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 64%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Quam venenatis
																			eget conubia cras pulvinar diam aenean torquent
																			quisque nec libero aenean euismod aptent magna
																			dictumst integer nulla molestie vitae dictum ut dui
																			dolor metus torquent aenean felis libero aenean
																			auctor justo erat dolor mus a iaculis netus torquent
																			cubilia dapibus gravida dapibus litora integer
																			pellentesque parturient sem</p>
																	</div>
																</div>
															</div>
															</article>
															<article class="theme-reviews-item">
															<div class="row" data-gutter="10">
																<div class="col-md-3 ">
																	<div class="theme-reviews-item-info">
																		<img class="theme-reviews-item-avatar"
																			src="./img/70x70.png" alt="Image Alternative text"
																			title="Image Title" />
																		<p class="theme-reviews-item-date">Reviewed Fri,
																			Jun 01</p>
																		<p class="theme-reviews-item-author">by Ava
																			McDonald</p>
																	</div>
																</div>
																<div class="col-md-9 ">
																	<div class="theme-reviews-rating">
																		<div class="theme-reviews-rating-header">
																			<span class="theme-reviews-rating-num">9.0</span> <span
																				class="theme-reviews-rating-title">Excellent</span>
																		</div>
																		<div class="theme-reviews-rating-bar">
																			<div style="width: 90%;"></div>
																		</div>
																	</div>
																	<div class="theme-reviews-item-body">
																		<p class="theme-reviews-item-text">Ridiculus
																			viverra eleifend feugiat viverra nostra ultrices
																			tempus quis class eget urna mus odio netus dui leo
																			tempor inceptos elementum gravida metus elementum ad
																			dapibus cras potenti convallis maecenas lectus
																			dapibus erat lacus interdum netus justo aenean mattis
																			facilisis sagittis nisl molestie praesent cursus
																			dapibus faucibus iaculis nulla dictumst risus</p>
																	</div>
																</div>
															</div>
															</article>
															<div class="row">
																<div class="col-md-9 col-md-offset-3">
																	<a class="theme-reviews-more" href="#">&#x2b; More
																		Reviews</a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="tab-pane" role="tabpanel" id="tab-item-4-4">
													<div class="row" data-gutter="10">
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$235</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Millennium
																		Broadway Hotel - Times Square</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$451</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">The
																		Time New York</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$248</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Hudson
																		New York, Central Park</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
																</div>
															</div>
														</div>
														<div class="col-md-3">
															<div class="theme-search-results-item-tabs-similar-item">
																<a
																	class="theme-search-results-item-tabs-similar-item-link"
																	href="#"></a> <img
																	class="theme-search-results-item-tabs-similar-item-img"
																	src="./img/200x200.png" alt="Image Alternative text"
																	title="Image Title" />
																<div
																	class="theme-search-results-item-tabs-similar-item-caption">
																	<p
																		class="theme-search-results-item-tabs-similar-item-price">$459</p>
																	<ul
																		class="theme-search-results-item-tabs-similar-item-stars">
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li class="active"><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																		<li><i class="fa fa-star"></i></li>
																	</ul>
																	<h5
																		class="theme-search-results-item-tabs-similar-item-title">Row
																		NYC</h5>
																	<a
																		class="btn btn-primary btn-block btn-sm text-center theme-search-results-item-tabs-similar-item-book">View
																		Deal</a>
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

						</div>
						<div class="_desk-h">
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">Radisson
											Martinque on Broadway</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>9.2 Excellent</b> <br />5845 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$140</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">Park
											Central New York</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>6.6 Good</b> <br />8424 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$231</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">New York
											Hilton Midtown</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>6.4 Good</b> <br />5601 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$122</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">Refinery
											Hotel</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>5 Okay</b> <br />8213 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$265</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">Viceroy
											New York</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>5 Okay</b> <br />5524 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$107</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">The Quin</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>9.3 Excellent</b> <br />9712 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$141</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">11 Howard</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>10 Excellent</b> <br />7144 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$227</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">1 Hotel
											Central Park</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>10 Excellent</b> <br />8008 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$487</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">The Pearl
											New York</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>7.7 Good</b> <br />7165 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$497</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">The
											Nolitan</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>8.1 Excellent</b> <br />7570 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$367</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">Archer
											Hotel New York</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>6.6 Good</b> <br />5377 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$417</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">The
											Kitano New York</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>7.8 Good</b> <br />8706 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$420</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">NoMo SoHo</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>6.4 Good</b> <br />9282 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$336</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">Hotel
											Hugo</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>9.1 Excellent</b> <br />9531 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$123</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">San
											Carlos Hotel</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>6.6 Good</b> <br />6166 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$278</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">The Roxy
											Hotel</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>8.9 Excellent</b> <br />6940 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$108</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div
								class="theme-search-results-item _br-3 _mb-20 _bsh-xl theme-search-results-item-grid">
								<div class="banner _h-30vh banner-">
									<div class="banner-bg"
										style="background-image: url(./img/315x225.png);"></div>
								</div>
								<div class="theme-search-results-item-grid-body">
									<a class="theme-search-results-item-mask-link" href="#"></a>
									<div class="theme-search-results-item-grid-header">
										<ul class="theme-search-results-item-hotel-stars">
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i></li>
										</ul>
										<h5 class="theme-search-results-item-title _fs">InterContinental
											New York Barclay</h5>
									</div>
									<div class="theme-search-results-item-grid-caption">
										<div class="row" data-gutter="10">
											<div class="col-xs-9 ">
												<div class="theme-search-results-item-hotel-rating">
													<p class="theme-search-results-item-hotel-rating-title">
														<b>9.6 Excellent</b> <br />5297 reviews
													</p>
												</div>
											</div>
											<div class="col-xs-3 ">
												<div class="theme-search-results-item-price">
													<p class="theme-search-results-item-price-tag">$136</p>
													<p class="theme-search-results-item-price-sign">avg/night</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="theme-search-results-mobile-filters"
							id="mobileFilters">
							<a
								class="theme-search-results-mobile-filters-btn magnific-inline"
								href="#MobileFilters"> <i class="fa fa-filter"></i>Filters
							</a>
							<div class="magnific-popup mfp-hide" id="MobileFilters">
								<div class="theme-search-results-sidebar">
									<div class="theme-search-results-sidebar-sections">
										<div class="theme-search-results-sidebar-section">
											<h5 class="theme-search-results-sidebar-section-title">Search
												Hotels</h5>
											<div class="theme-search-results-sidebar-section-search">
												<input
													class="theme-search-results-sidebar-section-search-input"
													type="text" placeholder="Hotel name, address" /> <a
													class="fa fa-search theme-search-results-sidebar-section-search-btn"
													href="#"></a>
											</div>
										</div>
										<div class="theme-search-results-sidebar-section">
											<h5 class="theme-search-results-sidebar-section-title">Hotel
												Class</h5>
											<div
												class="theme-search-results-sidebar-section-checkbox-list">
												<div
													class="theme-search-results-sidebar-section-checkbox-list-items">
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">5
																Stars</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">322</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">4
																Stars</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">245</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">3
																Stars</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">101</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">2
																Stars</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">123</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">1
																Star</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">216</span>
													</div>
												</div>
											</div>
										</div>
										<div class="theme-search-results-sidebar-section">
											<h5 class="theme-search-results-sidebar-section-title">Review
												Score</h5>
											<div
												class="theme-search-results-sidebar-section-checkbox-list">
												<div
													class="theme-search-results-sidebar-section-checkbox-list-items">
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Excellent</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">171</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Good</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">268</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Okay</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">143</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Mediocre</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">358</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Poor</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">421</span>
													</div>
												</div>
											</div>
										</div>
										<div class="theme-search-results-sidebar-section">
											<h5 class="theme-search-results-sidebar-section-title">Price</h5>
											<div class="theme-search-results-sidebar-section-price">
												<input id="price-slider-mob" name="price-slider"
													data-min="100" data-max="500" />
											</div>
										</div>
										<div class="theme-search-results-sidebar-section">
											<h5 class="theme-search-results-sidebar-section-title">Freebies</h5>
											<div
												class="theme-search-results-sidebar-section-checkbox-list">
												<div
													class="theme-search-results-sidebar-section-checkbox-list-items">
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Free
																Breakfast</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">217</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Free
																Interntet</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">362</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Free
																Parking</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">180</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Free
																Cancellation</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">292</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Free
																Shuttle</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">308</span>
													</div>
												</div>
											</div>
										</div>
										<div class="theme-search-results-sidebar-section">
											<h5 class="theme-search-results-sidebar-section-title">Neighborhoods</h5>
											<div
												class="theme-search-results-sidebar-section-checkbox-list">
												<div
													class="theme-search-results-sidebar-section-checkbox-list-items">
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Midtown</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">201</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Midtown
																East</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">314</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Hell's
																Kitchen</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">294</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Midtown
																East</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">353</span>
													</div>
												</div>
												<div class="collapse"
													id="mobile-SearchResultsCheckboxNeighborhoods">
													<div
														class="theme-search-results-sidebar-section-checkbox-list-items theme-search-results-sidebar-section-checkbox-list-items-expand">
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Flatiron District</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">403</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Financial District</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">179</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Chelsea</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">334</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">West Side</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">199</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">East Side</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">249</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Chinatown</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">297</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Little Italy</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">132</span>
														</div>
													</div>
												</div>
												<a
													class="theme-search-results-sidebar-section-checkbox-list-expand-link"
													role="button" data-toggle="collapse"
													href="#mobile-SearchResultsCheckboxNeighborhoods"
													aria-expanded="false">Show more <i
													class="fa fa-angle-down"></i>
												</a>
											</div>
										</div>
										<div class="theme-search-results-sidebar-section">
											<h5 class="theme-search-results-sidebar-section-title">Amenities</h5>
											<div
												class="theme-search-results-sidebar-section-checkbox-list">
												<div
													class="theme-search-results-sidebar-section-checkbox-list-items">
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Air-conditioned</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">488</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Airport
																Shuttle</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">212</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Fitness</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">268</span>
													</div>
													<div
														class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
														<label class="icheck-label"> <input class="icheck"
															type="checkbox" /> <span class="icheck-title">Wi-Fi</span>
														</label> <span
															class="theme-search-results-sidebar-section-checkbox-list-amount">318</span>
													</div>
												</div>
												<div class="collapse"
													id="mobile-SearchResultsCheckboxAmenities">
													<div
														class="theme-search-results-sidebar-section-checkbox-list-items theme-search-results-sidebar-section-checkbox-list-items-expand">
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Non-smoking</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">115</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Parking</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">101</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Pet Friendly</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">216</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Pool</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">259</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Restaurant</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">480</span>
														</div>
														<div
															class="checkbox theme-search-results-sidebar-section-checkbox-list-item">
															<label class="icheck-label"> <input
																class="icheck" type="checkbox" /> <span
																class="icheck-title">Spa</span>
															</label> <span
																class="theme-search-results-sidebar-section-checkbox-list-amount">377</span>
														</div>
													</div>
												</div>
												<a
													class="theme-search-results-sidebar-section-checkbox-list-expand-link"
													role="button" data-toggle="collapse"
													href="#mobile-SearchResultsCheckboxAmenities"
													aria-expanded="false">Show more <i
													class="fa fa-angle-down"></i>
												</a>
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
	
	  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
       <div class="modal-content">
      	<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title" style="font-weight : bold">로그인</h2>
        </div>
        <div class="modal-body">
        	<div id="normal" class="tab-pane fade in active"><br>
        		<form class="form-horizontal" action="" method="post">
        				<div class="form-group">
        					<label for="inputEmail3" class="col-sm-3 control-label">아이디</label>
    						<div class="col-sm-6">
      						<input type="text" class="form-control" id="id" placeholder="아이디">
      						</div>
      					</div>
      					<div class="form-group">
    						<label for="inputPassword3" class="col-sm-3 control-label">비밀번호</label>
   							<div class="col-sm-6">
      						<input type="password" class="form-control" id="inputPassword3" placeholder="비밀번호">
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
      						<button type="submit" class="btn btn-primary btn-lg btn-block">확인</button>
   					 		</div>	
        				</div>
        				<div class="form-group">
    						<div class="col-sm-offset-3 col-sm-6">
      						<a href="#" id="kakaoBtn"><img alt="" src="img/카카오.png" style="width : 270px; height: 46"></a>
   					 		</div>	
        				</div>
        				<div class="form-group">
    						<div class="col-sm-offset-3 col-sm-6">
      						<a href="#" id="naverBtn"><img alt="" src="img/네이버.png" style="width : 270px;"></a>
   					 		</div>	
        				</div><br>
        						<div class="form-group">
    						<div class="col-sm-offset-3 col-sm-6" >
      						<a href="#" class="col-sm-8">아이디/비밀번호 찾기</a>
      						<a href="#" class="col-sm-4 _p-0">회원가입</a>
   					 		</div>	
        				</div>
        		</form>로그인폼
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
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