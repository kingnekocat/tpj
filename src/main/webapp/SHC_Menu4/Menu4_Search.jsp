<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table width="800" height="30" id="menu4tbl2">
<tr>
<td class="M3TD" width="400">제목</td>
		<td class="M3TD">작성자</td>
		<td class="M3TD">작성일</td>
</tr>
</table>


<table width="800" height="100" id="menu4tbl1">
<c:forEach items="${menus }" var="m">
	<tr>
			<td height="30" width="10"></td>
			<td width="400" onclick="location.href='Menu4DetailC?no=${m.m_no}'">${m.m_title }</td>
			<td style="text-align: center; "><a onclick="addCall('${m.m_id}');">${m.m_nickname }(${m.m_id})</a></td>
			<td style="text-align: center;"><fmt:formatDate value="${m.m_date }" type="both" dateStyle="short" timeStyle="short" /> </td>
	</tr>
</c:forEach>
</table>

<table id="menu4tbl3" width="700" height="50">
<tr>
<td  style="text-align: center;">
			<form action="Menu4SearchC">
			<select id="m4select" name="menusearch"><option value="m_title">제목</option>
    		<option value="m_txt">내용</option>
			<option value="m_nickname">작성자</option></select> <input id="m4inp" name="search">&emsp;&emsp; <button id="m4sereach">검색</button>
			</form>
			</td>
			<td>
			<button class="m4btn" onclick="location.href='Menu4RegC'">글쓰기</button>
			</td>
</tr>
</table>

<table id="m2pageTbl">
<tr>
<td><c:forEach var="i" begin="1" end="${pageCount }" >
              <a href="Menu4SearchPageC?p=${i }&menusearch=${menusearch }&search=${search }">[${i }]</a>
</c:forEach></td>
</tr>
</table>

</body>
</html>