<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<table border="1">


<c:forEach items="${id }" var="r">
<tr>
<td onclick="location.href='TestAddC?no=${r.id}'">친구추가 ${r.id }</td>
</tr>
</c:forEach>
<tr>
<td onclick="location.href='TestViewC'">친구목록보기</td>
</tr>
</table>

</body>
</html>