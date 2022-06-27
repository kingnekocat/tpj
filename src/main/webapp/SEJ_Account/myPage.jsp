<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="myPage_contents">
	<div class="myPage_title">
		<h1>마이페이지</h1>
	</div>
	<div class="myPage_title_two">
		<img class="myPage_profile_img" src="img/myPage.png">
		<span>${sessionScope.accountInfo.id }
		(${sessionScope.accountInfo.nickname })님</span></div>
	<div class="myPage_menu_box">
		<a href="InfoAccountController">
		<div class="info_menu_box">
		<img src="img/updateLogo.png"> <br>
		회원정보
		</div>
		</a>
		<a href="FriendlistController">
		<div class="friend_menu_box">
		<img src="img/friendLogo.png"> <br>
		내 친구 목록
		</div>
		</a>
		<a href="DeleteGoAccountController">
		<div class="exit_menu_box">
		<img src="img/회원탈퇴로고.png"> <br>
		회원 탈퇴
		</div>
		</a>
	</div>
	</div>
</body>
</html>