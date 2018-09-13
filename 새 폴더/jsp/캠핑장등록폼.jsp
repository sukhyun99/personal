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

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script src="js/bs-datepicker.js"></script>


<style>
.stepwizard-step p {
	margin-top: 10px;
}

.stepwizard-row {
	display: table-row;
}

.stepwizard {
	display: table;
	width: 50%;
	position: relative;
}

.stepwizard-step button[disabled] {
	opacity: 1 !important;
	filter: alpha(opacity = 100) !important;
}

.stepwizard-row:before {
	top: 14px;
	bottom: 0;
	position: absolute;
	content: " ";
	width: 100%;
	height: 1px;
	background-color: #ccc;
	z-order: 0;
}

.stepwizard-step {
	display: table-cell;
	text-align: center;
	position: relative;
}

.btn-circle {
	width: 30px;
	height: 30px;
	text-align: center;
	padding: 6px 0;
	font-size: 12px;
	line-height: 1.428571429;
	border-radius: 15px;
}

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

	<div class="theme-page-section theme-page-section-gray theme-page-section-lg">
		<div class="container">
			
			<div class="stepwizard col-md-offset-3">
				<div class="stepwizard-row setup-panel">
					<div class="stepwizard-step">
						<a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
						<p>Step 1</p>
					</div>
					<div class="stepwizard-step">
						<a href="#step-2" type="button" class="btn btn-default btn-circle"
							disabled="disabled">2</a>
						<p>Step 2</p>
					</div>
					<div class="stepwizard-step">
						<a href="#step-3" type="button" class="btn btn-default btn-circle"
							disabled="disabled">3</a>
						<p>Step 3</p>
					</div>
					<div class="stepwizard-step">
						<a href="#step-4" type="button" class="btn btn-default btn-circle"
							disabled="disabled">4</a>
						<p>Step 4</p>
					</div>
				</div>
			</div>
			
			<form role="form" action="" method="post">
				<div class="row col-md-offset setup-content" id="step-1">
						
						
					<div class="col-xs-8 col-md-offset-3">
						<div class="col-md-12">
							<div class="col-xs-12">
								<h3>약관동의</h3>
								<br>
							</div>

							<div class="col-md-11">
								<div class="checkbox" style="font-size: 1.2em">
									<div class="col-md-12 _p-10">
									<label>
									<input type="checkbox">
										본 업체는 합법적인 사업자로, 최초 요청이 있을 시
										필요한 모든 <br>  라이센스 및 허가증을 즉시 제출할 수
										있음을 보증 합니다.
									
									</label>
									
									
									</div>
									
									<div class="col-md-12 _p-10">
									<label>
									<input type="checkbox">
									 camping.com은 등록을 통해 제공되는 모든 정보를 조회 및 조사<br>할 권리를 보유합니다. 
									
									</label>
									
									
									</div>
									
									
									
									<div class="col-md-12 _p-10">
									<label>
									<input type="checkbox">
										일반 계약 조건과 개인정보 보호 정책을 숙지하였음,
										이에 동의하고<br> 수락 합니다.
									
									</label>
									
									<div class="col-md-12 _p-10" style="font-size: 0.8em">
											<p>
												 &ensp;camping.com은 당사를 통한 캠핑업체와
												 &ensp;camping.com간의 커뮤니케이션을 지원합니다.<br>
												  &ensp;camping.com은 당사 개인정보 보호정책 및 일반 계약 조건에 따라 해당 커뮤니케이션 내용을<br>
												&ensp;수집하고 처리합니다.
											</p>
										</div>
									
									</div>
									 
									 
								<button class="btn btn-primary nextBtn btn-lg pull-right"
								style="margin-bottom: 80px; margin-top: 30px; margin-left: 300px;"
								type="button">다음</button>
								

								</div>
							</div>

 



						</div>



					</div>
				</div>

				<div class="row setup-content" id="step-2">
					<div class="col-xs-8 col-md-offset-3">
						<div class="col-md-12">
							<div class="col-md-12">
								<h3>사업자 정보</h3>
								<br>
							</div>



							<div class="col-md-9">
