<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" width="1000" height="100">
<c:forEach items="${menus }" var="m">
	<tr>
			<td onclick="location.href='Menu4DetailC?no=${m.m_no}'">${m.m_title }</td>
			<td><a onclick="addCall('${m.m_id}');">${m.m_nickname }(${m.m_id})</a></td>
			<td><fmt:formatDate value="${m.m_date }" type="both" dateStyle="short" timeStyle="short" /> </td>
	</tr>
</c:forEach>
	<tr>
			<td>
			<form action="Menu4SearchC">
			<select name="menusearch"><option value="m_title">제목</option>
    		<option value="m_txt">내용</option>
			<option value="m_nickname">작성자</option></select> <input name="search"> <button>검색</button>
			</form>
			<button onclick="location.href='Menu4RegC'">글쓰기</button>
			<button onclick="location.href='HomeController'">뒤로가기</button></td>
	</tr>
</table>


</body>
</html>