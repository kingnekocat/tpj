<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/menuCheck.js"></script>
<script type="text/javascript" src="js/menuValid.js"></script>
</head>
<body>


<table border="1" width="1000" height="300">
	<tr>
		<td><a href="HomeController">홈메뉴</a></td>
	</tr>
		<tr>
			<td align="right">
				<jsp:include page="${loginPage }"></jsp:include>
			</td>
		</tr>
		<tr>
		<td>
			<a href="Menu1C">메뉴1</a>
			<a href="Menu2C">메뉴2</a>
			<a href="Menu3C">메뉴3</a>
			<a href="Menu4C">메뉴4</a>
			<a href="TestC">테스트</a>
		</td>
		</tr>
		<tr>
		<td> <jsp:include page="${contentPage }"></jsp:include> </td>
		</tr>
		</table>
		
</body>
</html>