<!-- 								<form role="form"> -->
									<div class="form-group">
									<i class="fa fa-check-circle" style="color:orange"></i>
										<label for="" Businessname"  style="font-size: 1.1em">상호명(사업체명)</label>
										<input type="text" class="form-control" id="Business name"
											style="text-align: center; width: 300px; height: 35px; letter-spacing: -5px">
									</div>
									<div class="form-group">
											<i class="fa fa-check-circle" style="color:orange"></i>
										<label for="Business Number" style="font-size: 1.1em">사업자
											등록 번호</label>
										<div class="form-inline">
											<input type="text" class="form-control" size="4"> <input
												type="text" class="form-control" size="4"> <input
												type="text" class="form-control" size="4">

										</div>
									</div>
									<div class="ridio">
											<i class="fa fa-check-circle" style="color:orange"></i>
										<label for="Business" style="font-size: 1.1em">사업자구분</label><br>
										<div class="row">

											 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											 <input type="radio" name="chk_info" value="HTML">법인사업자 &nbsp;&nbsp;
											  <input type="radio" name="chk_info" value="CSS">개인사업자&nbsp;&nbsp; 
											  <input type="radio" name="chk_info" value="웹디자인">간이사업자
											&emsp;
										</div>
										<br>

									</div>
									<div class="form-group">
											<i class="fa fa-check-circle" style="color:orange"></i>
										<label for="name" style="font-size: 1.1em">대표자(실명)</label> <input
											type="text" class="form-control" id="name">
									</div>
									<div class="form-group">
											<i class="fa fa-check-circle" style="color:orange"></i>
										<label for="phone" style="font-size: 1.1em">전화</label>
										<div class="form-inline">
											<select class="form-control" id="sel1">
												<option>선택</option>
												<option>010</option>
												<option>011</option>

											</select> <input type="text" class="form-control" size="4"> <input
												type="text" class="form-control" size="4">

										</div>

									</div>
									<div class="form-group">
											<i class="fa fa-check-circle" style="color:orange"></i>
										<label for="text" style="font-size: 1.1em">사업장 주소</label>
										<div class="form-inline">
											<input type="text" class="form-control">
											<button class="btn btn-default">주소찾기</button>
											<input type="text" class="form-control col-sm-4">
										</div>
									</div>



