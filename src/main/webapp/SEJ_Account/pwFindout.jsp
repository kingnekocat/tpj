<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="PwFindBox">

		<div>
			<p>조회된 비밀번호</p>
			<span class="FoundPw">${pw } <%-- ${fn:length([pw]) } --%> <%-- ${fn:substring() } --%> </span> <br>
			<span class="wrongResult2_pw">${wrong }</span>
			<button class="checkOutBtn" onclick="location.href='LoginGoController'">로그인 하러가기</button>
		</div>

	</div>
</body>
</html>