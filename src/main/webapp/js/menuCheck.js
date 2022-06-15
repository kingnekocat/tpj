function menuCall(){
	let i1 = document.menuform.title
	let i2 = document.menuform.txt
	
	
	if(menuEmpty(i1)){
		alert('내용을 입력해 주세요')
		i1.focus();
		
		return false;
	}
	
	if(menuEmpty(i2)){
		alert('내용을 입력해 주세요')
		i2.focus();
		
		return false;
	}
	

	
}

function menuCall2(){
	let i1 = document.menuform.title
	let i2 = document.menuform.txt
	let i3 = document.menuform.file
	
	
	if(menuEmpty(i1)){
		alert('내용을 입력해 주세요')
		i1.focus();
		
		return false;
	}
	
	if(menuEmpty(i2)){
		alert('내용을 입력해 주세요')
		i2.focus();
		
		return false;
	}
	
	if(menuEmpty(i3)){
		alert('사진을 넣어 주세요')
		i3.focus();
		
		return false;
	}
	

	
}