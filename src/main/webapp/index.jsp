<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/menuCheck.js"></script>
<script type="text/javascript" src="js/menuValid.js"></script>
<script type="text/javascript" src="js/friendadd.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<link href="css/index.css" rel="stylesheet">

<link rel="stylesheet" href="css/SEJ_Home.css">
<link rel="stylesheet" href="css/SEJ_Mypage.css">
<link rel="stylesheet" href="css/SEJ_Pwcheck.css">
<link rel="stylesheet" href="css/SEJ_Info.css">
<link rel="stylesheet" href="css/SEJ_Delete.css">
<link rel="stylesheet" href="css/SEJ_FriendList.css">

<link href="css/Review.css" rel="stylesheet">
<link href="css/MenuDesign.css" rel="stylesheet">

</head>
<body>

	<div id="contents">
	
		<div id="Home_logo">
			<a href="HomeController"><img class="logo_img" src="img/밥메이트로고3.png"></a>
		</div>
		
		<div id="Login_page">
			<jsp:include page="${loginPage }"></jsp:include>
		</div>
		
		<div id="Menu_bar">
		<ul class="menu_list">
			<li><a href="Menu1C">가게 찾기</a></li>

			<li><a href="Menu2C">리뷰</a></li>

			<li><a href="Menu3C">친구 찾기</a></li>

			<li><a href="Menu4C">자유 게시판</a></li>
		</ul>
		</div>
		
		<div id="Contents_box">
			<jsp:include page="${contentPage }"></jsp:include>
			</div>
	
	<div id="footer">
	
	<div class="inner">
	
	<div class="left_inner">
	<a href="https://github.com/kingnekocat/tpj" class="footer_logo"><img src="img/밥메이트로고2.png"></a>
	<br>
	<span>법인명 : 밥메이트</span> <br>
	<span>팀리더 : 송한찬</span><br>
	<span>팀원 : 장윤수, 손은주</span><br>
	<span>전화 : 010-0000-0000 팩스 : 0000-0000</span><br>
	<span class="last_space">주소 : 찾아봐</span><br>
	<span>Copyright © <strong>밥메이트</strong>. All rights reserved.</span>
	</div>
	
	<div class="right_inner">
	<span class="strong_title">고객 상담 전화</span><br>
	<span class="phone_number">0000-0000</span><br>
	<span>평일 토.일.공휴일 모두 휴무</span><br>
	<span class="github_link_title">밥메이트 github</span><br>
	<a class="github_link" href="https://github.com/kingnekocat/tpj">누르면 이동해요</a>
	</div>
	
	</div>
	
	</div>
		
	</div>
	
	
</body>
</html>