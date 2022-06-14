<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Menu1DC">
<table>
<tr>
<td><button name="gen" value="1">한식</button></td>
<td><button name="gen" value="2">중식</button></td>
<td><button name="gen" value="3">일식</button></td>
<td><button name="gen" value="4">양식</button></td>
<td><button name="gen" value="region">지역별</button></td>
<td><button name="gen" value="${sessionScope.accountInfo.region }">사용자와 가까운 지역별</button></td>
</tr>
</table>
</form>

</body>
</html>