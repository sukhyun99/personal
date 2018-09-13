<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" />
<script type="text/javascript">
$(document).ready(function(){
	//mouse over navbar
	$('.navbar').mouseover(function(event) {
	  $(this).find('.navbar-tool').show();
	});

	//mouse out of navbar
	$('.navbar').mouseout(function(event) {
	  $(this).find('.navbar-tool').hide();
	});

	//on close collapse
	$('.collapse').on('hidden.bs.collapse', function () {
	  var target = '#'+$(this).attr('data-parent');
	  $(target).removeClass('collapse-open');
	});

	//on open collapse
	$('.collapse').on('shown.bs.collapse', function () {
	  var target = '#'+$(this).attr('data-parent');
	  $(target).addClass('collapse-open');
	})
})
</script>
<style type="text/css">
@import "compass/css3";

  .navbar-tool {
    display: none; 
  }
  .navbar {
    margin-bottom: 0;
    border-radius: 0;
    cursor: pointer;
    border-bottom: none;
    .btn-xs {
      font-size: inherit;
    }
    li ul {
      list-style-type: none;
      padding-left: 15px;
    }
  }
  .navbar:last-of-type {
    border-bottom: 1px solid #e7e7e7;
  }
  .navbar-heading {
    background-color: #3276b1;
    cursor: default;
    font-weight: bold;
    font-size: 16px;
    li {  
      padding: 10px 0 10px 0;  
    }
    li a {
      color: #fff;
      &:hover {
        color: #fff;
      }
    }
  }
  .navbar-nav {
    .one {
      min-width: 120px;
    }
    .two {
      min-width: 300px;
    } 
    .three {
      min-width: 75px;
    }
    .four {
      min-width: 110px;
    } 
    .five {
      width: 20px; 
    }
  }
  .collapse {
    background-color: #fff; 
  }
  .collapse-open {
    background-color: #f5f5f5; 
  }

</style>
</head>
<body>
<div class="collapse-custom">
  <!-- HEADING -->
  <nav class="navbar navbar-default navbar-heading" role="navigation">
    <div class="navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="one"><a style="width:100px; color: #fff;">번호</a></li>
        <li class="two"><a style="width:100px; color: #fff;">작성자</a></li>
        <li class="three"><a style="width:600px; text-align: center; color: #fff;">제목</a></li>
        <li class="four"><a style="width:100px; color: #fff;">날짜</a></li>
      </ul>
    </div>
  </nav>
  <nav class="navbar navbar-default" role="navigation">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2" data-toggle="collapse" href="#collapseTwo">
      <ul class="nav navbar-nav">
        <li class="one"><a style="width:100px;">1000</a></li>
        <li class="two"><a style="width:100px;">résistance</a></li>
        <li class="three"><a style="width:600px;">15</a></li>
        <li class="four"><a style="width:100px;">2</a></li>
        <li class="five">
          <div class="navbar-tool">
            <button type="button" class="btn btn-default btn-xs">
              <span class="glyphicon glyphicon-pencil"></span> 
            </button>
            <button type="button" class="btn btn-default btn-xs">
              <span class="glyphicon glyphicon-trash"></span> 
            </button>
          </div>
        </li>
      </ul>
    </div>
  </nav>
  <div id="collapseTwo" class="collapse" data-parent="bs-example-navbar-collapse-2">
    <div class="panel-body">ㅇㅇㅇㅇㅇㅇ
    </div>
  </div>
</div>
</body>
</html>