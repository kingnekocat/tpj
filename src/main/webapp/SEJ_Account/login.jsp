<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/validCheck.js"></script>
</head>
<body>

	<form action="LoginController" name="loginForm" method="post"
		onsubmit="return loginCall();">
		<table id="loginAreaTbl">
			<span>${rr }</span> 
			<tr>
				<td>ID</td>
				<td><input name="id" id="id"></td>
			</tr>

			<tr>
				<td>PW</td>
				<td><input type="password" name="pw" id="pw"></td>
			</tr>
			<tr>
				<td colspan="2"><button class="loginBtn">로그인</button>
					<button type="button" class="loginBtn"
						onclick="location.href='RegAccountController'">회원가입</button></td>
			</tr>

		</table>




	</form>


</body>
</html>