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
#foo{
background-color:#F2F2F2;
}

.doo{
background-color:#EFF5FB
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
								전다혜 님<br> 마일리지 : 500
							</p>
						</div>
						<nav class="theme-account-nav">
							<ul class="theme-account-nav-list">
								<li class="active"><a href="#"> <i
										class="fa fa-history"></i>나의 예약
								</a></li>
								<li><a href="#"> <i class="fa fa-bell"></i>내가 작성한 글
								</a></li>
								<li><a href="#"> <i class="fa fa-bookmark"></i>내가 찜한
										캠핑장
								</a></li>
								<li><a href="#"> <i class="fa fa-user-circle-o"></i>내
										정보 수정
								</a></li>

							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-10">
					<div class="container">
						<h2 style="margin-top: 10px;">
							<b>나의예약</b>
						</h2>
						<hr class="container">
					</div>
					<div class="row">

						<!-- 조회  -->
						<div class="row">
							<div class="col-xs-12">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<th>검색조건</th>
											<td>
												<div class="form-inline">
													<div class="form-group">
														<select class="form-control">
															<option>예약완료</option>
															<option>결제대기</option>
															<option>예약번호</option>
														</select> <input type="text" class="form-control">
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th>예약일자</th>
											<td>
												
													<div class="form-inline">
														<button class="btn btn-default">전체보기</button>
														<label for="calendar" style="margin: 0 10px">기간</label>
														<input class="form-control datePickerStart _mob-h" value="Mon 08/15" type="text">&nbsp;-&nbsp;
												        <input class="form-control datePickerEnd _mob-h" value="Mon 08/16" type="text">





													</div>
											


											</td>
										</tr>
									</tbody>
								</table>
								<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"
									style="float: none; margin: 0 auto;">
									<button type="submit" class="btn btn-primary"
										style="margin-bottom: 30px;">조회</button>
								</div>
							</div>

							
							
								<div class="col-xs-12">
									<table class="table booking-list table-bordered">
										<thead>
											<tr>
												<th>번호</th>
												<th>상태</th>
												<th>예약번호</th>
												<th>예약자명</th>
												<th>구분</th>
												<th>예약일자</th>
												<th>숙박일수</th>
												<th>예약수/번호</th>
												<th>예약금액</th>
												<th>입금할금액</th>
												<th>관리</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td style="color: #4CAF50; font-weight: bolder">결제완료</td>
												<td>111-222</td>
												<td style="color:#2E64FE; font-weight: bolder">채지인</td>
												<td>방가로</td>
												<td>2018-07-26</td>
												<td>1박2일</td>
												<td>1개/7</td>
												<td>80,000</td>
												<td>80,000</td>
												<td><button class="btn btn-default" type="submit"
														style="margin-right: 10px" data-toggle="modal"
														data-target="#detailModal">상세보기</button></td>
											</tr>
										</tbody>
									</table>
										<div class="row">
										
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
									<th class="doo">예약정보</th>
									<td>111-22222</td>
								</tr>
								<tr>
									<th class="doo">사이트(방)이름</th>
									<td>방가로</td>
								</tr>
								<tr>
									<th class="doo">예약일</th>
									<td>2018-08-10</td>
								</tr>
								<tr>
									<th class="doo">인원/차량</th>
									<td>
										<table class="table table-bordered col-sm-">
											<thead>
												<tr>
													<th id="foo">번호</th>
													<th id="foo">이용기간</th>
													<th id="foo">숙박인원</th>
													<th id="foo">차량</th>
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
									<th class="doo">이용내역</th>
									<td>
										<table class="table table-bordered">
											<thead>
												<tr>
													<th id="foo">내역</th>
													<th id="foo">비용</th>
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
									<th class="doo">총 이용금액</th>
									<td>80,000원</td>
								</tr>
								<tr>
									<th class="doo">총 입금금액</th>
									<td>75,500원(-500 마일리지사용)</td>
								</tr>
								<tr>
									<th class="doo">예약자정보</th>
									<td>채지인(010-1111-1111)</td>
								</tr>
								<tr>
									<th class="doo">결제방법</th>
									<td>신용카드</td>
								</tr>
								 
								<tr>
									<th class="doo">현재상태</th>
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