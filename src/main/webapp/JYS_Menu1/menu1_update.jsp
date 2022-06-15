<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="Menu1UpdateC" method="post" onsubmit="return call()" enctype="multipart/form-data">
<table border="1">
<tr>
<td colspan="2">가게 정보 등록</td>
</tr>

<tr>
<td>가게 이름</td>
<td><input name="name" placeholder="필수" required></td>
</tr>
<tr>
<td>음식 종류</td>
<td><select name="genre">
<option value="한식">한식</option>
<option value="중식">중식</option>
<option value="일식">일식</option>
<option value="양식">양식</option>
<option value="퓨전">퓨전</option></select></td>
</tr>
<tr>
<td>가게 위치</td>
<td><select name="region">
<option value="서울">서울</option>
<option value="경기">경기</option>
<option value="부산">부산</option>
<option value="대구">대구</option>
<option value="대전">대전</option>
</select></td>
</tr>
<tr>
<td>소개</td>
<td><textarea name="inform" placeholder="필수" required ></textarea></td>
</tr>
<tr>
<td>사진</td>
<td><input type="file" name="img"></input></td>
</tr>


<tr>
<td colspan="2"><button value="${rest.num }" name="no">수정</button></td>
</tr>
</table>
</form>
</body>
</html>