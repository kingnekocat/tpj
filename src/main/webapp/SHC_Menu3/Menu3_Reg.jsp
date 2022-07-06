<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Menu3RegC" method="post" name="menuform" onsubmit="return menuCall();" >
<table id="Menu3Reg" width="500" height="300">
			<tr>
				<td><input name="title" placeholder="글 제목을 입력해 주세요" id="Menu3Reginp" ></td>
			</tr>
			<tr>
				<td><textarea name="txt" placeholder="내용을 입력해 주세요" id="Menu3Regtxt"></textarea> </td>
			</tr>
			<tr>
				<td><button id="Menu3Regbtn">작성하기</button>
				</td>
			</tr>
	</table>
</form>
</body>
</html>