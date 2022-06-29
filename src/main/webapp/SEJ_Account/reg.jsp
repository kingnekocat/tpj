<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/reg.js"></script>
<script type="text/javascript" src="js/validCheck.js"></script>
<script type="text/javascript">
$(function() {
	
	// $("#iddd").click(function() {
	$("#idid").keyup(function() {
		
		let inputId = $("#idid").val();
		
		$.ajax({
		    type : 'post', // 타입 (get, post, put 등등)
		    url : 'SEJ_Account/idCheck.jsp', // 요청할 서버url
		    dataType : 'json', // 데이터 타입 (html, xml, json, text 등등)
		    data : { // 보낼 데이터 (Object , String, Array)
		      "id" : inputId
		      },
		    success : function(result) { // 결과 성공 콜백함수
		        console.log(result.r);	// 1, 0
		    	if(result.r == 1){
		    		$("#showResult").text("사용 불가한 아이디");
		    		$("#showResult").css("color","red");
		    	}else{
		    		$("#showResult").text("사용 가능한 아이디");
		    		$("#showResult").css("color","green");
		    	}
		    
		    
		    
		    },
		    error : function(request, status, error) { // 결과 에러 콜백함수
		        console.log(error)
		    }
		})
		
		
		
	});
	

	
	
	
});



</script>
</head>
<body>
	<form action="RegAccountController" name="myForm" method="post" onsubmit="return Regcall()">


		<div id="regTbl">
		
		<div id="regBox">
		<div class="reg_title">
			<p>정보입력</p>
		</div>
		
		<div class="id_input_box">
			<label>아이디</label>
			<input id="idid" name="id" placeholder="한글x, 5글자 이상">
			<span id="showResult"></span>
			<button class="id_check_btn" type="button" onclick="location.href=''">중복확인</button>
		</div>
		
		<div class="pw_input_box">
			<label>비밀번호</label>
			<input type="password" class="passwordInput" name="pw" placeholder="5글자 이상, 영어 대문자,소문자,특수문자 포함">
		</div>
		
		<div class="pw_input_box">
			<label>비밀번호 확인</label>
			<input type="password" name="pw2" placeholder="비번 재확인">
		</div>
		
		<div class="name_input_box">
			<label>이름</label>
			<input name="name" placeholder="필수">
		</div>
		
		<div class="nickname_input_box">
			<label>닉네임</label>
			<input name="nickName" placeholder="필수">
		</div>
		
		<div class="birth_input_box">
			<label>생년월일(8자리)</label>
			<input name="age" placeholder="필수" maxlength="8">
		</div>
		
		<div class="gender_input_box">
			<label>성별</label>
			남<input class="gender_input_box_input" checked="checked" type="radio" name="gender"
					value="남"> 여<input class="gender_input_box_input"  type="radio" name="gender" value="여">
		</div>
		
		<div class="region_input_box">
			<label>지역</label>
			<input list="region" name="region"> <datalist id="region"
						style="width: 120px">
						<option value="서울">서울</option>
						<option value="경기">경기</option>
						<option value="대전">대전</option>
						<option value="대구">대구</option>
						<option value="부산">부산</option>
					</datalist>
		</div>
		
		<div class="kakao_input_box">
			<label>카카오톡 아이디</label>
			<input name="kakao" placeholder="필수">
		</div>
		
		
		
		</div>
		
		
		</div>

		<div class="sign_in_btn_box">
			<button class="sign_in_btn">회원가입</button>
		</div>



	</form>
</body>
</html>