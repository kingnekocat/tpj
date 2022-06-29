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
${r }
<table id="Menu3tbl2" width="800" height="30">
	<tr>
		<td class="M3TD" width="400">제목</td>
		<td class="M3TD">작성자</td>
		<td class="M3TD">작성일</td>
	</tr>
</table>

<table id="Menu3tbl" width="800" height="100">
<c:forEach items="${menus }" var="m">
	<tr>
			<td height="30" width="10"></td>
			<td onclick="location.href='Menu3DetailC?no=${m.m_no}'" width="400">${m.m_title }</td>
			<td style="text-align: center;"><a onclick="addCall('${m.m_id }');">${m.m_nickname }(${m.m_id })</a></td>
			<td style="text-align: center;"><fmt:formatDate value="${m.m_date }" type="both" dateStyle="short" timeStyle="short" /> </td>
	</tr>
</c:forEach>
</table>

	<table id="Menu3tbl3" width="800" height="50">
	<tr>
			<td>
			<form action="Menu3SearchC">
			<select id="Menu3select" name="menusearch"><option value="m_title">제목</option>
    		<option value="m_txt">내용</option>
			<option value="m_nickname">작성자</option></select> <input id="Menu3inp" name="search"> <button id="Menu3btn">검색</button>
			</form>
			</td>
			<td>
			<button id="Menu3btn1" onclick="location.href='Menu3RegC'" >글쓰기</button>
			</td>
			<td>
			<form action="Menu3sameRC">
			지역<input name="check" value="region" type="checkbox"> 성별<input name="check" value="gender" type="checkbox">
            <button id="Menu3btn2">확인</button>
            </form></td>
	</tr>
	</table>

	<table id="m2pageTbl">
<tr>
<td><c:forEach var="i" begin="1" end="${pageCount }" >
              <a href="Menu3PageC?p=${i }">[${i }]</a>
</c:forEach></td>
</tr>
</table>


</body>
</html>