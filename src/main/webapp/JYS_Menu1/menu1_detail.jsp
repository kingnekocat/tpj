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
<td> 가게 이름 </td><td> 메뉴 </td><td> 지역 </td><td> 소개 </td>
</tr>

<c:forEach items="${rest }" var="r">
<tr>
<td onclick="location.href='Menu1DC2?nono=${r.num}'">${r.name }</td> <td>${r.food }</td> <td>${r.region }</td> <td>${r.inform }</td>
</tr>
</c:forEach>
</table>


</body>
</html>