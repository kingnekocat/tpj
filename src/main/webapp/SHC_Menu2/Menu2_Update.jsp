<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
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
			<tr>
				<td><img src="img/${menu.m_img }" width="300" height="200">  </td>
			</tr>
			<tr>
				<td colspan="2" ><textarea name="txt">${menu.m_txt }</textarea>  </td>
			</tr>
			<tr>
				<td><fmt:formatDate value="${menu.m_date }" type="both" dateStyle="short" timeStyle="short"/> 
				</td>
				<td><button>수정하기</button>
			</tr>
	</table>
</form>
	
</body>
</html>