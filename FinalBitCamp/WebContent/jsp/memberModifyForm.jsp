<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Travel Mate - Account</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700"	rel="stylesheet" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link rel="stylesheet" href="css/font-awesome.css" />
<link rel="stylesheet" href="css/lineicons.css" />
<link rel="stylesheet" href="css/weather-icons.css" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/styles.css" />
<script type="text/javascript">
function goPopupSeller() { //seller 주소 입력창 띄우기
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("http://localhost:8080/FinalBitCamp/jsp/popUpSeller.jsp", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
}

function jusoCall(roadAddrPart1, addrDetail, zipNo) {
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.  //seller
	document.getElementById('roadAddrPart1').value = roadAddrPart1;
	document.getElementById('addrDetail').value = addrDetail;
	document.getElementById('zipNo').value = zipNo;
}
$(document).ready(function(){
	if($('#loginState').val()){
		$('#login').text($('#loginState').val()+'님 로그아웃');
		$('#login').attr('href', 'logout.do');
		$('#loginList').before('<li class="nav-item"><a class="nav-link" href="memebrModifyPwCheck.do.do">마이페이지</a></li>');
	}
	var mileage = '${mileage}';
	var memberInfo = ${memberInfo};
	$(".theme-account-avatar-name").text($('#loginState').val()+"님");
	$("#mileage").text("마일리지: " + mileage + "점");
	$("#id").text(memberInfo.userId);
	$("#name").text(memberInfo.name);
	$("#email").text(memberInfo.email);
	$("#tel").text(memberInfo.phone);
	$("#addr").text(memberInfo.addr);
	$("#pwUpdate").click(function(){
		pwUpdate(memberInfo);
	})
	$("#emailUpdate").click(function(){
		emailUpdate(memberInfo);
	})
	$("#telUpdate").click(function(){
		telUpdate(memberInfo);
	})
	$("#addrUpdate").click(function(){
		addrUpdate(memberInfo);
	})
	$("#leaveMember").click(function(){
		var userId = memberInfo.userId;
		$.ajax({
			type: 'post',
			url: 'leaveMember.do',
			data: {
				'userId': userId
			},
			success: function(data){
				if(data==0){
					alert('진행중인 예약이나 결제가 있음');
				}
				else{
					alert('탈퇴 성공');
					location.href = "main.do"
				}
			},
			error: function(error, status){
				alert(error);
				alert(status);
			}
		})
	})
})
</script>
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
					<a class="navbar-brand" href="main.do">
                    <i class="far fa-compass fa-lg"></i>
                    <span>캠핑스캐너</span>
                    </a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-main">

					<ul class="nav navbar-nav navbar-right">
						<li class="nav-item "><a class="nav-link" href="#">내 캠핑장 등록</a></li>
						<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
						<li class="nav-item" id="loginList">
                    		<a class="nav-link" id="login" href="#" data-target="#loginModal">로그인</a>
                   			<input type="hidden" id="loginState" value="${member.userId}">
             			 </li>
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
							<p class="theme-account-avatar-name"><br></p>
							<p id="mileage"></p>
						</div>
						<nav class="theme-account-nav">
							<ul class="theme-account-nav-list">
								<li><a href="#"> <i class="fa fa-history"></i>나의 예약	</a></li>
								<li><a href="#"> <i	class="fa fa-bell"></i>내가 작성한 글	</a></li>
								<li><a href="#"> <i	class="fa fa-bookmark"></i>내가 찜한 캠핑장</a></li>
								<li class="active"><a href="memberModifyPwCheck.do">
								<i class="fa fa-user-circle-o"></i>내 정보 수정</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-md-9-5 ">
					<div class="container">
						<h2 style="margin-top: 10px;">
							<b>내 정보 수정 </b>
						</h2>
						<hr class="container">
					</div>
					<div class="row">
						<div class="col-md-9 ">
							<div class="theme-account-preferences">
								<div class="theme-account-preferences-item">
									<div class="row">
										<div class="col-md-3 ">
											<h5 class="theme-account-preferences-item-title">ID</h5>
										</div>
										<div class="col-md-7 ">
											<p id="id" class="theme-account-preferences-item-value"></p>
										</div>
									</div>
								</div>
								<div class="theme-account-preferences-item">
									<div class="row">
										<div class="col-md-3 ">
											<h5 class="theme-account-preferences-item-title">이름</h5>
										</div>
										<div class="col-md-7 ">
											<p id="name" class="theme-account-preferences-item-value"></p>
										</div>
									</div>
								</div>
								<div class="theme-account-preferences-item">
									<div class="row">
										<div class="col-md-3 ">
											<h5 class="theme-account-preferences-item-title">Password</h5>
										</div>
										<div class="col-md-7 ">
											<p id="pw" class="theme-account-preferences-item-value"></p>
											<div class="collapse" id="ChangePassword">
												<div class="theme-account-preferences-item-change">
													<p class="theme-account-preferences-item-change-description">변경할 비밀번호를 입력 해 주세요.</p>
													<div class="form-group theme-account-preferences-item-change-form">
														<label>현재비밀변호</label> 
														<input id="pwNow" class="form-control" type="password" /> 
														<label>변경할비밀번호</label> 
														<input id="pwNew" class="form-control" type="password" placeholder="영문,숫자,및 특수문자 포함 8자리 이상"/> 
														<label>비밀번호 확인	</label>
														<input id="pwChk" class="form-control" type="password" />
													</div>
													<div class="theme-account-preferences-item-change-actions">
														<a id="pwUpdate" class="btn btn-sm btn-primary" href="#">수정</a> 
														<a class="btn btn-sm btn-default" href="#ChangePassword" data-toggle="collapse"	aria-expanded="false" aria-controls="ChangePassword">취소</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-2 ">
											<a class="theme-account-preferences-item-change-link" href="#ChangePassword" data-toggle="collapse"	aria-expanded="false" aria-controls="ChangePassword"> 
											<i class="fa fa-pencil"></i>edit
											</a>
										</div>
									</div>
								</div>
								<div class="theme-account-preferences-item">
									<div class="row">
										<div class="col-md-3 ">
											<h5 class="theme-account-preferences-item-title">Email</h5>
										</div>
										<div class="col-md-7 ">
											<p id="email" class="theme-account-preferences-item-value"></p>
											<div class="collapse" id="ChangeHomeSite">
												<div class="theme-account-preferences-item-change">
													<p class="theme-account-preferences-item-change-description">수정	</p>
													<div class="form-group theme-account-preferences-item-change-form">
														<input id="emailNew" class="form-control" type="text" value="" />
													</div>
													<div class="theme-account-preferences-item-change-actions">
														<a id="emailUpdate" class="btn btn-sm btn-primary">수정</a> 
														<a class="btn btn-sm btn-default" href="#ChangeHomeSite" data-toggle="collapse" aria-expanded="false" aria-controls="ChangeHomeSite">취소</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-2 ">
											<a class="theme-account-preferences-item-change-link" href="#ChangeHomeSite" data-toggle="collapse"	aria-expanded="false" aria-controls="ChangeHomeSite"> 
												<i class="fa fa-pencil"></i>edit
											</a>
										</div>
									</div>
								</div>
								<div class="theme-account-preferences-item">
									<div class="row">
										<div class="col-md-3 ">
											<h5 class="theme-account-preferences-item-title">전화번호</h5>
										</div>
										<div class="col-md-7 ">
											<p id="tel" class="theme-account-preferences-item-value"></p>
											<div class="collapse" id="ChangeLanguage">
												<div class="theme-account-preferences-item-change">
												<p class="theme-account-preferences-item-change-description">수정	</p>
													<div class="form-group theme-account-preferences-item-change-form">
														<input id="telNew" class="form-control" type="text"	value="" />
													</div>
													<div class="theme-account-preferences-item-change-actions">
														<a id="telUpdate" class="btn btn-sm btn-primary" href="#">수정</a> 
														<a class="btn btn-sm btn-default" href="#ChangeLanguage" data-toggle="collapse" aria-expanded="false" aria-controls="ChangeLanguage">취소</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-2 ">
											<a class="theme-account-preferences-item-change-link" href="#ChangeLanguage" data-toggle="collapse" aria-expanded="false" aria-controls="ChangeLanguage"> 
												<i class="fa fa-pencil"></i>edit
											</a>
										</div>
									</div>
								</div>
								<div class="theme-account-preferences-item">
									<div class="row">
										<div class="col-md-3 ">
											<h5 class="theme-account-preferences-item-title">주소</h5>
										</div>
										<div class="col-md-7 ">
											<p id="addr" class="theme-account-preferences-item-value"></p>
											<div class="collapse" id="ChangeTemp">
												<div class="theme-account-preferences-item-change">
												<p class="theme-account-preferences-item-change-description">수정</p>
													<div class="form-group theme-account-preferences-item-change-form">
													<div class="form-inline">
														<input class="form-control col-sm-4" type="text" readonly="readonly" style="background-color: white;" placeholder="우편번호" id="zipNo" value="" />&emsp;
														<button class="btn btn-primary" onclick="goPopupSeller(); return false;">주소찾기</button>
													</div>
													<div class="form-inline">
														<br><input class="form-control col-sm-4" readonly="readonly" style="background-color: white;" placeholder="도로명주소" id="roadAddrPart1" type="text" value="" />&ensp;
														<input class="form-control" type="text" readonly="readonly" placeholder="상세주소" id="addrDetail" style="background-color: white; width: 30%;" value="" />
													</div>
													</div>
													<div class="theme-account-preferences-item-change-actions">
														<a id="addrUpdate" class="btn btn-sm btn-primary" href="#">수정</a> 
														<a class="btn btn-sm btn-default" href="#ChangeTemp" data-toggle="collapse" aria-expanded="false" aria-controls="ChangeTemp">취소</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-2 ">
											<a class="theme-account-preferences-item-change-link"
												href="#ChangeTemp" data-toggle="collapse" aria-expanded="false" aria-controls="ChangeTemp"> 
												<i class="fa fa-pencil"></i>edit
											</a>
										</div>
									</div>
								</div>
								<!-- <button type="button" class="btn btn-primary" style="position: absolute; right: 0;">탈퇴하기</button> -->
								  <a type="button" class="btn btn-primary" style="position: absolute; right: 0;" data-toggle="modal" data-target="#myModal">탈퇴하기</a>
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
						<a class="theme-footer-brand _mb-mob-30" href="#">
						 <img src="img/logo-black.png" alt="Image Alternative text" title="Image Title" />
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
	
	  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
          <p>탈퇴하시겠습니까?</p>
        </div>
        <div class="modal-footer">
        	<button id="leaveMember" type="button" class="btn btn-primary" data-dismiss="modal">예</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">아니오</button>
        </div>
      </div>
      
    </div>
  </div>
	<script src="js/update.js"></script>
	<script src="js/jquery.js"></script>
	<script src="js/moment.js"></script>
	<script src="js/bootstrap.js"></script>
	<script async defer	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDYeBBmgAkyAN_QKjAVOiP_kWZ_eQdadeI&callback=initMap&libraries=places"></script>
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