function deleteAccount(id){
	let ok = confirm('정말 탈퇴 하시겠습니까?');
	console.log(ok);
	if(ok){
		location.href='DeleteAccountController?id=' + id
	}
	
}