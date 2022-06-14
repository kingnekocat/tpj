<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach items="${menus }" var="m">
	<table border="1" width="500" height="150">
			<tr>
				<td>${m.m_title }</td>
				<td>${m.m_nickname }</td>
			</tr>
			<tr>
				<td colspan="2" >${m.m_img }</td>
			</tr>
			<tr>
				<td colspan="2" >${m.m_txt }</td>
			</tr>
			<tr>
				<td><fmt:formatDate value="${m.m_date }" type="both" dateStyle="short" timeStyle="short"/> 
				</td>
				<td><button onclick="location.href='Menu2UpdateC?no=${m.m_no}'">수정</button>
				<button onclick="location.href='Menu2DelC?no=${m.m_no}'">삭제</button></td>
			</tr>
	</table>
</c:forEach>

<table>
<tr>
<td><button onclick="location.href='Menu2RegC'">글쓰기</button></td>
<td><button onclick="location.href='HomeController'">뒤로가기</button></td>
</tr>
</table>



</body>
</html>