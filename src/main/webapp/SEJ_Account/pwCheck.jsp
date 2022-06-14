<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#pwBox {
	border: 1px solid black;
	width: 220px;
	height: 150px;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>

<form action="InfoAccountController" method="post">
<div id="pwBox">

<div>
비밀번호를 재입력 해주세요<p>
<input type="password" name="pw"> <p>
<span>${wrong }</span>
<button>확인</button> 
</div>

</div>

</form>


</body>
</html>