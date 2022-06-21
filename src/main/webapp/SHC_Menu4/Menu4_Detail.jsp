<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" width="500" height="300">
			<tr>
				<td>${menu.m_title }</td>
				<td><a onclick="addCall('${menu.m_id}');">작성자:${menu.m_nickname }</a></td>
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
				<td>${menu.m_txt }</td>
			</tr>
			<tr>
				<td><fmt:formatDate value="${menu.m_date }" type="both" timeStyle="short" dateStyle="short" /> </td>
			</tr>
			<tr>
				<td><button onclick="location.href='Menu4UpdateC?no=${menu.m_no }'">수정</button>
				<button onclick="deleteMenu(${menu.m_no})">삭제</button>
				<button onclick="location.href='Menu4C'">뒤로가기</button>
				</td>
			</tr>
	</table>
	
</body>
</html>