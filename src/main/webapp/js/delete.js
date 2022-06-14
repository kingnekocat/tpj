function deleteAccount(id){
	let ok = confirm('회원님의 정보가 사라집니다.\n정말 탈퇴 하시겠습니까?');
	console.log(ok);
	if(ok){
		location.href='DeleteAccountController?id=' + id
	}
	
}