<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="IdFindController" method="post">
	<div id="IdFindBox">

		<div>
			<p>아이디 찾기</p>
			<input name="name" placeholder="이름"> <br>
			<input name="kakao" placeholder="카카오톡 아이디"> <br>
			<span class="wrongResult">${wrong }</span>
			<button class="checkingBtn">확인</button>
		</div>

	</div>
	</form>
</body>
</html>