<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="IdFindBox">

		<div>
			<p>조회된 아이디</p>
			<span class="FoundId">${id }</span> <br>
			<span class="wrongResult2">${wrong }</span>
			<button class="checkOutBtn" onclick="location.href='LoginGoController'">로그인 하러가기</button>
		</div>

	</div>
</body>
</html>