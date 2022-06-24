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
<link href="css/index.css" rel="stylesheet">
<link rel="stylesheet" href="css/SEJ_Home.css">
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
		
	</div>
</body>
</html>