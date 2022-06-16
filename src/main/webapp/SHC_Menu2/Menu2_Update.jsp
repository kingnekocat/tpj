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

<form action="Menu2UpdateC?no=${menu.m_no }" method="post">
	<table border="1" width="500" height="150">
			<tr>
				<td><input name="title" value="${menu.m_title }" ></td>
				<td>${menu.m_nickname }</td>
			</tr>
			<c:choose>
			<c:when test="${menu.m_img eq '사진없음' }">
			<tr>
				<td colspan="2" ></td>
			</tr>
			</c:when>
			<c:otherwise>
			<tr>
				<td colspan="2" ><img src="img/${menu.m_img }" width="300" height="200"></td>
			</tr>
			</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="2" ><textarea name="txt">${menu.m_txt }</textarea>  </td>
			</tr>
			<tr>
				<td><fmt:formatDate value="${menu.m_date }" type="both" dateStyle="short" timeStyle="short"/> 
				</td>
				<td><button>수정하기</button>
				<button type="button" onclick="history.back()" >뒤로가기</button><td>
			</tr>
	</table>
</form>
	
</body>
</html>