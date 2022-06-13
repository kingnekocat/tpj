function call(){
	let name = document.myForm.name;
	let id = document.myForm.id;
	let pw = document.myForm.pw;
	let pw2 = document.myForm.pw2;
	let gender = document.myForm.gender;
	
	if(isEmpty(name)){
		alert('이름 에러!');
		name.focus();
		
		return false;
	}
	
	if(containKR(id) || lessThan(id,5)){
		alert('id를 올바르게 입력하세요');
		id.focus();
		id.value = "";
		return false;
	}
	
	if(lessThan(pw,3) ||
	 notContains(pw, "QWERTYUIOPASDFGHJKLZXCVBNM")||
	 notContains(pw, "qwertyuiopasdfghjklzxcvbnm")||
	 notContains(pw, "1234567890")){
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
	
	
	return true;
	
	
	
	
	
	
	
}