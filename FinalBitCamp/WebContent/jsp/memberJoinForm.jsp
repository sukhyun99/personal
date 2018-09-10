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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="js/bs-datepicker.js"></script>
<style>
body {
	margin-top: 40px;
}

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

function goMain(){
	location.href = "main.do";
}

$(document).ready(function(){
	var userId = '';
	var idChk = false;
	var passChk = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	
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
	
	if (isValid){
		if(curStepBtn=="step-1"){
			if($("#p2").is(":checked")==false&&$("#p3").is(":checked")==false&&$("#p4").is(":checked")==false){
				alert('go back')
			}
			else{
				nextStepWizard.removeAttr('disabled').trigger('click');
			}
		}
		else if(curStepBtn=="step-2"){
			var count = 0;
			
			$(".joinMember input").each(function(index){
				if($(this).val()==''){
					count++;
				}
				if(index==$(".joinMember input").length-1){
					if(count>0){
						alert('빈칸안됨')
					}
					else if(idChk==false||userId!=$("#id").val()){
						alert('중복체크 혹은 아이디입력')
					}
					else if(passChk.test($("#pass").val())==false){
						alert('비번입력 제대로');
						$("#pass").focus();
					}
					else if($("#pass").val()!=$("#passChk").val()){
						alert('비번불일치');
						$("#passChk").focus();
					}
					else{
						var tel = $(":selected").val() + $("#tel1").val() + $("#tel2").val();
						var addr = $("#roadAddrPart1").val() + " " + $("#addrDetail").val();
						var post = $("#zipNo").val();
						$.ajax({
							type: 'post',
							url: 'joinMember.do',
							data: {
								'userId': userId,
								'name': $("#name").val(),
								'pass': $("#pass").val(),
								'tel': tel,
								'email': $("#email").val(),
								'post': post,
								'addr': addr
							},
							success: function(data){
								alert("success")
								nextStepWizard.removeAttr('disabled').trigger('click');
							},
							error: function(xhrReq, status, error){
								alert(status);
								alert(error);
							}
						})
					}
				}
			})
		}
	}   
	});
	
	$('div.setup-panel div a.btn-primary').trigger('click');
	$("#p1").click(function(){
		if($("#p2").is(":checked")==true&&$("#p3").is(":checked")==true&&$("#p4").is(":checked")==true
				&&$("#p5").is(":checked")==true){
			$(":checkbox").prop('checked', false);
		}
		else{
			$(":checkbox").prop('checked', true);
		}
	})
	$("#idChk").on('click', function(){
		if($("#id").val()==''){
			alert('빈칸안됨')
		}
		else{
			$.ajax({
				type: 'get',
				url: 'idChk.do',
				data: {
				'id': $("#id").val()
				},
				success: function(data){
					if(data==true){
						alert("사용가능");
						userId = $("#id").val();
						idChk = true;
					}
					else{
						alert("중복");
						$("#id").val('');
					}
				},
				error: function(xhrReq, status, error){
					alert(status);
					alert(error);
				}
			})
		}
	})
	
})
</script>

