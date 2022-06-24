<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <table id="loginAreaTbl">
		<tr>
			<td>${sessionScope.accountInfo.id }
				(${sessionScope.accountInfo.nickname }) 님 환영합니다!</td>
		</tr>
		<tr>
			<td>
				<button class="loginBrn" onclick="location.href='FriendlistController'">친구목록</button>
				
				
			</td>
		</tr>

	</table> --%>
	<div id="login_ok_box">
		<span>${sessionScope.accountInfo.id }
				(${sessionScope.accountInfo.nickname }) 님 환영합니다!</span><br>
		<a class="logOut_a" href="LoginController">로그아웃</a>
		<a href="InfoAccountController">마이페이지</a>
	</div>
</body>
</html>