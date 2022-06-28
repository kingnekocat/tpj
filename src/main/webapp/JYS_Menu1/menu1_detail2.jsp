<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="css/Menu1.css" rel="stylesheet">

<body>

<br>
<div id="detail2Title">

<div id="detail2">

<div id="detail2img">
<img src="fileFolder/${rest.img }" width="510px" height="250px">
</div>
<div id="detail2table">
<div id="detailcont">가게 이름</div> <div id="detailcont2">${rest.name }</div> <div></div>
<div id="detailcont">음식</div> <div id="detailcont2">${rest.food }</div> <div></div>
<div id="detailcont">지역</div> <div id="detailcont2">${rest.region }</div> <div></div>
<br>
<br>
<div id="detail2intro">
<br>
<br>
<div>가게 정보</div>
<div>${rest.inform }</div>
</div>
</div>


</div>
 
        


<br>
<br>
<br>
<div>
<a href="Menu1C"> 목록으로 </a> 
<span onclick="history.back()"> 목록으로(js) </span>
<button onclick="location.href='Menu1DelC?no=${rest.num }'">가게 정보 삭제</button>
<button onclick="location.href='Menu1UpdateC?no=${rest.num }'">가게 정보 수정</button>
</div>



</div>

</body>
</html>