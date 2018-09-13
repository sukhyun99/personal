<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Travel Mate - Login</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet"/>
    <link rel="stylesheet" href="css/font-awesome.css"/>
    <link rel="stylesheet" href="css/lineicons.css"/>
    <link rel="stylesheet" href="css/weather-icons.css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/> 
    <link rel="stylesheet" href="css/styles.css"/>
    
    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" 
    integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    
  </head>
<body class="bg-gray">
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
            <a class="navbar-brand" href="index.html">
              <i class="far fa-compass fa-lg"></i>
              <span>캠핑스캐너</span>
            </a>
          </div> 
          <div class="collapse navbar-collapse" id="navbar-main">
            <!-- navigation 오른쪽 메뉴-->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="">내 캠핑장 등록</a></li>
                <li><a href="">고객센터</a></li>
                <li class="nav-item" id="loginList">
                    <a class="nav-link" id="login" href="#" data-target="#loginModal">로그인</a>
                    <input type="hidden" id="loginState" value="${member.userId}">
              	</li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <div class="theme-page-section theme-page-section-xl theme-page-section-gray">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-md-offset-4">
            <div class="theme-login">
              <div class="theme-login-header">
                <h1 class="theme-login-title">로그인</h1>
                <p class="theme-login-subtitle"></p>
              </div>
              <div class="theme-login-box">
                <div class="theme-login-box-inner">
                  <form class="theme-login-form">
                    <div class="form-group theme-login-form-group">
                      <input class="form-control" type="text" placeholder="아이디"/>
                    </div>
                    <div class="form-group theme-login-form-group">
                      <input class="form-control" type="password" placeholder="비밀번호"/>
                      <p class="help-block">
                        <a href="pwd-reset.html">아이디/비번 찾기</a>
                      </p>
                    </div>
                    <div class="form-group">
                      <div class="theme-login-checkbox">
                        <label class="icheck-label">
                          <input class="icheck" type="checkbox"/>
                          <span class="icheck-title">로그인 유지</span>
                        </label>
                      </div>
                    </div>
                    <a class="btn btn-uc btn-dark btn-block btn-lg" href="#">로그인</a>
                  </form>
                  <div class="theme-login-social-separator">
                    <p>or 네이버 또는 카카오 계정으로 로그인</p>
                  </div>
                  <div class="theme-login-social-login"> 
                    <div class="row" data-gutter="10">
                      <div class="col-xs-6">
                        <a class="" href="#">
                            <img src="img/naverBtn_2.png" style="width: 150px;">
                        </a>
                      </div>
                      <div class="col-xs-6">
                        <a class="" href="#">
                            <img src="img/kakaoBtn_2.png" style="width: 150px;">
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="theme-login-box-alt">
                  <p>아직 계정이 없으신가요? &nbsp;
                    <a href="register.html">회원가입</a>
                  </p>
                </div>
              </div>
              <p class="theme-login-terms">로그인 하시면
                <a href="#">사용약관</a>
                <br/>및
                <a href="#">개인정보 약관</a>에 동의 하시는 것으로 간주됩니다.
              </p>
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
<!--                <img src="img/logo-black.png" alt="Image Alternative text" title="Image Title"/>-->
                 <i class="far fa-compass fa-lg"></i>
                  <span>캠핑스캐너</span>
              </a>
              <div class="theme-footer-brand-text">
                <p>Ac eleifend netus class vitae cubilia morbi ultricies fringilla vel consequat natoque sollicitudin a quis</p>
                <p>Pulvinar netus aliquet cubilia morbi habitant auctor et taciti mus placerat mollis integer scelerisque montes</p>
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
              <a href="#"><i class="far fa-compass fa-lg"></i>
              <span>캠핑스캐너</span></a>. All rights reserved.
            </p>
          </div>
          <div class="col-md-6">
            <ul class="theme-copyright-social">
              <li>
                <a class="fa fa-facebook" href="#"></a>
              </li>
              <li>
                <a class="fa fa-google" href="#"></a>
              </li>
              <li>
                <a class="fa fa-twitter" href="#"></a>
              </li>
              <li>
                <a class="fa fa-youtube-play" href="#"></a>
              </li>
              <li>
                <a class="fa fa-instagram" href="#"></a>
              </li>
            </ul>
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