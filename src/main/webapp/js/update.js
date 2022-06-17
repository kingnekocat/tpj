function UpdateCall(){
	let name = document.updateForm.name;
	let pw = document.updateForm.pw;
	let pw2 = document.updateForm.pw2;
	let nickname = document.updateForm.nickname;
	let region = document.updateForm.region;
	let kakao = document.updateForm.kakao;
	
	if(isEmpty(name)){
		alert('이름을 입력해주세요');
		return false;
	}
	
	/*if(lessThan(pw,5) ||
	 notContains(pw, "QWERTYUIOPASDFGHJKLZXCVBNM")||
	 notContains(pw, "qwertyuiopasdfghjklzxcvbnm")||
	 notContains(pw, "~!@#$%^&*")){
		alert('비밀번호에는 영어 대·소문자, 특수문자가\n포함되어야 합니다.');
		pw.focus();
		pw.value = "";
		return false;
	}*/
	
	if(notEquals(pw,pw2)) {
		alert('비밀번호가 일치하지 않습니다');
		pw2.focus();
		pw2.value = "";
		return false;
	}
	
	if(isEmpty(nickname)){
		alert('닉네임을 입력해주세요');
		return false;
	}
	
	if(isEmpty(region)){
		alert('지역을 선택해주세요');
		return false;
	}
	
	if(isEmpty(kakao)){
		alert('카카오톡 ID를 입력해주세요');
		return false;
	}
	
	
	
	
	return true;
	
	
	
	
	
}