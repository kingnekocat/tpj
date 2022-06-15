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
<form action="Menu2RegC" method="post" enctype="multipart/form-data" name="menuform" onsubmit="return menuCall();" >
	<table border="1" width="500" height="300">

		<tr>
			<td><input name="title" placeholder="글 제목을 입력해주세요"></td>
		</tr>
		<tr>
			<td><textarea name="txt" placeholder="내용을 입력해주세요" ></textarea> </td>
		</tr>
		<tr>
			<td>사진
			<input type="file" name="file" ></td>
		</tr>
		<tr>
			<td><button>등록하기</button></td>
		</tr>

	</table>
</form>

</body>
</html>