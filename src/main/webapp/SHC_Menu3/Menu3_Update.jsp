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
<table id="Menu3update" width="450" height="400">
			<tr>
				<td><input id="m3updateinp" name="title" value="${menu.m_title }"></td>
			</tr>
			<tr>
				<td><textarea id="m3updatetxt" name="txt">${menu.m_txt }</textarea></td>
			</tr>
			<tr>
				<td><button onclick="location.href='Menu3UpdateC'" class="m3upbtn">수정</button>
				<button type="button" onclick="history.back()" class="m3upbtn">뒤로가기</button>
				</td>
			</tr>
	</table>
</form>

</body>
</html>