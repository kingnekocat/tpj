<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table id="regTbl" border="1" width="500px" height="600px">
		<tr>
			<td colspan="2">정보수정</td>
		</tr>
		<tr>
			<td>이름</td>
			<td> <input name="name" value="${sessionScope.accountInfo.name }"> </td>
		</tr>
		<tr>
			<td>ID</td>
			<td>${sessionScope.accountInfo.id }</td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td><input name="nickname" value="${sessionScope.accountInfo.nickname }"></td>
		</tr>
		<tr>
			<td>나이</td>
			<td>${sessionScope.accountInfo.age }</td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input name="gender" value="${sessionScope.accountInfo.gender }"></td>
		</tr>
		<tr>
			<td>지역</td>
			<td>${sessionScope.accountInfo.region}</td>
		</tr>
		<tr>
			<td>카카오톡 ID</td>
			<td>${sessionScope.accountInfo.kakao}</td>
		</tr>

		<tr>
			<td colspan="2">
				<button class="loginBtn" onclick="location.href='UpdateAccountController'">수정</button>
				<button class="loginBtn">탈퇴</button>
			</td>
		</tr>


	</table>
</body>
</html>