<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${r }

<form action="Menu1DC">
<table>
<tr>
<td><button name="gen" value="한식">한식</button></td>
<td><button name="gen" value="중식">중식</button></td>
<td><button name="gen" value="일식">일식</button></td>
<td><button name="gen" value="양식">양식</button></td>
<td><button name="gen" value="region">지역별</button></td>
<td><button name="gen" value="${sessionScope.accountInfo.region }">사용자와 가까운 지역별</button></td>
</tr>

<tr>
<td>
<button type="button" onclick="location.href='Menu1UpC'">가게 등록</button>
</td>
</tr>
</form>

<form action="Menu1SC">
<tr>
<td> <input name="name">  <button>검색</button>
</td>
</tr>
</form>

</table>

</body>
</html>