<!-- 								</form> -->
								<button type="button" class="btn btn-primary btn-lg pull-left"
									style="margin-top: 30px;">이전</button>

								<button class="btn btn-primary nextBtn btn-lg pull-right"
									style="margin-bottom: 80px; margin-top: 30px; margin-left: 300px;"
									type="button">다음</button>

							</div>




						</div>
					</div>






				</div>


				<div class="row setup-content" id="step-3">
					<div class="col-md-8 col-md-offset-3">
						<div class="col-md-10">
									


							<h3>캠핑장정보</h3>
							<br>
							<table class="table table-bordered">
								<tbody>
									<tr>
										<th>캠핑장명</th>
										<td>
											<div class="form-inline">
												<input type="text" class="form-control col-xs-3" id="pwd"
													name="password"> <label for="form-control"
													style="color: #EE4B04"></label>
											</div>
										</td>
									</tr>
									<tr>
										<th>관리자명</th>
										<td>
											<div class="form-inline">
												<input type="text" class="form-control col-xs-3" id="pwd"
													name="password">
											</div>
										</td>
									</tr>
									<tr>
										<th>전화번호</th>
										<td>
											<div class="form-inline">
												<input type="text" class="form-control col-xs-3"
													data-format="ddd-dddd-dddd">
											</div>
										</td>
									</tr>
									<tr>
										<th>이메일</th>
										<td>
											<div class="form-inline">
												<input type="email" class="form-control">
											</div>
										</td>
									</tr>
									<tr>
										<th>주소</th>
										<td>
											<div class="form-inline">
												<input type="text" class="form-control">
												<button class="btn btn-default">주소찾기</button>
												<input type="text" class="form-control col-sm-4">
											</div>
										</td>
									</tr>
								</tbody>
							</table>

						</div>

						<div class="col-md-10">
							<h2></h2>
							<table class="table table-bordered">
								<tbody>
									<tr>
										<th>편의시설</th>
										<td>
											<div class="form-group">
												<div class="input-inline">
													<label class="col-sm-6"> <input type="checkbox"
														name="optradio" checked>카라반
													</label> <label class="col-sm-6"> <input type="checkbox"
														name="optradio">글램핑
													</label>
												</div>
												<div class="input-inline">
													<label class="col-sm-6"> <input type="checkbox"
														name="optradio">화장실
													</label> <label class="col-sm-6"> <input type="checkbox"
														name="optradio">매점
													</label>
												</div>
												<div class="input-inline">
													<label class="col-sm-6"> <input type="checkbox"
														name="optradio">샤워장
													</label> <label class="col-sm-6"> <input type="checkbox"
														name="optradio">수영장
													</label>
												</div>
												<div class="input-inline">
													<label class="col-sm-6"> <input type="checkbox"
														name="optradio">놀이시설
													</label> <label class="col-sm-6"> <input type="checkbox"
														name="optradio">전기사용
													</label>
												</div>
											</div>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<div class="col-md-10">
							<h4>공지사항</h4>
							<div class="form-group" style="text-align: center;">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th style="text-align: center">글번호</th>
											<th style="text-align: center">제목</th>
											<th style="text-align: center">작성자</th>
											<th style="text-align: center">등록일</th>
											<th style="text-align: center">조회수</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>

								<div class="form-inline">
									<div class="form-group">
										<select class="form-control">
											<option>전체보기</option>
											<option>작성자</option>
											<option>글제목</option>
										</select> <input type="text" class="form-control">
									</div>
								</div>
								
							
								
								<div style="float: right;">	
									<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">글쓰기</button>
									
								</div>
								
								
							</div>
							<div class="policy" style="margin-top: 60px">
								&emsp;
								<h4>정책</h4>
								<div class="policy-innerbox">
									<div class="selecbox1">
										<div class="form-group">
											<label for="sel1">취소</label> <select class="form-control"
												id="sel1">
												<option>체크인 1일 전까지</option>
												<option>체크인 7일 전까지</option>
												<option>체크인 14일 전까지</option>
												<option>체크인 30일 전까지</option>
											</select> <br>
											<div class="row">
												<div class="form-group col-sm-12">
													<div class="content1 form-control"
														style="border: 1px solid lightgrey; height: 100px; background-color: #F2F2F2;">
														<p>
															<span><b>고객 예약 시 이 내용이 표시됩니다.</b></span><br> "체크인 날짜
															14일 전까지 무료 취소가 가능합니다. 체크인 날자까지 최소<br> 14일의 여유를 두지 않고
															취소할 경우, 지불해야 할 금액은 총 요금입니다."
														</p>
													</div>
												</div>
												<div class="form-group col-sm-12">
													<table class="table table-bordered">
														<tbody>
															<tr>
																<th style="text-align: center">체크인</th>

																<td>
																	<div class="col-md-12">
																		<p>시작 :</p>
																		<div class="start-time1">
																			<div class="form-group col-sm-5">
																				<select class="form-control" id="sel1">
																					<option>11:00</option>
																					<option>11:30</option>
																					<option>12:30</option>
																					<option>13:00</option>
																					<option>13:30</option>
																					<option>14:30</option>
																				</select>
																			</div>
																			<div class="form-group">
																				<button class="btn btn-default">12:00</button>
																				<button class="btn btn-default">14:00</button>
																				<button class="btn btn-default">15:00</button>
																			</div>
																		</div>
																		<p>마감 :</p>
																		<div class="start-time2">
																			<div class="form-group col-sm-5">
																				<select class="form-control" id="sel1">
																					<option>11:00</option>
																					<option>11:30</option>
																					<option>12:30</option>
																					<option>13:00</option>
																					<option>13:30</option>
																					<option>14:30</option>
																				</select>
																			</div>
																			<div class="form-group">
																				<button class="btn btn-default">12:00</button>
																				<button class="btn btn-default">14:00</button>
																				<button class="btn btn-default">15:00</button>
																			</div>
																		</div>
																	</div>
																</td>
															</tr>
															<tr>
																<th style="text-align: center">체크인</th>

																<td>
																	<div class="col-md-12">
																		<p>시작 :</p>
																		<div class="start-time1">
																			<div class="form-group col-sm-5">
																				<select class="form-control" id="sel1">
																					<option>11:00</option>
																					<option>11:30</option>
																					<option>12:30</option>
																					<option>13:00</option>
																					<option>13:30</option>
																					<option>14:30</option>
																				</select>
																			</div>
																			<div class="form-group">
																				<button class="btn btn-default">12:00</button>
																				<button class="btn btn-default">14:00</button>
																				<button class="btn btn-default">15:00</button>
																			</div>
																		</div>
																		<p>마감 :</p>
																		<div class="start-time2">
																			<div class="form-group col-sm-5">
																				<select class="form-control" id="sel1">
																					<option>11:00</option>
																					<option>11:30</option>
																					<option>12:30</option>
																					<option>13:00</option>
																					<option>13:30</option>
																					<option>14:30</option>
																				</select>
																			</div>
																			<div class="form-group">
																				<button class="btn btn-default">12:00</button>
																				<button class="btn btn-default">14:00</button>
																				<button class="btn btn-default">15:00</button>
																			</div>
																		</div>
																	</div>
																</td>
															</tr>
														</tbody>

													</table>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
							<button type="button" class="btn btn-primary btn-lg pull-left"
								style="margin-top: 30px;">이전</button>

							<button class="btn btn-primary nextBtn btn-lg pull-right"
								style="margin-bottom: 80px; margin-top: 30px; margin-left: 300px;"
								type="button">다음</button>
						</div>

					</div>

				</div>
		
			<div class="row setup-content" id="step-4">
			<div class="col-md-8 col-md-offset-3">	 
				<div class="col-md-12">

					<h3>사이트 정보</h3>
					<p>투숙객이 머무르게 될 부지 명 입니다.</p>
				</div>

		 

			<div class="col-md-10">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th style="text-align: center">사이트명</th>

							<td>
								<div class="col-md-8">
									<input type="text" class="form-control" placeholder="데크사이트">
								</div>


							</td>
						</tr>
						<tr>
							<th style="text-align: center">사이트수/기준인원/최대인원</th>

							<td>

								<div class="form-inline">
									<div class="col-md-12">
										<select class="form-control ">
											<option>10</option>
											<option>11</option>
											<option>12</option>
											<option>13</option>
											<option>14</option>
											<option>15</option>
											<option>16</option>
											<option>17</option>
											<option>18</option>
											<option>19</option>
											<option>20</option>


										</select> <select class="form-control">
											<option>2</option>
											<option>4</option>
											<option>6</option>
											

										</select> <select class="form-control">
											<option>2</option>
											<option>4</option>
											<option>6</option>
											<option>8</option>
											<option>10</option>
											<option>12</option>

										</select>
									</div>
								</div>


							</td>
						</tr>



						<tr>
							<th style="text-align: center">숙박요금(기본가격)</th>

							<td>
								<div class="col-md-6">
									<input type="text" class="form-control" placeholder="원/가격">

								</div>


							</td>
						</tr>


						<tr>
							<th style="text-align: center">인원추가요금(기본가격)</th>

							<td>


								<div class="form-inline">
									<div class="col-md-12">
										<select class="form-control ">
											<option>성인</option>
											<option>청소년</option>



										</select> <input type="text" class="form-control" placeholder="원/1명">

									</div>
								</div>

							</td>
						</tr>


						<tr>
							<th style="text-align: center">숙박요금(비수기)</th>

							<td>
								<div class="col-md-6">
									<input type="text" class="form-control" placeholder="원/가격">

								</div>


							</td>
						</tr>


						<tr>
							<th style="text-align: center">인원추가요금(비수기)</th>

							<td>


								<div class="form-inline">
									<div class="col-md-12">
										<select class="form-control ">
											<option>성인</option>
											<option>청소년</option>



										</select> <input type="text" class="form-control" placeholder="원/1명">

									</div>
								</div>

							</td>
						</tr>


						<tr>
							<th style="text-align: center">숙박요금(성수기)</th>

							<td>
								<div class="col-md-6">
									<input type="text" class="form-control" placeholder="원/가격">

								</div>


							</td>
						</tr>


						<tr>
							<th style="text-align: center">인원추가요금(성수기)</th>

							<td>


								<div class="form-inline">
									<div class="col-md-12">
										<select class="form-control ">
											<option>성인</option>
											<option>청소년</option>



										</select> <input type="text" class="form-control" placeholder="원/1명">

									</div>
								</div>

							</td>
						</tr>
						
						
						<tr>
							<th style="text-align: center">숙박요금(주말 및 공휴일)</th>

							<td>
								<div class="col-md-6">
									<input type="text" class="form-control" placeholder="원/가격">

								</div>


							</td>
						</tr>


						<tr>
							<th style="text-align: center">인원추가요금(기본가격)</th>

							<td>


								<div class="form-inline">
									<div class="col-md-12">
										<select class="form-control ">
											<option>성인</option>
											<option>청소년</option>



										</select> <input type="text" class="form-control" placeholder="원/1명">

									</div>
								</div>

							</td>
						</tr>
						

					</tbody>

				</table>
				<div style="float: left">
					<button class="btn btn-warning  btn-lg pull-left"
						style="margin-bottom: 50px">+추가</button>

				</div>

				<div style="float: right">
					<button class="btn btn-default btn-lg pull-left">이전</button>
					<button type="submit" class="btn btn-primary btn-lg pull-left">완료</button>
				</div>




			</div>




		</div>


	</div>
	



	</form>

	</div>
		
		
		
		
	</div>
	<!-- 	</div> -->

	


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
  <div class="modal fade" id="myModal" role="dialog" data-backdrop="false">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
        <table class="table table-striped" style="text-align; center; border:1pa; solid:#dddddd">
        <thead>
        <tr>
        <th colspan="1" style="background-color:#eeeeee; text-align: center;">글쓰기양식</th>
        </tr>
        </thead>
        
        <tbody>
        <tr>
        <td><input type="text" class="form-control" placeholder="글제목"></td>
        </tr>
        <tr>
        <td><textarea class="form-control" placeholder="글내용" style="height:350px"></textarea> </td>
        </tr>
        
        </tbody>
        </table>
             
        </div>
        <div class="modal-footer">
         
          
          <input type="button" class="btn btn-default pull-right" value="목록" data-dismiss="modal">
        	<input type="submit" class="btn btn-primary pull-right" value="등록">
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
	<script>

