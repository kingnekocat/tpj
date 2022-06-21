<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<script type="text/javascript" src="js/friendadd.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<c:forEach items="${menus }" var="m">

	<table border="1" width="500" height="150">
			<tr>
				<td>${m.m_title }</td>
				<td><a onclick="addCall('${m.m_id }');">${m.m_nickname }(${m.m_id })</a></td>
			</tr>
			<tr>
				<td colspan="2" ></td>
			</tr>
			
			<c:choose>
			<c:when test="${m.m_img eq '사진없음' }">
			<tr>
				<td colspan="2" ></td>
			</tr>
			</c:when>
			<c:otherwise>
			<tr>
				<td colspan="2" ><img src="img/${m.m_img }" width="300" height="200"></td>
			</tr>
			</c:otherwise>
			</c:choose>
			
			<tr>
				<td colspan="2" >${m.m_txt }</td>
			</tr>
			<tr>
				<td><fmt:formatDate value="${m.m_date }" type="both" dateStyle="short" timeStyle="short"/> 
				</td>
				<td><button onclick="location.href='Menu2UpdateC?no=${m.m_no}'">수정</button>
				<button onclick="deleteMenu2(${m.m_no})">삭제</button></td>
			</tr>
	</table>
</c:forEach>

<table>
<tr>
<td>
<form action="Menu2SearchC">
<select name="menusearch">
<option value="m_title">제목</option>
<option value="m_txt">내용</option>
<option value="m_nickname">작성자</option>
</select> <input name="search"> <button>검색</button> 
</form>
</td>
<td><button onclick="location.href='Menu2RegC'">글쓰기</button></td>
<td><button onclick="location.href='HomeController'">뒤로가기</button></td>
</tr>
</table>

</body>
</html>