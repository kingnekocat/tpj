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
<body style="text-align: center">

<h2>검색 결과</h2>

<br><br>

<c:forEach items="${rest }" var="r">
<div id="M1foreach">
<br>
<div style="display: inline-block;" id="M1img">
<img src="fileFolder/${r.img }" width="200px"; height="100px" onclick="location.href='Menu1DC2?no=${r.num}'">
</div>
<div style="display: inline-block;" id="M1content">
<span onclick="location.href='Menu1DC2?no=${r.num}'">가게명 : ${r.name }</span><br>
음식 : ${r.food }<br>지역 : ${r.region }<br>${r.inform }
</div>
</div>
<br>

</c:forEach>

<br>
페이징칸
<br>
<br>
<div>
<form action="">
<input name="name">  <button onclick="location.href='Menu1SC'">검색</button>
</form>
<br>
<Br>
<br>
</div>
</body>
</html>