<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/delete.js"></script>
</head>
<body>
	<div class="deleteGo_box">
		<h1>회원탈퇴</h1>
		<span>
			<p class="delete_ask">회원님의 정보가 완전히 삭제되어 밥메이트를 이용할 수 없습니다.</p>
			<p class="delete_ask_two">정말 떠나실 건가요?</p>
		</span>
		<div class="delete_btn_box">
		<button class="deleteBtn"
			onclick="deleteAccount('${sessionScope.accountInfo.id }');">탈퇴</button>
		<button onclick="location.href='MyPageController'">취소</button>
		</div>
	</div>
</body>
</html>