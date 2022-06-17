<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Menu3UpdateC?no=${menu.m_no }" method="post" >
<table border="1" width="500" height="300">
			<tr>
				<td><input name="title" value="${menu.m_title }"></td>
				<td>${menu.m_nickname }</td>
			</tr>
			<tr>
				<td><textarea name="txt">${menu.m_txt }</textarea></td>
			</tr>
			<tr>
				<td><button onclick="location.href='Menu3UpdateC'">수정</button>
				<button type="button" onclick="history.back()">뒤로가기</button>
				</td>
			</tr>
	</table>
</form>

</body>
</html>