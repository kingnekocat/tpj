<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="friend_list_box">
		<div class="friend_list_title">
			<p>내 친구 목록</p>
		</div>
		
		<div id="friend_list_Tbl">
			<span class="friend_list_span">
				친구 아이디
			</span>
			<c:forEach items="${friends }" var="f">
					<span class="friend_list_span2" onclick="location.href='TestDC?no=${f.yourid}'">${f.yourid }</span>
			</c:forEach>
		</div>
		
	</div>
</body>
</html>