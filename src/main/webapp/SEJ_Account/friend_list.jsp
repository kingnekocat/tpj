<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<tr>
			<td>내 친구 목록</td>
		</tr>

		<c:forEach items="${friends }" var="f">
			<tr>
				<td onclick="location.href='TestDC?no=${f.yourid}'">${f.yourid }</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>