function Regcall(){
	let id = document.myForm.id;
	let pw = document.myForm.pw;
	let pw2 = document.myForm.pw2;
	let name = document.myForm.name;
	let nickName = document.myForm.nickName;
	let age = document.myForm.age;
	let gender = document.myForm.gender;
	let region = document.myForm.region;
	let kakao = document.myForm.kakao;
	
	
	
	if(containKR(id) || lessThan(id,5)){
		alert('id를 올바르게 입력하세요');
		id.focus();
		id.value = "";
		return false;
	}
	
	if(lessThan(pw,5) ||
	 notContains(pw, "QWERTYUIOPASDFGHJKLZXCVBNM")||
	 notContains(pw, "qwertyuiopasdfghjklzxcvbnm")||
	 notContains(pw, "~!@#$%^&*")){
		alert('비번을 올바르게 입력하세요');
		pw.focus();
		pw.value = "";
		return false;
	}
	
	if(notEquals(pw,pw2)) {
		alert('비밀번호가 일치하지 않습니다');
		pw2.focus();
		pw2.value = "";
		return false;
	}
	
	if(isEmpty(name)){
		alert('이름을 입력하세요');
		name.focus();
		
		return false;
	}
	if(isEmpty(nickName)){
		alert('닉네임을 입력하세요');
		nickName.focus();
		
		return false;
	}
	if(isEmpty(age)){
		alert('나이를 입력하세요');
		age.focus();
		
		return false;
	}
	if(isEmpty(region)){
		alert('지역을 선택해주세요');
		region.focus();
		
		return false;
	}
	if(isEmpty(kakao)){
		alert('카카오톡 아이디를 입력하세요');
		kakao.focus();
		
		return false;
	}
	
	
	return true;
	
	
	
	
	
	
	
}