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
<form action="Menu2RegC" method="post" enctype="multipart/form-data" name="menuform" onsubmit="return menuCall2();">
	<table width="700" height="500" id="Menu2RegTbl">

		<tr>
			<td><input id="Reginp" name="title" placeholder="글 제목을 입력해주세요"></td>
		</tr>
		<tr>
			<td><textarea id="Regtxt" name="txt" placeholder="내용을 입력해주세요" ></textarea> </td>
		</tr>
		<tr>
			<td>사진
			<input id="RegFile" type="file" name="file" ></td>
		</tr>
		<tr>
			<td><button id="RegBTN">등록하기</button></td>
		</tr>

	</table>
</form>

</body>
</html>