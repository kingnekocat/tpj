<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Menu4UpdateC?no=${menu.m_no }" method="post" enctype="multipart/form-data">
<table width="700" height="500" id="menu4updatetbl">
			<tr>
				<td colspan="2"><input id="m4updateinp" name="title" value="${menu.m_title }"></td>
			</tr>
			<c:choose>
			<c:when test="${menu.m_img eq '사진없음' }">
			<tr>
				<td colspan="2" ></td>
			</tr>
			</c:when>
			<c:otherwise>
			<tr>
				<td colspan="2" ><img src="img/${menu.m_img }" width="500" height="300"></td>
			</tr>
			</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="2" ><textarea name="txt" id="m4updatetxt"> ${menu.m_txt }</textarea></td>
			</tr>
			<tr>
				<td><input type="file" name="file2"><input type="hidden" name="file" value="${menu.m_img }"></td>
				<td><button class="m4upbtn" >수정</button>
				<button class="m4upbtn"  type="button" onclick="history.back()">뒤로가기</button>
				</td>
			</tr>
	</table>
</form>



</body>
</html>