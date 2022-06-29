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
<div>
<a href="Menu1PageC?p=${1 }&&gen=한식">처음으로</a>
<c:forEach var="i" begin="1" end="${pageCount }">
<a href="Menu1PageC?p=${i }&&gen=한식">[${i }]</a>
</c:forEach>
<a href="Menu1PageC?p=${pageCount }&&gen=한식">끝으로</a>
</div>
<br>
<br>
<div>
<form action="Menu1SC">
<input name="name" placeholder="가게 이름 입력" id="searchinput">  <button onclick="location.href='Menu1SC'" id="searchbtn">검색</button>
</form>
<br>
<Br>
<br>
</div>




</body>
</html>