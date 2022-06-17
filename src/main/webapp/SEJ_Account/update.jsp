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
<table id="regTbl" border="1" width="500px" height="600px">
		<tr>
			<td colspan="2">정보수정</td>
		</tr>
		<tr>
			<td>이름</td>
			<td> <input name="name" value="${sessionScope.accountInfo.name }"> </td>
		</tr>
		<tr>
			<td>ID</td>
			<td>${sessionScope.accountInfo.id }</td>
		</tr>
		<tr>
			<td>새 비밀번호</td>
			<td><input type=password name="pw"></td>
		</tr>
		<tr>
			<td>새 비밀번호 확인</td>
			<td><input type=password name="pw2" placeholder="비번 재확인"></td>
		</tr>
		<tr>
			<td>닉네임</td>
			<td><input name="nickname" value="${sessionScope.accountInfo.nickname }"></td>
		</tr>
		<tr>
			<td>나이</td>
			<td>${sessionScope.accountInfo.age }</td>
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
			<td><input name="kakao" value="${sessionScope.accountInfo.kakao}"> </td>
		</tr>

		<tr>
			<td colspan="2">
				<button class="loginBtn">수정</button>
			</td>
		</tr>


	</table>
	</form>
</body>
</html>