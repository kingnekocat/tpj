<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
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
				<td>${menu.m_nickname }</td>
			</tr>
			<tr>
				<td>${menu.m_txt }</td>
				<td>${menu.m_kakao }</td>
			</tr>
			<tr>
				<td><fmt:formatDate value="${menu.m_date }" type="both" timeStyle="short" dateStyle="short" /> </td>
			</tr>
			<tr>
				<td><button>수정</button>
				<button onclick="deleteMenu3(${menu.m_no})">삭제</button>
				<button onclick="location.href='Menu3C'">뒤로가기</button>
				</td>
			</tr>
	</table>
</body>

</html>