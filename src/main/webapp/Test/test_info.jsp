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
			<td colspan="2">회원정보</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${ac.name }</td>
		</tr>
		<tr>
			<td>ID</td>
			<td>${ac.id }</td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td>${ac.nickname }</td>
		</tr>
		<tr>
			<td>나이</td>
			<td>${ac.age }</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${ac.gender }</td>
		</tr>
		<tr>
			<td>지역</td>
			<td>${ac.region}</td>
		</tr>
		<tr>
			<td>카카오톡 ID</td>
			<td>${ac.kakao}</td>
		</tr>

	</table>
</body>
</html>