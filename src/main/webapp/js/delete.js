function deleteAccount(id){
	let ok = confirm('회원님의 정보가 사라집니다.\n정말 탈퇴 하시겠습니까?');
	console.log(ok);
	if(ok){
		location.href='DeleteAccountController?id=' + id
	}
	
}

function deleteFriend(id){
	let ok = confirm('친구가 삭제됩니다.\n정말 삭제 하시겠습니까?');
	console.log(ok);
	if(ok){
		location.href='Test1DelC?no=' + id
	}
}