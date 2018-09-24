<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Travel Mate - Account</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" />
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/lineicons.css" />
<link rel="stylesheet" href="css/weather-icons.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/styles.css" />
<script src="js/bs-datepicker.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	if($('#loginState').val()){
		$('#login').text($('#loginState').val()+'님 로그아웃');
		$('#login').attr('href', 'logout.do');
		$('#loginList').before('<li class="nav-item"><a class="nav-link" href="memberModifyPwCheck.do">마이페이지</a></li>');
		$('.btn-danger').attr('data-target', '#myModal');
	}
	$('#login').click(function(e){
		var text = $('#login').text();
		if(text=='로그인'){
			$('#loginModal').modal();	
		}		
	})
})
</script>
<style>
.pagination {
	display: block;
	text-align: center;
}
.pagination>li>a {
	float: none;
}
#foo {
	background-color: #F2F2F2;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-inverse navbar-theme" id="main-nav">
	<div class="container">
		<div class="navbar-inner nav">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" data-target="#navbar-main" data-toggle="collapse" type="button" area-expanded="false">
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
				<ul class="nav navbar-nav navbar-right">
					<li class="nav-item "><a class="nav-link" href="#">내 캠핑장 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="customerCenter.do">고객센터</a></li>
					<li class="nav-item" id="loginList">
					<a class="nav-link" id="login" href="#" data-target="#loginModal">로그인</a> 
					<input type="hidden" id="loginState" value="${userId}"></li>
				</ul>
			</div>
		</div>
	</div>
	</nav>
	<div class="theme-page-section theme-page-section-gray theme-page-section-lg">
		<div class="container">
			<div class="row">
