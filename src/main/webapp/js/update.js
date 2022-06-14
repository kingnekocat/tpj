function UpdateCall(){
	let pw = document.updateForm.pw;
	let pw2 = document.updateForm.pw2;
	
	
	if(notEquals(pw,pw2)) {
		alert('비밀번호가 일치하지 않습니다');
		pw2.focus();
		pw2.value = "";
		return false;
	}
	
	
	
	return true;
	
	
	
	
	
}