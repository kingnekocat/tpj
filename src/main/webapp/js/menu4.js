function deleteMenu(n){
	
	let ok = confirm('정말 삭제 합니까?');
	console.log(ok);
	if(ok){
		location.href='Menu4DelC?no='+ n
	}
}
	