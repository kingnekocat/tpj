<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/validCheck.js"></script>
<link rel="stylesheet" href="css/SEJ_Home.css">
</head>
<body>

	<form action="LoginController" name="loginForm" method="post"
		onsubmit="return loginCall();">
		
		<div id="login_area">
		
		<div class="login_title">
			<span>로그인</span>
		</div>
		
		<div>
			<input class="ID_input" name="id" id="id" placeholder="아이디"> <br>
			<input type="password" name="pw" id="pw" placeholder="비밀번호">
		</div>
		<span class="loginResult">${rr }</span> 
		<button class="loginBtn">로그인</button>
		
		<ul>
			<li> <a href="IdFindController">아이디찾기</a> </li>
			<li> <a href="PwFindController">비밀번호찾기</a> </li>
		</ul>
		<br>
		<div class="Reg_go">
		<strong>아직 회원이 아니신가요?</strong> <br>
		회원이 되시면 다양한 혜택을 누리실 수 있습니다.
		<a href="RegAccountController">회원가입</a>
		</div>
		</div>

		


	</form>
	
</body>
</html>