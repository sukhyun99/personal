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

<!--     <link href="datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css"> -->
<!--         <script src="datepicker/dist/js/datepicker.min.js"></script> -->

	<!-- air datpicker -->
        <!-- Include English language -->
<!--         <script src="datepicker/dist/js/i18n/datepicker.en.js"></script> -->
    
<!--     <link href="datepicker/dist/css/datepicker.min.css" rel="stylesheet" type="text/css"> -->
    
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
                <li><a href="">로그인</a></li>
            </ul>
          </div>
          
        </div>
      </div>
    </nav>
    <div class="theme-hero-area">
      <div class="theme-hero-area-bg-wrap">
      	<input type="hidden" class="campId" name="campId" value="${campId }">
      	<input type="hidden" class="sellerId" name="sellerId" value="${sellerId }">
        <div class="theme-hero-area-bg" style="background-image:url(./img/campingsite/camping1.jpg);"></div>
        <div class="theme-hero-area-mask theme-hero-area-mask-half"></div>
        <div class="theme-hero-area-inner-shadow"></div>
      </div>
      <div class="theme-hero-area-body">
        <div class="container">
          <div class="theme-item-page-header _pt-300 _pb-50 theme-item-page-header-white">
            <div class="theme-item-page-header-body">
              <ul class="theme-item-page-header-stars">
                <li>
                  <i class="fa fa-star"></i>
                </li>
                <li>
                  <i class="fa fa-star"></i>
                </li>
                <li>
                  <i class="fa fa-star"></i>
                </li>
              </ul>
              <h1 class="theme-item-page-header-title">${campName }</h1>
              <ul class="theme-breadcrumbs">
                <li>
	                <span>
	                    <i class="campAddr fas fa-map-marker-alt"></i>
	                   	 ${campAddr}
	                </span>
	            </li>
              </ul>
              <a class="btn _tt-uc _ls-0 _mt-30 _p-15 magnific-gallery-link btn-default btn-white" data-items="jsp/img/campingsite/tm-img-01.jpg,./img/campingsite/tm-img-06.jpg,./img/campingsite/tm-img-07.jpg" href="#">
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
                          <tr>
                            <td class="theme-item-page-rooms-table-type" name="siteId" value="${siteId }">
                              <h5 class="theme-item-page-rooms-table-type-title">사이트 A</h5>
	                              <ul class="theme-item-page-rooms-table-type-feature-list">
	                                <li>
	                                  <span class="camp-season1" value="성수기">성</span>
	                                  <span>1박 40,000원</span>
	                                </li>
	                                
	                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-guests-count">
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-options-list">
                                <li><span class="campSiteStock">${campSiteStock }</span>자리 가능</li>
                              </ul>
                            </td>
                            <td class="theme-item-page-rooms-table-price">
                              <div>
                                <div class="theme-item-page-rooms-table-price-night">
                                  <p class="theme-item-page-rooms-table-price-sign">1박</p>
                                  <p class="theme-item-page-rooms-table-price-night-amount">
                                  	<i class="fas fa-won-sign"></i>40,000
                                  </p>
                                </div>
                              </div>
                            </td>
                            <td>
                              <a class="btn btn-primary-inverse btn-block btn-booking-form">예약</a>
                            </td>
                          </tr>
                          <tr>
                            <td class="theme-item-page-rooms-table-type">
                              <h5 class="theme-item-page-rooms-table-type-title">Superior King Room</h5>
                              <img class="theme-item-page-rooms-table-type-img" src="./img/350x232.png" alt="Image Alternative text" title="Image Title"/>
                              <ul class="theme-item-page-rooms-table-type-feature-list">
                                <li>
                                  <i class="fa fa-bed theme-item-page-rooms-table-type-feature-list-icon"></i>1 King bed
                                </li>
                                <li>
                                  <i class="fa fa-arrows-h theme-item-page-rooms-table-type-feature-list-icon"></i>270 squre feet
                                </li>
                                <li>
                                  <i class="fa fa-shower theme-item-page-rooms-table-type-feature-list-icon"></i>Private bathroom
                                </li>
                                <li>
                                  <i class="fa fa-wifi theme-item-page-rooms-table-type-feature-list-icon"></i>Free Wifi
                                </li>
                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-guests-count">
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-options-list">
                                <li>Non-refundable</li>
                                <li>Special conditions,
                                  <br/>pay when you stay
                                </li>
                                <li>Breakfast $30</li>
                              </ul>
                            </td>
                            <td class="theme-item-page-rooms-table-price">
                              <div>
                                <div class="theme-item-page-rooms-table-price-night">
                                  <p class="theme-item-page-rooms-table-price-sign">Per night</p>
                                  <p class="theme-item-page-rooms-table-price-night-amount">$173</p>
                                </div>
                                <div class="theme-item-page-rooms-table-price-total">
                                  <p class="theme-item-page-rooms-table-price-sign">Total price
                                    <br/>for 5 nights
                                  </p>
                                  <p class="theme-item-page-rooms-table-price-total-amount">$865</p>
                                </div>
                              </div>
                              <p class="theme-item-page-rooms-table-price-note">* Discounts already
                                <br/>included in price.
                              </p>
                            </td>
                            <td>
                              <a class="btn btn-primary-inverse btn-block">Book now</a>
                              <p class="theme-item-page-rooms-table-booking-note">No booking or
                                <br/>credit card fees!
                              </p>
                            </td>
                          </tr>
                          <tr>
                            <td class="theme-item-page-rooms-table-type">
                              <h5 class="theme-item-page-rooms-table-type-title">Deluxe King Room</h5>
                              <img class="theme-item-page-rooms-table-type-img" src="./img/350x232.png" alt="Image Alternative text" title="Image Title"/>
                              <ul class="theme-item-page-rooms-table-type-feature-list">
                                <li>
                                  <i class="fa fa-bed theme-item-page-rooms-table-type-feature-list-icon"></i>1 King bed
                                </li>
                                <li>
                                  <i class="fa fa-arrows-h theme-item-page-rooms-table-type-feature-list-icon"></i>300 squre feet
                                </li>
                                <li>
                                  <i class="fa fa-shower theme-item-page-rooms-table-type-feature-list-icon"></i>Private bathroom
                                </li>
                                <li>
                                  <i class="fa fa-wifi theme-item-page-rooms-table-type-feature-list-icon"></i>Free Wifi
                                </li>
                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-guests-count">
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-options-list">
                                <li>Non-refundable</li>
                                <li>Special conditions,
                                  <br/>pay when you stay
                                </li>
                                <li>Breakfast $30</li>
                              </ul>
                            </td>
                            <td class="theme-item-page-rooms-table-price">
                              <div>
                                <div class="theme-item-page-rooms-table-price-night">
                                  <p class="theme-item-page-rooms-table-price-sign">Per night</p>
                                  <p class="theme-item-page-rooms-table-price-night-amount">$217</p>
                                </div>
                                <div class="theme-item-page-rooms-table-price-total">
                                  <p class="theme-item-page-rooms-table-price-sign">Total price
                                    <br/>for 5 nights
                                  </p>
                                  <p class="theme-item-page-rooms-table-price-total-amount">$1085</p>
                                </div>
                              </div>
                              <p class="theme-item-page-rooms-table-price-note">* Discounts already
                                <br/>included in price.
                              </p>
                            </td>
                            <td>
                              <a class="btn btn-primary-inverse btn-block">Book now</a>
                              <p class="theme-item-page-rooms-table-booking-note">No booking or
                                <br/>credit card fees!
                              </p>
                            </td>
                          </tr>
                          <tr>
                            <td class="theme-item-page-rooms-table-type">
                              <h5 class="theme-item-page-rooms-table-type-title">Junior Suite with King Size Bed</h5>
                              <img class="theme-item-page-rooms-table-type-img" src="./img/350x232.png" alt="Image Alternative text" title="Image Title"/>
                              <ul class="theme-item-page-rooms-table-type-feature-list">
                                <li>
                                  <i class="fa fa-bed theme-item-page-rooms-table-type-feature-list-icon"></i>2 King beds
                                </li>
                                <li>
                                  <i class="fa fa-arrows-h theme-item-page-rooms-table-type-feature-list-icon"></i>320 squre feet
                                </li>
                                <li>
                                  <i class="fa fa-shower theme-item-page-rooms-table-type-feature-list-icon"></i>Private bathroom
                                </li>
                                <li>
                                  <i class="fa fa-wifi theme-item-page-rooms-table-type-feature-list-icon"></i>Free Wifi
                                </li>
                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-guests-count">
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-options-list">
                                <li>Non-refundable</li>
                                <li>Special conditions,
                                  <br/>pay when you stay
                                </li>
                                <li>Breakfast included</li>
                                <li>
                                  <b class="text-color-inverse">Last minute deal: save 35%</b>
                                </li>
                              </ul>
                            </td>
                            <td class="theme-item-page-rooms-table-price">
                              <div>
                                <div class="theme-item-page-rooms-table-price-night">
                                  <p class="theme-item-page-rooms-table-price-sign">Per night</p>
                                  <p class="theme-item-page-rooms-table-price-night-amount">$315</p>
                                </div>
                                <div class="theme-item-page-rooms-table-price-total">
                                  <p class="theme-item-page-rooms-table-price-sign">Total price
                                    <br/>for 5 nights
                                  </p>
                                  <p class="theme-item-page-rooms-table-price-total-amount">$1575</p>
                                </div>
                              </div>
                              <p class="theme-item-page-rooms-table-price-note">* Discounts already
                                <br/>included in price.
                              </p>
                            </td>
                            <td>
                              <a class="btn btn-primary-inverse btn-block">Book now</a>
                              <p class="theme-item-page-rooms-table-booking-note">No booking or
                                <br/>credit card fees!
                              </p>
                            </td>
                          </tr>
                          <tr>
                            <td class="theme-item-page-rooms-table-type">
                              <h5 class="theme-item-page-rooms-table-type-title">Suite with King Size Bed and Park View</h5>
                              <img class="theme-item-page-rooms-table-type-img" src="jsp/img/350x232.png" alt="Image Alternative text" title="Image Title"/>
                              <ul class="theme-item-page-rooms-table-type-feature-list">
                                <li>
                                  <i class="fa fa-bed theme-item-page-rooms-table-type-feature-list-icon"></i>2 King beds
                                </li>
                                <li>
                                  <i class="fa fa-arrows-h theme-item-page-rooms-table-type-feature-list-icon"></i>400 squre feet
                                </li>
                                <li>
                                  <i class="fa fa-shower theme-item-page-rooms-table-type-feature-list-icon"></i>2 Private bathrooms
                                </li>
                                <li>
                                  <i class="fa fa-wifi theme-item-page-rooms-table-type-feature-list-icon"></i>Free Wifi
                                </li>
                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-guests-count">
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                                <li>
                                  <i class="fa fa-male"></i>
                                </li>
                              </ul>
                            </td>
                            <td>
                              <ul class="theme-item-page-rooms-table-options-list">
                                <li>Free cancellation</li>
                                <li>Special conditions,
                                  <br/>pay when you stay
                                </li>
                                <li>Breakfast included</li>
                              </ul>
                            </td>
                            <td class="theme-item-page-rooms-table-price">
                              <div>
                                <div class="theme-item-page-rooms-table-price-night">
                                  <p class="theme-item-page-rooms-table-price-sign">Per night</p>
                                  <p class="theme-item-page-rooms-table-price-night-amount">$485</p>
                                </div>
                                <div class="theme-item-page-rooms-table-price-total">
                                  <p class="theme-item-page-rooms-table-price-sign">Total price
                                    <br/>for 5 nights
                                  </p>
                                  <p class="theme-item-page-rooms-table-price-total-amount">$2425</p>
                                </div>
                              </div>
                              <p class="theme-item-page-rooms-table-price-note">* Discounts already
                                <br/>included in price.
                              </p>
                            </td>
                            <td>
                              <a class="btn btn-primary-inverse btn-block">Book now</a>
                              <p class="theme-item-page-rooms-table-booking-note">No booking or
                                <br/>credit card fees!
                              </p>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  
                  <!-- 캠핑장 소개 탭 -->
                  <div class="tab-pane" id="HotelPageTabs-2" role="tab-panel">
                    <div class="theme-item-page-desc">
                      <p>This Manhattan hotel is located across the street from Madison Square Garden and Penn Station. The hotel offers access to the adjacent fitness club which includes a gym and a tour desk with ticket services.</p>
                      <p>Each air-conditioned room at the Hotel Pennsylvania provides cable TV. Guests also have access to a work desk, alarm clock, black-out drapes, iron and hairdryer in every room.</p>
                      <p>The Pennsylvania Hotel includes a 24-hour coffee shop and a restaurant. Guests can make transportation reservations and acquire theater tickets at the hotel. Guests will also have access to a safety deposit desk at the front desk, any time of the day.</p>
                      <p>Times Square and the Museum of Modern Art are less than a 15-minute walk from Hotel Penn. Guests are also one block from Macy's and 2 blocks from the Empire State Building.</p>
                      <p>This is our guests' favourite part of New York, according to independent reviews. This area is also great for shopping, with popular brands nearby: H&M, Nike, Ralph Lauren.</p>
                    </div>
                  </div>
                  <div class="tab-pane" id="HotelPageTabs-3" role="tab-panel">
                    <div class="theme-item-page-map google-map" data-lat="40.7483624" data-lng="-73.9900896"></div>
                  </div>
                  <div class="tab-pane" id="HotelPageTabs-4" role="tab-panel">
                    <div class="theme-reviews">
                      <div class="theme-reviews-score theme-reviews-score-hor">
                        <div class="row">
                          <div class="col-md-3 ">
                            <div class="theme-reviews-score-header">
                              <h5 class="theme-reviews-score-title">Review score</h5>
                              <p class="theme-reviews-score-subtitle">Based on 2889 reviews</p>
                            </div>
                            <div class="theme-reviews-score-total">
                              <p>7.4</p>
                            </div>
                          </div>
                          <div class="col-md-9 ">
                            <div class="theme-reviews-score-list">
                              <div class="row">
                                <div class="col-md-6 ">
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">Breakfast</p>
                                      <p class="theme-reviews-score-item-num">5.6</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:56%;"></div>
                                    </div>
                                  </div>
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">Clearness</p>
                                      <p class="theme-reviews-score-item-num">6.4</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:64%;"></div>
                                    </div>
                                  </div>
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">Comfort</p>
                                      <p class="theme-reviews-score-item-num">7.5</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:75%;"></div>
                                    </div>
                                  </div>
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">Location</p>
                                      <p class="theme-reviews-score-item-num">7.5</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:75%;"></div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-6 ">
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">Facilities</p>
                                      <p class="theme-reviews-score-item-num">8.2</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:82%;"></div>
                                    </div>
                                  </div>
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">Staff</p>
                                      <p class="theme-reviews-score-item-num">8.2</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:82%;"></div>
                                    </div>
                                  </div>
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">Value for money</p>
                                      <p class="theme-reviews-score-item-num">8.7</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:87%;"></div>
                                    </div>
                                  </div>
                                  <div class="theme-reviews-score-item">
                                    <div class="theme-reviews-score-item-header">
                                      <p class="theme-reviews-score-item-title">Free WiFi</p>
                                      <p class="theme-reviews-score-item-num">6.7</p>
                                    </div>
                                    <div class="theme-reviews-score-item-bar">
                                      <div style="width:67%;"></div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="theme-reviews-list">
                        <article class="theme-reviews-item">
                          <div class="row" data-gutter="10">
                            <div class="col-md-3 ">
                              <div class="theme-reviews-item-info">
                                <img class="theme-reviews-item-avatar" src="./img/70x70.png" alt="Image Alternative text" title="Image Title"/>
                                <p class="theme-reviews-item-date">Reviewed Thu, Jun 21</p>
                                <p class="theme-reviews-item-author">by Olivia Slater</p>
                              </div>
                            </div>
                            <div class="col-md-9 ">
                              <div class="theme-reviews-rating">
                                <div class="theme-reviews-rating-header">
                                  <span class="theme-reviews-rating-num">8.7</span>
                                  <span class="theme-reviews-rating-title">Excellent</span>
                                </div>
                                <div class="theme-reviews-rating-bar">
                                  <div style="width:87%;"></div>
                                </div>
                              </div>
                              <div class="theme-reviews-item-body">
                                <p class="theme-reviews-item-text">Natoque lectus ac diam primis curae et lacus fermentum dis nulla torquent et dis faucibus sociis cum rutrum donec potenti</p>
                              </div>
                            </div>
                          </div>
                        </article>
                        <article class="theme-reviews-item">
                          <div class="row" data-gutter="10">
                            <div class="col-md-3 ">
                              <div class="theme-reviews-item-info">
                                <img class="theme-reviews-item-avatar" src="./img/70x70.png" alt="Image Alternative text" title="Image Title"/>
                                <p class="theme-reviews-item-date">Reviewed Sun, Jun 17</p>
                                <p class="theme-reviews-item-author">by Leah Kerr</p>
                              </div>
                            </div>
                            <div class="col-md-9 ">
                              <div class="theme-reviews-rating">
                                <div class="theme-reviews-rating-header">
                                  <span class="theme-reviews-rating-num">5.1</span>
                                  <span class="theme-reviews-rating-title">Okay</span>
                                </div>
                                <div class="theme-reviews-rating-bar">
                                  <div style="width:51%;"></div>
                                </div>
                              </div>
                              <div class="theme-reviews-item-body">
                                <p class="theme-reviews-item-text">Imperdiet ipsum aliquet fames proin morbi sed magnis at luctus volutpat purus lacinia ultrices quam natoque lobortis ornare vulputate egestas suscipit enim</p>
                              </div>
                            </div>
                          </div>
                        </article>
                        <article class="theme-reviews-item">
                          <div class="row" data-gutter="10">
                            <div class="col-md-3 ">
                              <div class="theme-reviews-item-info">
                                <img class="theme-reviews-item-avatar" src="./img/70x70.png" alt="Image Alternative text" title="Image Title"/>
                                <p class="theme-reviews-item-date">Reviewed Sat, Jun 16</p>
                                <p class="theme-reviews-item-author">by Joe Smith</p>
                              </div>
                            </div>
                            <div class="col-md-9">
                              <div class="theme-reviews-rating">
                                <div class="theme-reviews-rating-header">
                                  <span class="theme-reviews-rating-num">5.9</span>
                                  <span class="theme-reviews-rating-title">Okay</span>
                                </div>
                                <div class="theme-reviews-rating-bar">
                                  <div style="width:59%;"></div>
                                </div>
                              </div>
                              <div class="theme-reviews-item-body">
                                <p class="theme-reviews-item-text">Aptent quis dictumst molestie purus urna velit per phasellus molestie cras feugiat mi hendrerit dictum rutrum magna aliquam malesuada eget lacinia molestie risus</p>
                              </div>
                            </div>
                          </div>
                        </article>
                        <div class="row">
                          <div class="col-md-9 col-md-offset-3">
                            <a class="theme-reviews-more" href="#">&#x2b; More Reviews</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane" id="HotelPageTabs-5" role="tab-panel">
                    <div class="theme-item-page-facilities">
                      <div class="row">
                        <div class="col-md-3 ">
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-shower theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Bathroom</h5>
                            <ul class="theme-item-page-facilities-item-list">
                              <li>Toilet paper</li>
                              <li>Linen</li>
                              <li>Towels</li>
                              <li>Toilet</li>
                              <li>Free toiletries</li>
                              <li>Hairdryer</li>
                            </ul>
                          </div>
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-heart theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Pool and wellness</h5>
                            <ul class="theme-item-page-facilities-item-list">
                              <li>Massage</li>
                              <li>Fitness centre</li>
                              <li>Sauna</li>
                            </ul>
                          </div>
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-glass theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Food and Drink</h5>
                            <ul class="theme-item-page-facilities-item-list">
                              <li>Breakfast in the room</li>
                              <li>Bar</li>
                              <li>Restaurant</li>
                              <li>Tea/Coffee maker</li>
                            </ul>
                          </div>
                        </div>
                        <div class="col-md-3 ">
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-wifi theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Internet</h5>
                            <p class="theme-item-page-facilities-item-body">WiFi is available in all areas and costs USD 16.95 per 24 hours.</p>
                          </div>
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-car theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Parking</h5>
                            <p class="theme-item-page-facilities-item-body">Private parking is possible on site (reservation is not needed) and costs USD 60 per day.</p>
                          </div>
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-users theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Reception services</h5>
                            <ul class="theme-item-page-facilities-item-list">
                              <li>Concierge service</li>
                              <li>ATM/cash machine on site</li>
                              <li>Luggage storage</li>
                              <li>Ticket service</li>
                              <li>Tour desk</li>
                              <li>Currency excharge</li>
                              <li>Express check-in/check-out</li>
                              <li>24-hour front desk</li>
                            </ul>
                          </div>
                        </div>
                        <div class="col-md-3 ">
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-tint theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Cleaning services</h5>
                            <ul class="theme-item-page-facilities-item-list">
                              <li>Daily maid service</li>
                              <li>Shoeshine</li>
                              <li>Ironing service</li>
                              <li>Dry cleaning</li>
                              <li>Laundry</li>
                            </ul>
                          </div>
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-handshake-o theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Business facilities</h5>
                            <ul class="theme-item-page-facilities-item-list">
                              <li>Fax/photocopynig</li>
                              <li>Buness centre</li>
                              <li>Meeting/banquet facilities</li>
                            </ul>
                          </div>
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-laptop theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Media and technology</h5>
                            <ul class="theme-item-page-facilities-item-list">
                              <li>iPod dock</li>
                              <li>Cable channels</li>
                              <li>Radio</li>
                              <li>Telephone</li>
                              <li>TV</li>
                            </ul>
                          </div>
                        </div>
                        <div class="col-md-3 ">
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-info-circle theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">General</h5>
                            <ul class="theme-item-page-facilities-item-list">
                              <li>Vending machine</li>
                              <li>Air conditioning</li>
                              <li>Wake-up service</li>
                              <li>Heating</li>
                              <li>Laptop safe</li>
                              <li>Safety deposit box</li>
                              <li>Lift</li>
                              <li>Family rooms</li>
                              <li>Facilities for disabled guests</li>
                              <li>Non-smoking rooms</li>
                              <li>Iron</li>
                              <li>Newspapers</li>
                            </ul>
                          </div>
                          <div class="theme-item-page-facilities-item">
                            <i class="fa fa-globe theme-item-page-facilities-item-icon"></i>
                            <h5 class="theme-item-page-facilities-item-title">Languages spoken</h5>
                            <ul class="theme-item-page-facilities-item-list">
                              <li>Italian</li>
                              <li>French</li>
                              <li>Spanish</li>
                              <li>English</li>
                            </ul>
                          </div>
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