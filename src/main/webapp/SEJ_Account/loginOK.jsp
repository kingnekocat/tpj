<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="loginAreaTbl">
		<tr>
			<td>${sessionScope.accountInfo.id }
				(${sessionScope.accountInfo.nickname }) 님 환영합니다!</td>
		</tr>
		<tr>
			<td>
				<button class="loginBtn" onclick="location.href='InfoAccountController'">회원정보</button>
				<button class="loginBtn" onclick="location.href='LoginController'">로그아웃</button>
			</td>
		</tr>

	</table>
</body>
</html>