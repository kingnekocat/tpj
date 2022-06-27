<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#regTbl {
	margin-left: auto;
	margin-right: auto;
}
.passwordInput {
	width: 300px;
}
</style>
<script type="text/javascript" src="js/reg.js"></script>
<script type="text/javascript" src="js/validCheck.js"></script>
</head>
<body>
	<form action="RegAccountController" name="myForm" method="post" onsubmit="return Regcall()">

		<!-- <table id="regTbl" width="500px" height="600px">
			<tr>
				<td colspan="2">회원가입</td>
			</tr>
			<tr>
				<td>ID</td>
				<td><input name="id" placeholder="한글x, 5글자 이상"></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type="password" class="passwordInput" name="pw" placeholder="5글자 이상, 영어 대문자,소문자,특수문자 포함"></td>
			</tr>
			<tr>
				<td>PW확인</td>
				<td><input type="password" name="pw2" placeholder="비번 재확인"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" placeholder="필수"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input name="nickName" placeholder="필수"></td>
			</tr>
			<tr>
				<td>생년월일(8자리)</td>
				<td><input name="age" placeholder="필수" maxlength="8"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>남<input checked="checked" type="radio" name="gender"
					value="남"> 여<input type="radio" name="gender" value="여"></td>
			</tr>
			<tr>
				<td>지역</td>
				<td><input list="region" name="region"> <datalist id="region"
						style="width: 120px">
						<option value="서울">서울</option>
						<option value="경기">경기</option>
						<option value="대전">대전</option>
						<option value="대구">대구</option>
						<option value="부산">부산</option>
					</datalist></td>
			</tr>
			<tr>
				<td>카카오톡 ID</td>
				<td><input name="kakao" placeholder="필수"></td>
			</tr>
			<tr>
				<td colspan="2"><button>가입!</button></td>
			</tr>


		</table> -->

		<div id="regTbl">
		<div>
			<label>회원가입</label>
		</div>
		<div>
			<label>아이디</label>
		</div>
		<div>
			<label>비밀번호</label>
		</div>
		<div>
			<label>비밀번호 확인</label>
		</div>
		<div>
			<label>이름</label>
		</div>
		<div>
			<label>닉네임</label>
		</div>
		<div>
			<label>생년월일(8자리)</label>
		</div>
		<div>
			<label>성별</label>
		</div>
		<div>
			<label>지역</label>
		</div>
		<div>
			<label>카카오톡 아이디</label>
		</div>
		<div>
			<button>회원가입</button>
		</div>
		
		
		
		
		
		
		</div>





	</form>
</body>
</html>