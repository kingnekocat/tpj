<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Menu4RegC" method="post" enctype="multipart/form-data" name="menuform" onsubmit="return menuCall2();">
	<table id="M4Regtbl" width="700" height="500">

		<tr>
			<td><input id="m4upinp" name="title" placeholder="글 제목을 입력해주세요"></td>
		</tr>
		<tr>
			<td><textarea id="m4uptxt" name="txt" placeholder="내용을 입력해주세요" ></textarea> </td>
		</tr>
		<tr>
			<td><input type="file" name="file"></td>
		</tr>
		<tr>
			<td><button id="m4upbtn">등록하기</button></td>
		</tr>

	</table>
</form>

</body>
</html>