$(document).ready(function () {
	  var navListItems = $('div.setup-panel div a'),
	          allWells = $('.setup-content'),
	          allNextBtn = $('.nextBtn');

	  allWells.hide();

	  navListItems.click(function (e) {
	      e.preventDefault();
	      var $target = $($(this).attr('href')),
	              $item = $(this);

	      if (!$item.hasClass('disabled')) {
	          navListItems.removeClass('btn-primary').addClass('btn-default');
	          $item.addClass('btn-primary');
	          allWells.hide();
	          $target.show();
	          $target.find('input:eq(0)').focus();
	      }
	  });

	  allNextBtn.click(function(){
	      var curStep = $(this).closest(".setup-content"),
	          curStepBtn = curStep.attr("id"),
	          nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
	          curInputs = curStep.find("input[type='text'],input[type='url']"),
	          isValid = true;

	      $(".form-group").removeClass("has-error");
	      for(var i=0; i<curInputs.length; i++){
	          if (!curInputs[i].validity.valid){
	              isValid = false;
	              $(curInputs[i]).closest(".form-group").addClass("has-error");
	          }
	      }

	      if (isValid)
	          nextStepWizard.removeAttr('disabled').trigger('click');
	  });

	  $('div.setup-panel div a.btn-primary').trigger('click');
	});
</script>

</body>