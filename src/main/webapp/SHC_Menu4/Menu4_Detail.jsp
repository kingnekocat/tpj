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

<table width="700" height="30" id="menu4tbl2">
<tr>
<td></td>
</tr>
</table>

<table width="700" height="500" id="m4Detailtbl1">
			<tr>
				<td width="500" height="30">${menu.m_title }</td>
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
				<td colspan="2" ><img id="m4Detailimg" src="img/${menu.m_img }" width="500" height="300"></td>
			</tr>
			</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="2" id="m4Detailtxt">${menu.m_txt }</td>
			</tr>
			<tr>
				<td width="250"><fmt:formatDate value="${menu.m_date }" type="both" timeStyle="short" dateStyle="short" /> </td>
			
				<td><button class="m4Detailbtn" onclick="location.href='Menu4UpdateC?no=${menu.m_no }'">수정</button>
				<button class="m4Detailbtn" onclick="deleteMenu(${menu.m_no})">삭제</button>
				</td>
			</tr>
	</table>
	
</body>
</html>