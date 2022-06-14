<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Menu4UpdateC?no=${menu.m_no }" method="post">
<table border="1" width="500" height="300">
			<tr>
				<td><input name="title" value="${menu.m_title }"></td>
			</tr>
			<tr>
				<td><img src="img/${menu.m_img }" width="300" height="200"></td>
			</tr>
			<tr>
				<td><textarea name="txt"> ${menu.m_txt }</textarea></td>
			</tr>
			<tr>
				<td><button>수정</button>
				<button type="button" onclick="history.back()">뒤로가기</button>
				</td>
			</tr>
	</table>
</form>



</body>
</html>