</head>
<body>
	<nav class="navbar navbar-default navbar-inverse navbar-theme" id="main-nav">
	<div class="container">
		<div class="navbar-inner nav">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" data-target="#navbar-main"
					data-toggle="collapse" type="button" area-expanded="false">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"> 
				<i class="fa fa-compass  fa-2x "></i>
				</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-main">
				<ul class="nav navbar-nav navbar-right">
					<li class="nav-item "><a class="nav-link" href="#">내 캠핑장 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
					<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
				</ul>
			</div>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="stepwizard col-md-offset-3">
			<div class="stepwizard-row setup-panel">
				<div class="stepwizard-step">
					<a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
					<p>Step 1</p>
				</div>
				<div class="stepwizard-step">
					<a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
					<p>Step 2</p>
				</div>
				<div class="stepwizard-step">
					<a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
					<p>Step 3</p>
				</div>
			</div>
		</div>
		<form role="form" action="" method="post">
			<div class="row setup-content" id="step-1">
				<div class="col-xs-6 col-md-offset-3">
					<div class="col-md-12">
						<div class="col-xs-12 col-md-offset-1">
							<h3>약관동의</h3>
							<br>
						<div class="col-md-12">
							<div class="checkbox" style="font-size: 1.2em">
								<div class="col-md-12 _p-10">
									<label><input type="checkbox" id="p1">전체동의</label>
								</div>
								<div class="col-md-12 _p-10">
									<label><input type="checkbox" id="p2">이용약관동의(필수)</label>
								</div>
								<div class="col-md-12 _p-10">
									<label><input type="checkbox" id="p3">개인정보 수집 및 이용동의(필수)</label>
								</div>	
								<div class="col-md-12 _p-10">
									<label><input type="checkbox" id="p4">만 14세 이상 확인(필수)</label>
								</div>
								<div class="col-md-12 _p-10">
									<label><input type="checkbox" id="p5">위치기반 서비스 이용약관 동의(선택)</label>
								</div>			
							</div>
							<button class="btn btn-primary nextBtn btn-lg pull-right"
								style="margin-bottom: 80px; margin-top: 30px; margin-left: 300px;"
								type="button">Next</button>
						</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row setup-content" id="step-2">
				<div class="col-xs-6 col-md-offset-3">
					<div class="col-md-12 joinMember">
						<div class="col-xs-12 col-md-offset-1">
							<h3>회원가입</h3>
							<br>
						</div>
						<div class="col-xs-12 col-md-offset-1">
							<label class="control-label input">아이디</label><div class="form-inline">
							<input id="id" maxlength="200" type="text" class="form-control" placeholder="아이디" style="width:380px;"/>&ensp;
							<input type="button" id="idChk" class="btn btn-primary" value="중복체크">
						</div></div>
						<div class="col-xs-12 col-md-offset-1">
							<br><label class="control-label">이름</label> 
							<input id="name" maxlength="200" type="text" class="form-control" placeholder="이름" />&ensp;
						</div>
						<div class="col-xs-12 col-md-offset-1">
							<label class="control-label">비밀번호</label> 
							<input id="pass" maxlength="200" type="password" class="form-control" placeholder="영문,숫자,및 특수문자 포함 8자리 이상" />&ensp;
						</div>
						<div class="col-xs-12 col-md-offset-1">
							<label class="control-label">비밀번호 확인</label> 
							<input id="passChk" maxlength="200" type="password" class="form-control" placeholder="비밀번호확인" />&ensp;
						</div>
						<div class="col-xs-12 col-md-offset-1">
							<label class="control-label">전화번호</label>
							<div class="form-group">
								<div class="form-inline">
									<select class="form-control" id="sel1">
										<option>선택</option>
										<option>010</option>
										<option>011</option>
									</select> 
									<input id="tel1" type="text" class="form-control" size="4" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"> 
									<input id="tel2" type="text" class="form-control" size="4" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-offset-1">
							<label class="control-label">e-mail</label> 
							<input id="email" maxlength="200" type="text" class="form-control" placeholder="e-mail" />&ensp;
						</div>
						<div class="col-xs-12 col-md-offset-1">
							<label class="control-label">주소</label>
							<div class="form-inline">
								<input type="text" class="form-control col-sm-4" readonly="readonly" style="background-color: white;" placeholder="우편번호" id="zipNo" name="zipNo" style="width: 30%">&emsp;
								<button class="btn btn-primary" onclick="goPopupSeller(); return false;">주소찾기</button><br><br>
								<input type="text" class="form-control" readonly="readonly" style="background-color: white;" placeholder="상세주소" name="addrDetail" id="addrDetail" style="width: 30%">
								<input type="text" class="form-control col-sm-4" readonly="readonly" style="background-color: white;" placeholder="도로명주소" id="roadAddrPart1" name="roadAddrPart1" style="width: 50%"><br>
							</div>
						</div>
					</div>
					<button class="btn btn-primary nextBtn btn-lg pull-right" type="button"	style="margin-bottom: 80px; margin-top: 30px" >Next</button>
				</div>
			</div>
			<div class="row setup-content" id="step-3">
				<div class="col-xs-6 col-md-offset-3">
					<div class="col-md-12">
						<div class="col-xs-12 col-md-offset-4">
							<h1>가입성공!</h1><br>
							 <a href="main.do" class="btn btn-success btn-lg"  style="margin-bottom: 100px;">메인으로 돌아가기</a>
						</div>
					</div>
				</div>
			</div>
	</form>
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
	<script>

$(document).ready(function () {
// 	  var navListItems = $('div.setup-panel div a'),
// 	          allWells = $('.setup-content'),
// 	          allNextBtn = $('.nextBtn');

// 	  allWells.hide();

// 	  navListItems.click(function (e) {
// 	      e.preventDefault();
// 	      var $target = $($(this).attr('href')),
// 	              $item = $(this);

// 	      if (!$item.hasClass('disabled')) {
// 	          navListItems.removeClass('btn-primary').addClass('btn-default');
// 	          $item.addClass('btn-primary');
// 	          allWells.hide();
// 	          $target.show();
// 	          $target.find('input:eq(0)').focus();
// 	      }
// 	  });

// 	  allNextBtn.click(function(){
// 	      var curStep = $(this).closest(".setup-content"),
// 	          curStepBtn = curStep.attr("id"),
// 	          nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
// 	          curInputs = curStep.find("input[type='text'],input[type='url']"),
// 	          isValid = true;

// 	      $(".form-group").removeClass("has-error");
// 	      for(var i=0; i<curInputs.length; i++){
// 	          if (!curInputs[i].validity.valid){
// 	              isValid = false;
// 	              $(curInputs[i]).closest(".form-group").addClass("has-error");
// 	          }
// 	      }

// 	      if (isValid)
// 	          nextStepWizard.removeAttr('disabled').trigger('click');
// 	  });

// 	  $('div.setup-panel div a.btn-primary').trigger('click');
	});
</script>



</body>