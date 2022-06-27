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
<%-- <table id="regTbl" border="1" width="500px" height="600px">
		<tr>
			<td colspan="2">회원정보</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${sessionScope.accountInfo.name }</td>
		</tr>
		<tr>
			<td>ID</td>
			<td>${sessionScope.accountInfo.id }</td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td>${sessionScope.accountInfo.nickname }</td>
		</tr>
		<tr>
			<td>나이</td>
			<td>${sessionScope.accountInfo.age }</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${sessionScope.accountInfo.gender }</td>
		</tr>
		<tr>
			<td>지역</td>
			<td>${sessionScope.accountInfo.region}</td>
		</tr>
		<tr>
			<td>카카오톡 ID</td>
			<td>${sessionScope.accountInfo.kakao}</td>
		</tr>

		<tr>
			<td colspan="2">
				<button class="loginBtn" onclick="location.href='UpdateAccountController'">수정</button>
				<button class="loginBtn" onclick="deleteAccount('${sessionScope.accountInfo.id }');">탈퇴</button>
			</td>
		</tr>


	</table> --%>
	
	<div id="infoTbl">
		
		<div id="infoBox">
		<div class="info_title">
			<p>회원정보</p>
		</div>
		
		<div class="name_info_box">
			<label>이름</label>
			<span>${sessionScope.accountInfo.name }</span>
		</div>
		
		<div class="id_info_box">
			<label>아이디</label>
			<span>${sessionScope.accountInfo.id }</span>
		</div>
		
		<div class="nickname_info_box">
			<label>닉네임</label>
			<span>${sessionScope.accountInfo.nickname }</span>
		</div>
		
		<div class="age_info_box">
			<label>나이</label>
			<span>${sessionScope.accountInfo.age }</span>
		</div>
		
		<div class="gender_info_box">
			<label>성별</label>
			<span>${sessionScope.accountInfo.gender }</span>
		</div>
		
		<div class="region_info_box">
			<label>지역</label>
			<span>${sessionScope.accountInfo.region}</span>
		</div>
		
		<div class="kakao_info_box">
			<label>카카오톡 아이디</label>
			<span>${sessionScope.accountInfo.kakao}</span>
		</div>
		
		
			</div>
		
		</div>
		
		<div class="update_delete_btn_box">
			<button class="updateBtn" onclick="location.href='UpdateAccountController'">수정</button>
			<button class="exitBtn" onclick="deleteAccount('${sessionScope.accountInfo.id }');">탈퇴</button>
		</div>	
		
		
</body>
</html>