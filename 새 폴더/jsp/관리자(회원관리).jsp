<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Travel Mate - Account</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

<script src="js/bs-datepicker.js"></script>

<style>
/* 
#foo {
	background-color: #CED8F6;
}

#foo2 {
	background-color: #CED8F6;
} */

.pagination {
	display: block;
	text-align: center;
}

.pagination>li>a {
	float: none;
}
</style>


<!-- 문의 답변 리뷰 -->
<style>
#myDIV {
	width: 100%;
	padding: 50px 0;
	text-align: center;
	background-color: lightblue;
	margin-top: 20px;
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
								관리자 님 <br>
							</p>
						</div>
						<nav class="theme-account-nav">
							<ul class="theme-account-nav-list">
								<li><a href="#"> <i class="fa fa-history"></i>이용현황
								</a></li>
								<li><a href="#"> <i class="fa fa-bell"></i>캠핑장 관리
								</a></li>
								<li class="active"><a href="#"> <i
										class="fa fa-bookmark"></i>회원 관리
								</a></li>
								<li><a href="#"> <i class="fa fa-exclamation-circle"></i>고객센터
										관리
								</a></li>
								<li><a href="#"> <i class="fa fa-user-circle-o"></i>관리자
										정보 수정
								</a></li>

							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-10 col-md-offset-2 _m-0">
					<div class="row" style="">
						<h2>
							<b>회원 관리</b>
						</h2>
						<hr>

						<div class="col-md-12">
							<div class="row">
								<h3>
									<b>회원 목록</b>
								</h3>
								<table class="table table-bordered">
									<tbody>
										<tr>
											<th>회원선택</th>
											<td><input type="radio" name="chk_info" value="HTML">일반회원 &ensp;
												<input type="radio" name="chk_info" value="HTML">판매자회원
											</td>
										</tr>
										<tr>
											<th>검색조건</th>
											<td>
												<div class="form-inline">
													<div class="form-group">
														<select class="form-control">
															<option>회원아이디</option>
														</select> <input type="text" class="form-control">
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<th>가입일자</th>
											<td>

												<div class="form-inline">
													<div class="form-group">
														<select class="form-control">
															<option>전체보기</option>

														</select>
													</div>

													<label for="calendar" style="margin: 0 10px">기간</label> <input
														class="form-control datePickerStart _mob-h"
														value="Mon 08/15" type="text">&nbsp;-&nbsp; <input
														class="form-control datePickerEnd _mob-h"
														value="Mon 08/16" type="text">





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


							<div class="content">
								<div id="menu1" class="tab-pane fade in active">


									<div class="row">
										<table class="table booking-list table-bordered">


											<thead>

												<tr id="foo">
													<th>번호</th>
													<th>아이디</th>
													<th>이름</th>
													<th>가입일자</th>
													<th>관리</th>


												</tr>

											</thead>

											<tbody>
												<tr>
													<td>4</td>
													<td>dahye950824</td>
													<td style="color:#2E64FE; font-weight: bolder">전다혜</td>
													<td>2018-08-21</td>
													<td><button class="btn btn-default" type="submit"
															style="margin-right: 10px" data-toggle="modal"
															data-target="#detailModal">상세보기</button></td>
												</tr>
												<tr>
													<td>3</td>
													<td>dahye950824</td>
													<td style="color:#2E64FE; font-weight: bolder">전다혜</td>
													<td>2018-08-21</td>
													<td><button class="btn btn-default" type="submit"
															style="margin-right: 10px" data-toggle="modal"
															data-target="#detailModal">상세보기</button></td>
												</tr>
												<tr>
													<td>2</td>
													<td>dahye950824</td>
													<td style="color:#2E64FE; font-weight: bolder">전다혜</td>
													<td>2018-08-21</td>
													<td><button class="btn btn-default" type="submit"
															style="margin-right: 10px" data-toggle="modal"
															data-target="#detailModal">상세보기</button></td>
												</tr>
												<tr>
													<td>1</td>
													<td>dahye950824</td>
													<td style="color:#2E64FE; font-weight: bolder">전다혜</td>
													<td>2018-08-21</td>
													<td><button class="btn btn-default" type="submit"
															style="margin-right: 10px" data-toggle="modal"
															data-target="#detailModal">상세보기</button></td>
												</tr>
											</tbody>
										</table>
									</div>
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

								<div id="menu2" class="tab-pane fade">
									<br>

									<div class="row">
										<table class="table table-bordered">
											<tbody>
												<tr>
													<th>검색조건</th>
													<td>
														<div class="form-inline">
															<div class="form-group">
																<select class="form-control">
																	<option>전체보기</option>
																	<option>작성자</option>
																	<option>글제목</option>
																</select> <input type="text" class="form-control">
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<th>검색기간</th>
													<td>
														<div class="form-inline">

															<label for="calendar" style="margin: 0 10px">기간</label> <input
																type="text" class="form-control datePickerStart _mob-h">&nbsp;-&nbsp;
															<input type="text"
																class="form-control datePickerEnd _mob-h">

														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"
											style="float: none; margin: 0 auto;"></div>

									</div>

									<div class="row">
										<table class="table booking-list table-bordered">


											<thead>

												<tr id="foo2">
													<th>평가</th>
													<th>후기</th>
													<th>작성자</th>
													<th>작성일</th>



												</tr>

											</thead>

											<tbody>
												<tr class="def">
													<td>
														<ul class="theme-search-results-item-hotel-stars">
															<li><i class="fa fa-star fa-2x"></i></li>
															<li><i class="fa fa-star fa-2x"></i></li>
															<li><i class="fa fa-star fa-2x"></i></li>
															<li><i class="fa fa-star fa-2x"></i></li>
														</ul>
													</td>
													<td><a id="review" href="#">좋아요</a></td>
													<td>전다혜</td>

													<td>2018-08-14</td>

												</tr>
												<tr class="def">
													<td>
														<ul class="theme-search-results-item-hotel-stars">
															<li><i class="fa fa-star fa-2x"></i></li>
															<li><i class="fa fa-star fa-2x"></i></li>
															<li><i class="fa fa-star fa-2x"></i></li>
														</ul>
													</td>
													<td><a id="pay" href="#">좋아요</a></td>
													<td>전다혜</td>

													<td>2018-08-14</td>

												</tr>
											</tbody>
										</table>
									</div>

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
	</div>
	
	<!-- modal -->
	<div class="container" style="font-size:0.8em">
		<div class="modal fade col-md-12" id="detailModal" role="dialog">
			<div class="modal-dialog modal-lg">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" >
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" >

						<h4 class="modal-title">회원정보</h4>
						<form action="" class="form-group">
							<table class="table table-bordered">
								<thead>
									<tr>
										<td>아이디</td>
										<td>이름</td>
										<td>이메일</td>
										<td>전화번호</td>
										<td>주소</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>dahye950824</td>
										<td style="color:#2E64FE; font-weight: bolder">전다혜</td>
										<td>dahye950824@gmail.com</td>
										<td>010-0000-0000</td>
										<td>서울시 서대문구 홍은동</td>
									</tr>
								</tbody>

							</table>
							<div class="col-md-2 col-md-offset-10">
								<button type="button" class="btn btn-primary">회원삭제</button>
							</div>

							<div class="modal-middle">
							<h4 class="modal-title">회원예약현황</h4>
								<table class="table table-bordered">
									<tbody>
										<tr>
											<th>검색조건</th>
											<td>
												<div class="form-inline">
													<div class="form-group">
														<select class="form-control">
															<option>캠핑장명</option>

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
													<label for="calendar" style="margin: 0 10px">기간</label> <input
														class="form-control datePickerStart _mob-h"
														value="Mon 08/15" type="text">&nbsp;-&nbsp; <input
														class="form-control datePickerEnd _mob-h"
														value="Mon 08/16" type="text">





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
								<h5 class="modal-title">총1개</h5>
							</div>
