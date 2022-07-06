<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Menu2UpdateC?no=${menu.m_no }" method="post" enctype="multipart/form-data">
	<table width="550" height="500" id="Menu2UpdateTbl">
			<tr>
				<td colspan="2"><input id="UPinp" name="title" value="${menu.m_title }" ></td>
			</tr>
			<c:choose>
			<c:when test="${menu.m_img eq '사진없음' }">
			<tr>
				<td colspan="2" ></td>
			</tr>
			</c:when>
			<c:otherwise>
			<tr>
				<td colspan="2" ><img src="img/${menu.m_img }" width="520" height="300"></td>
			</tr>
			</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="2" ><textarea id="UPtxt" name="txt">${menu.m_txt }</textarea>  </td>
			</tr>
			<tr>
				<td colspan="2" ><input type="file" name="file2">
				<input type="hidden" name="file" value="${menu.m_img }"></td>
			</tr>
			<tr>
				<td><fmt:formatDate value="${menu.m_date }" type="both" dateStyle="short" timeStyle="short"/> 
				</td>
				<td><button class="UPbtn">수정하기</button>
				<button class="UPbtn" type="button" onclick="history.back()" >뒤로가기</button><td>
			</tr>
	</table>
</form>
	
</body>
</html>