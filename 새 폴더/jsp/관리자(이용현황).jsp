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


.pagination{
display:block;
text-align:center;

}
.pagination >li>a{
float:none;
}



</style>


</head>
<body>

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
							관리자 님<br> 
							</p>
						</div>
						<nav class="theme-account-nav">
							<ul class="theme-account-nav-list">
								<li class="active"><a href="#"> <i
										class="fa fa-history"></i>이용현황
								</a></li>
								<li><a href="#"> <i class="fa fa-bell"></i>캠핑장 관리
								</a></li>
								<li><a href="#"> <i class="fa fa-bookmark"></i>회원 관리
								</a></li>
								<li><a href="#"> <i class="fa fa-exclamation-circle"></i>고객센터 관리
								</a></li>
								<li><a href="#"> <i class="fa fa-user-circle-o"></i>관리자 정보 수정
								</a></li>

							</ul>
						</nav>
					</div>
				</div>
				
				<div class="col-md-10">
					<div class="row">
						<h2 style="margin-top: 10px;">
							<b>사이트 이용현황</b>
						</h2>
						<hr class="row">
					
					
					<div class="col-md-12">
					<h3>회원현황</h3>
					<table class="table booking-list table-bordered">
					<thead>
					<tr>
					<th>신규회원</th>
					<th>방문회원</th>
					<th>탈퇴회원</th>
					<th>Total</th>
					
					</tr>
					</thead>
					<tbody>
					<tr>
					<td>0명</td>
					<td>0명</td>
					<td>0명</td>
					<td>0명</td>
					</tr>
					
					</table>
					
					<br>
					<h3>판매자 등록 현황</h3>
					<table class="table booking-list table-bordered">
					<thead>
					<tr>
					<th>신규 등록 판매자</th>
					<th>전체 등록 캠핑장</th>
					<th>삭제된 캠핑장</th>
					
					
					</tr>
					</thead>
					<tbody>
					<tr>
					<td>0개</td>
					<td>0개</td>
					<td>0개</td>
					
					</tr>
					
					</table>
					
					
						<br>
					<h3>매출현황</h3>
					<table class="table booking-list table-bordered">
					<thead>
					<tr>
					<th>구분</th>
					<th>오늘</th>
					<th>이번달</th>
					
					
					</tr>
					</thead>
					<tbody>
					<tr>
					<td>총 주문 금액(건수)</td>
					<td>0원(0건)</td>
					<td>0명(0건)</td>
					
					</tr>
					
						<tr>
					<td>총 실 결제 금액(건수)</td>
					<td>0원(0건)</td>
					<td>0명(0건)</td>
					
					</tr>
					
						<tr>
					<td>총 환불 금액(건수)</td>
					<td>0원(0건)</td>
					<td>0명(0건)</td>
					
					</tr>
					
					</table>
					
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
	<div class="container">
		<div class="modal fade" id="detailModal" role="dialog">
			<div class="modal-dialog modal-lg">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">예약정보</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<!-- modal 내용  -->

						<form action="" class="form-group">
							<table class="table table-bordered">
								<tr>
									<th>예약정보</th>
									<td>111-22222</td>
								</tr>
								<tr>
									<th>사이트(방)이름</th>
									<td>방가로</td>
								</tr>
								<tr>
									<th>예약일</th>
									<td>2018-08-10</td>
								</tr>
								<tr>
									<th>인원/차량</th>
									<td>
										<table class="table table-bordered col-sm-">
											<thead>
												<tr>
													<th>번호</th>
													<th>이용기간</th>
													<th>숙박인원</th>
													<th>차량</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>7</td>
													<td>1박2일</td>
													<td>성인(2) 미성년(3)</td>
													<td>1대</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<th>이용내역</th>
									<td>
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>내역</th>
													<th>비용</th>
												</tr>
												<tr>
													<td>2018.07.28(1박) 80,000원</td>
													<td>80,000원</td>
												</tr>
											</thead>
										</table>
									</td>
								</tr>
								<tr>
									<th>총 이용금액</th>
									<td>80,000원</td>
								</tr>
								<tr>
									<th>총 입금금액</th>
									<td>75,500원(-500 마일리지사용)</td>
								</tr>
								<tr>
									<th>예약자정보</th>
									<td>채지인(010-1111-1111)</td>
								</tr>
								<tr>
									<th>결제방법</th>
									<td>신용카드</td>
								</tr>
								<tr>
									<th>결제방법</th>
									<td>신용카드</td>
								</tr>
								<tr>
									<th>현재상태</th>
									<td style="color: MediumSeaGreen; font-weight: bolder">결제완료</td>
								</tr>
							</table>
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-warning">예약취소</button>
						<button type="button" class="btn btn-default">수정하기</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
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