<!-- 							<div class="modal-end _p-0" style="border:1px solid black"> -->
								<table class="table table-bordered" >

									<thead>
										<tr>
											<td>번호</td>
											<td>상태</td>
											<td>예약번호</td>
											<td>예약자명</td>
											<td>캠핑장명</td>
											<td>구분</td>
											<td>예약일자</td>
											<td>숙박일수</td>
											<td>예약수/번호</td>
											<td>예약금액</td>
											<td>입금할금액</td>
											<td>관리</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td style="color: MediumSeaGreen; font-weight: bolder">예약완료</td>
											<td>111-222</td>
											<td style="color:#2E64FE; font-weight: bolder">전다혜</td>
											<td style="color:#2E64FE; font-weight: bolder">갱아지캠핑장</td>
											<td>방가로</td>
											<td>2018-08-21</td>
											<td>1박2일</td>
											<td>1개/7</td>
											<td>80.000원</td>
											<td>80.000원</td>
											<td><button class="btn btn-default" type="submit"
														style="margin-right: 10px" data-toggle="modal"
														data-target="#detailModal2">상세보기</button></td>
										</tr>
									</tbody>
					
								</table>

									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1"
									style="float: none; margin: 0 auto;">
									<button type="submit" class="btn btn-primary"
										style="margin-bottom: 30px;">확인</button>
								</div>
									<div class="modal-footer">
          
        </div>
									


						</form>
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

	<script>

$(document).ready(function(){
	$("#pay").click(function(){
		var div = "<tr><td colspan='6'>문의내용 및 답변</td></tr>";
		$(".abc").after(div);
	})
})

</script>

	<script>

$(document).ready(function(){
	$("#review").click(function(){
		var div = "<tr><td colspan='6'>후기</td></tr>";
		$(".def").after(div);
	})
})

</script>


	





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