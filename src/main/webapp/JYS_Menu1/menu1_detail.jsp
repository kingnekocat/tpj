<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/Menu1.css" rel="stylesheet">
</head>
<body>

<div>

가게 이름 메뉴 지역  소개 

</div>
<div>
<c:forEach items="${rest }" var="r">

<li onclick="location.href='Menu1DC2?no=${r.num}'">${r.name }</li>
<div>
<img src="fileFolder/${r.img }" width="200px"; height="100px">
${r.food }<br>${r.region }<br>${r.inform }
</div>

</c:forEach>
<ul></ul>
</div>

<div>
<form action="">
<input name="gg">  <button onclick="location.href='Menu1SC'">검색</button>
</form>
</div>

</table>


</body>
</html>