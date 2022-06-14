<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h3>상세 페이지</h3>
</td>
</tr>
<tr>
<td colspan="2"><img src="fileFolder/${rest.img }"></td>
</tr>

<tr>
<td> 가게 이름</td>
<td> ${rest.name }</td>
</tr>
<tr>
<td> 음식종류</td>
<td> ${rest.food }</td>
</tr>
<tr>
<td> 지역</td>
<td>${rest.region }</td>
</tr>
<tr>
<td> 소개</td>
<td>${rest.inform }</td>
</tr>
<tr>
<td class="d_td3" colspan="2">
<a href="Menu1C"> 목록으로 </a> 
<span onclick="history.back()"> 목록으로(js) </span>
<button onclick="location.href='Menu1DelC?no=${rest.num }'">가게 정보 삭제</button>
</td>
</tr>

</table>

</body>
</html>