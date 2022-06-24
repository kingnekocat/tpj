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
<table></table>
<c:forEach items="${menus }" var="m">

		<table id="Menu2Tbl4" width="550" height="20" style="text-align: center;">
			<tr>
				<td width="380" style="color:black; font-weight:1000; font-size:17pt"></td>
				<td id="Menu2Td"></td>
			</tr>
			</table>
		<table id="Menu2Tbl" width="550" height="50" style="text-align: center;">
		
			<tr>
				<td width="380" style="color:black; font-weight:1000; font-size:17pt">${m.m_title }</td>
				<td id="Menu2Td"><a onclick="addCall('${m.m_id }');">${m.m_nickname }(${m.m_id })</a></td>
			</tr>
			</table>
			
			<table id="Menu2Tbl2" width="550" height="150" style="text-align: center;">
			<c:choose>
			<c:when test="${m.m_img eq '사진없음' }">
			<tr>
				<td colspan="2" ></td>
			</tr>
			</c:when>
			<c:otherwise>
			<tr>
				<td colspan="2" style="text-align: center;"><img id="Menu2IMG"src="img/${m.m_img }" width="520" height="300"></td>
			</tr>
			</c:otherwise>
			</c:choose>
			</table>
			
			<table id="Menu2Tbl3" width="550" height="150" style="text-align: center;">
			<tr>
				<td colspan="2" style="text-align: center;">${m.m_txt }</td>
			</tr>
			<tr>
				<td><fmt:formatDate value="${m.m_date }" type="both" dateStyle="short" timeStyle="short"/> 
				</td>
				<td><button class="Menu2Btn" onclick="location.href='Menu2UpdateC?no=${m.m_no}'">수정</button>
				<button class="Menu2Btn" onclick="deleteMenu2(${m.m_no})">삭제</button></td>
			</tr>
	</table>
</c:forEach>

<table id="Menu2Tbl2">
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