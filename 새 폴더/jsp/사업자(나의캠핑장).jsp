<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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




#total-booking th {
	width: 10%;
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
				<div class="col-md-2 ">
					<div class="theme-account-sidebar">
						<div class="theme-account-avatar">
							<img class="theme-account-avatar-img" src="./img/70x70.png"
								alt="Image Alternative text" title="Image Title" />
							<p class="theme-account-avatar-name">
								사업자 님<br>
							</p>
						</div>
						<nav class="theme-account-nav">
							<ul class="theme-account-nav-list">

								<h4>사업자 메뉴</h4>
								&emsp;

								<li class="#"><a href="#"> <i class="fa fa-history"></i>예약관리
								</a></li>
								<li class="active"><a href="#"> <i class="fa fa-bell"></i>나의
										캠핑장
								</a></li>
								<li><a href="#"> <i class="fa fa-bookmark"></i>고객관리

								</a></li>
								<li><a href="#"> <i class="fa fa-user-circle-o"></i>내
										정보 수정
								</a></li>

							</ul>
						</nav>
					</div>
				</div>




				<div class="row">
					<div class="container">
						<div class="col-md-10">
							<h2>
								<b>나의 캠핑장</b>

							</h2>
							<br>
							
							<div class="row">
							<table class="table booking-list table-bordered"
								id="total-booking">

								<tr>
									<th>번호</th>
									<th>캠핑장명</th>
									<th>등록일</th>
									<th>상태</th>
									<th>관리</th>
								</tr>
								
								<tbody>
								<tr>
								<td>1</td>
								<td style="color: MediumSeaGreen; font-weight: bolder">수달캠핑장</td>
								<td>2018-08-24</td>
								<td>승인대기중</td>
								<td><button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">등록취소</button></td>
								
								</tr>
								</tbody>
								
								<tbody>
								<tr>
								<td>2</td>
								<td style="color: MediumSeaGreen; font-weight: bolder">강아지캠핑장</td>
								<td>2018-08-21</td>
								<td>등록완료</td>
								<td><button type="button" class="btn btn-default" data-dismiss="modal">관리하기</button></td>
								
								</tr>
								</tbody>
								
								<tbody>
								<tr>
								<td>3</td>
								<td style="color: MediumSeaGreen; font-weight: bolder">고양이캠핑장</td>
								<td>2018-08-20</td>
								<td>등록완료</td>
								<td><button type="button" class="btn btn-default" data-dismiss="modal">관리하기</button></td>
								
								</tr>
								</tbody>


							</table>
						</div>
							

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
	
	<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        
        <div class="modal-body">
          <p>등록을 취소하시겠습니까?</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">예</button><button type="button" class="btn btn-defalte" data-dismiss="modal">아니오</button>
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
