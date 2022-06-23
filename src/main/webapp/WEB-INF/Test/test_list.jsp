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
<td colspan="2" align="center" class="d_td1">
<h3>친구 목록</h3>
</td>
</tr>

<tr>
<td>
${r }
</td>
</tr>

<c:forEach items="${friend }" var="f">
<tr>
<td onclick="location.href='TestDC?no=${f.yourid}'">${f.yourid }</td>
</tr>
</c:forEach>

</table>
</body>
</html>