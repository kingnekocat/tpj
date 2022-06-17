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

<h2>검색 결과</h2>
<c:forEach items="${rest }" var="r">
<tr>
<td onclick="location.href='Menu1DC2?no=${r.num}'">${r.name }</td> <td>${r.food }</td> <td>${r.region }</td> <td>${r.inform }</td>
</tr>
</c:forEach>

</body>
</html>