<!-- 				<div class="col-md-2 "> -->
<!-- 					<div class="theme-account-sidebar"> -->
<!-- 						<div class="theme-account-avatar"> -->
<!-- 							<img class="theme-account-avatar-img" src="./img/70x70.png" alt="Image Alternative text" title="Image Title" /> -->
<!-- 							<p class="theme-account-avatar-name">전다혜 님<br> 마일리지 : 500</p> -->
<!-- 						</div> -->
<!-- 						<nav class="theme-account-nav"> -->
<!-- 						<ul class="theme-account-nav-list"> -->
<!-- 							<li><a href="#"> <i class="fa fa-history"></i>나의 예약</a></li> -->
<!-- 							<li><a href="memberMyQuestion.do"> <i class="fa fa-bell"></i>내가 작성한 글</a></li> -->
<!-- 							<li><a href="#"> <i class="fa fa-bookmark"></i>내가 찜한 캠핑장</a></li> -->
<!-- 							<li><a href="#"> <i class="fa fa-user-circle-o"></i>내 정보 수정</a></li> -->
<!-- 						</ul> -->
<!-- 						</nav> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="col-md-10">
					<div class="container">
						<h2 style="margin-top: 10px;">
							<b>고객센터</b>
						</h2>
						<hr class="container">
					</div>
					<div class="row">
						<div class="container">
							<div class="row">
								<div class="form-group col-sm-11">
									<div class="content1 form-control" style="border: 1px solid lightgrey; height: 140px; background-color: #ffffff;">
										<p>
											<br> &emsp;&emsp;<span style="font-size: 18pt;"><b>1대1 질의 응답</b></span><br><br>&emsp; &emsp;
											<span><b>캠핑에 궁금하신 점은 무엇이든 문의해 주십시오.</b></span>&ensp;&ensp;&ensp;&ensp;
											<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#loginModal">문의하기</button>
										</p>
									</div>
								</div>
							</div>
							<div class="col-sm-11 _mb-20" style="border: 1px solid lightgrey">
								<p>
									<br> &emsp;&emsp;<span style="font-size: 18pt;"><b>자주묻는 질문(FAQ)</b></span><br> <br> &emsp; &emsp;
									<span><b>캠핑 이용자가 자주묻는 질문을 확인하십시오.</b></span>&ensp;&ensp;&ensp;&ensp;
									<button class="btn btn-link" type="submit">더보기></button><hr>&emsp;&emsp;
									<span style="font-size: 13pt; color: #ff7404"><b>예약관련</b></span><br><br>
								    <div class="form-group col-sm-11">
										<button type="button" class="fa fa-caret-down" data-toggle="collapse" data-target="#demo"></button>
										<span><b>땡큐캠핑에서 예약 시 캠핑장에 실시간으로 예약이 되나요?</b></a></span>
										<div id="demo" class="collapse">
											<div class="row">
												<div class="form-group col-sm-12">
													<div class="content1 form-control"
														style="border: 1px solid lightgrey; height: 90px; background-color: #F8E6E0;">
														<p>
															<br> 땡큐캠핑은 당사에서 제공하는 캠핑장 실시간 예약 시스템능 이용하는 제휴캠핑장을 대상으로
															캠핑예약 서비스를 제공하고 있습니다.<br> 땡큐캠핑에서는 실시간으로 캠핑장에 예약현황을 확인
															할 수 있을 뿐아니라 캠핑장 실시간 예약이 가능합니다.
														</p>
													</div>
												</div>
											</div>
										</div>
								</div>
								<div class="form-group col-sm-11">
									<button type="button" class="fa fa-caret-down" data-toggle="collapse" data-target="#demo1"></button>
									<span><b>땡큐캠핑에서 예약 시 캠핑장에 실시간으로 예약이 되나요?</b></span>
									<div id="demo1" class="collapse">
										<div class="row">
											<div class="form-group col-sm-12">
												<div class="content1 form-control" style="border: 1px solid lightgrey; height: 90px; background-color: #F8E6E0;">
													<p>
														<br> 땡큐캠핑은 당사에서 제공하는 캠핑장 실시간 예약 시스템능 이용하는 제휴캠핑장을 대상으로
														캠핑예약 서비스를 제공하고 있습니다.<br> 땡큐캠핑에서는 실시간으로 캠핑장에 예약현황을 확인
														할 수 있을 뿐아니라 캠핑장 실시간 예약이 가능합니다.
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group col-sm-11">
									<button type="button" class="fa fa-caret-down" data-toggle="collapse" data-target="#demo2"></button>
									<span><b>땡큐캠핑에서 예약 시 캠핑장에 실시간으로 예약이 되나요?</b></span>
									<div id="demo2" class="collapse">
										<div class="row">
											<div class="form-group col-sm-12">
												<div class="content1 form-control" style="border: 1px solid lightgrey; height: 90px; background-color: #F8E6E0;">
													<p>
														<br> 땡큐캠핑은 당사에서 제공하는 캠핑장 실시간 예약 시스템능 이용하는 제휴캠핑장을 대상으로
														캠핑예약 서비스를 제공하고 있습니다.<br> 땡큐캠핑에서는 실시간으로 캠핑장에 예약현황을 확인
														할 수 있을 뿐아니라 캠핑장 실시간 예약이 가능합니다.
													</p>
												</div>
											</div>
										</div>
									</div>
								</div><br>
									<div class="col-md-12 _mb-20"></div>
									<div class="form-group col-sm-12">
									&emsp;<span style="font-size: 13pt; color: #ff7404"><b>결제관련</b></span><br><br>
										<button type="button" class="fa fa-caret-down" data-toggle="collapse" data-target="#demo3"></button>
										<span><b>전자결제방식으로 무엇무엇이 지원되나요?</b></span>
										<div id="demo3" class="collapse">
											<div class="row">
												<div class="form-group col-sm-12">
													<div class="content1 form-control" style="border: 1px solid lightgrey; height: 90px; background-color: #F8E6E0;">
														<p><br></p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12 _mb-20"></div>
									<div class="form-group col-sm-12">&emsp;
									    <span style="font-size: 13pt; color: #ff7404"><b>회원관련</b></span><br><br>
										<button type="button" class="fa fa-caret-down" data-toggle="collapse" data-target="#demo4"></button>
										<span><b>탈퇴는 어떻게하나요?</b></span>
										<div id="demo4" class="collapse">
											<div class="row">
												<div class="form-group col-sm-12">
													<div class="content1 form-control" style="border: 1px solid lightgrey; height: 90px; background-color: #F8E6E0;">
														<p>
															<br> 
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							<div class="col-sm-11 _mb-20" style="border: 1px solid lightgrey">
								<p>
									<br> &emsp;&emsp;<span style="font-size: 18pt;"><b>공지사항</b></span><br><br> &emsp; &emsp;
									<span><b>땡큐캠핑에서 알려드립니다.</b></span>&ensp;&ensp;&ensp;&ensp;
									<button class="btn btn-link" type="submit">더보기></button>
								<hr>
								<br>
								<div class="form-group col-sm-12">
										<table class="table booking-list table-bordered">
											<tbody>
												<tr class="a">
													<td>1</td>
													<td><a id="pay">[스노우피크]-땡큐캠핑 쿠폰이벤트</a></td>
													<td>2018-08-14</td>
													<td>2.568</td>
												</tr>
												<tr class="a">
													<td>1</td>
													<td><a id="pay">[스노우피크]-땡큐캠핑 쿠폰이벤트</a></td>
													<td>2018-08-14</td>
													<td>2.568</td>
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
					<p class="theme-copyright-text"> Copyright &copy; 2018 <a href="#">Bookify</a>. All rights reserved.</p>
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
	
	<script type="text/javascript">
	function submit(){
		var title = $('#title').val();
		var content = $('#content').val();
		location.href = "customerSendQuestion.do?title="+title+"&content="+content;
	}
	</script>
<!-- Modal -->
   <div class="modal fade" id="myModal" role="dialog" data-backdrop="false">
   	  <div class="modal-dialog">
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title">문의</h2>
        </div>
        <div class="col-md-12"><br>
	        <p>제목</p>
	        <input id="title" class="form-control" placeholder="제목" style="height:40px"> 
        </div>
        <div class="col-md-12"><br>
	        <p>내용</p>
	        <textarea id="content" class="form-control" placeholder="글내용" style="height:350px"></textarea><br>
        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-default pull-right" value="취소" data-dismiss="modal">
          <input type="button" class="btn btn-primary pull-right" onclick ="submit()" value="문의하기">
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
						<form class="form-horizontal" action="memberLogin.do" method="post">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-3 control-label">아이디</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-3 control-label">비밀번호</label>
								<div class="col-sm-6">
									<input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호">
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
									<a href="https://kauth.kakao.com/oauth/authorize?client_id=1ac3e7706d2467a442f2585681668ea0&redirect_uri=http://localhost:8080/FinalBitCamp/kakaoLogin.do&response_type=code&scope=account_email" id="kakaoBtn">
									<img alt="" src="img/kakao.png" style="width: 270px; height: 46"></a>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-6">
									<a href="naverLogin.do" id="naverBtn">
									<img alt="" src="img/naver.PNG" style="width: 270px;"></a>
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