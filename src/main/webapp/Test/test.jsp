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

<tr>
<td onclick="location.href='TestCreateC'">친구목록생성</td>
</tr>

<c:forEach items="${id }" var="r">
<tr>
<td onclick="location.href='TestAddC?no=${r.id}'">친구추가 ${r.id }</td>
<td onclick="location.href='TestViewC'">친구보기</td>
</tr>
</c:forEach>
</table>

</body>
</html>