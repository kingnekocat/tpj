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
<table id="Menu3Detail2" width="500" height="30" >
<tr>
<td></td>
</tr>
</table>

	<table id="Menu3Detail" width="500" height="400" style=" text-align: center; ">
			<tr>
				<td  width="300" height="50">${menu.m_title }</td>
				<td><a onclick="addCall('${menu.m_id }');">작성자:${menu.m_nickname }</a><br>카카오톡ID:${menu.m_kakao }</td>
			</tr>
			<tr>
				<td colspan="2" width="300"  height="300">${menu.m_txt }</td>
			</tr>
			
			
			<tr>
				<td width="300"><fmt:formatDate value="${menu.m_date }" type="both" timeStyle="short" dateStyle="short" /> </td>
				<td><button class="Detailbtn" onclick="location.href='Menu3UpdateC?no=${menu.m_no }'">수정</button>
				<button class="Detailbtn" onclick="deleteMenu3(${menu.m_no})">삭제</button>
				</td>
			</tr>
	</table>
</body>

</html>