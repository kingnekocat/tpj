<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/update.js"></script>
<script type="text/javascript" src="js/validCheck.js"></script>
</head>
<body>
<form action="UpdateAccountController?id=${sessionScope.accountInfo.id }" name="updateForm" method="post"
onsubmit="return UpdateCall()">
	
	<div id="infoTbl">
		
		<div id="UpdateInfoBox">
		<div class="info_title">
			<p>정보수정</p>
		</div>
		
		<div class="name_info_box">
			<label>이름</label>
			<span><input name="name" value="${sessionScope.accountInfo.name }"></span>
		</div>
		
		<div class="id_info_box">
			<label>아이디</label>
			<span>${sessionScope.accountInfo.id }</span>
		</div>
		
		<div class="id_info_box">
			<label>새 비밀번호</label>
			<span><input type=password name="pw"></span>
		</div>
		
		<div class="id_info_box">
			<label>새 비밀번호 확인</label>
			<span><input type=password name="pw2" placeholder="비번 재확인"></span>
		</div>
		
		<div class="nickname_info_box">
			<label>닉네임</label>
			<span><input name="nickname" value="${sessionScope.accountInfo.nickname }"></span>
		</div>
		
		<div class="age_info_box">
			<label>나이</label>
			<span>${sessionScope.accountInfo.age }</span>
		</div>
		
		<div class="gender_info_box">
			<label>성별</label>
			남<input class="gender_input_box_input" checked="checked" type="radio" name="gender"
					value="남"> 여<input class="gender_input_box_input" type="radio" name="gender" value="여">
		</div>
		
		<div class="region_info_box">
			<label>지역</label>
			<span><input list="region" name="region"> <datalist id="region"
						style="width: 120px">
						<option value="서울">서울</option>
						<option value="경기">경기</option>
						<option value="대전">대전</option>
						<option value="대구">대구</option>
						<option value="부산">부산</option>
					</datalist></span>
		</div>
		
		<div class="kakao_info_box">
			<label>카카오톡 아이디</label>
			<span><input name="kakao" value="${sessionScope.accountInfo.kakao}"></span>
		</div>
		
		
			</div>
		
		</div>
		
		<div class="update_btn_box">
			<button class="updateBtn">수정</button>
		</div>
		
	</form>
</body>
</html>