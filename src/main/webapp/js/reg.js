$(function() {
	
	// $("#iddd").click(function() {
	$("#idid").keyup(function() {
		
		let inputId = $("#idid").val();
		let id = document.myForm.id;
		
		
		$.ajax({
		    type : 'post', // 타입 (get, post, put 등등)
		    url : 'SEJ_Account/idCheck.jsp', // 요청할 서버url
		    dataType : 'json', // 데이터 타입 (html, xml, json, text 등등)
		    data : { // 보낼 데이터 (Object , String, Array)
		      "id" : inputId
		      },
		    success : function(result) { // 결과 성공 콜백함수
		        console.log(result.r);	// 1, 0
		        if(inputId.length < 5 || containKR(id)){
					$("#showResult").text("아이디를 바르게 입력해주세요");
		    		$("#showResult").css("color","#FF0000");
				}
		    	else if(result.r == 1){
		    		$("#showResult").text("이미 사용중인 아이디 입니다");
		    		$("#showResult").css("color","#FF0000");
		    	} else if(result.r == 0){
		    		$("#showResult").text("사용 가능한 아이디 입니다");
		    		$("#showResult").css("color","green");
		    	}
		    
		    
		    
		    },
		    error : function(request, status, error) { // 결과 에러 콜백함수
		        console.log(error)
		    }
		})
		
		
		
	});
	

	
	
	
});


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
	let cc = $("#showResult").css("color");
	
	

	/*if(containKR(id) || lessThan(id,5)){
		alert('id를 올바르게 입력하세요');
		id.focus();
		id.value = "";
		return false;
	}*/
	if(cc == "rgb(255, 0, 0)"){
		alert('아이디를 확인해주세요');
		id.focus();
		id.value = "";
		
		return false;
	}
	if(lessThan(pw,5) ||
	 notContains(pw, "QWERTYUIOPASDFGHJKLZXCVBNM")||
	 notContains(pw, "qwertyuiopasdfghjklzxcvbnm")||
	 notContains(pw, "~!@#$%^&*")){
		alert('비밀번호에는 영어 대·소문자, 특수문자가\n포함되어야 합니다.');
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
		alert('생년월일을 입력하세요');
		age.focus();
		
		return false;
	}
	if(isNotNumber(age)){
		alert('숫자만 입력 가능합니다');
		age.focus();
		age.value = "";
		
		return false;
	}
	if(ageLengthCheck(age)){
		alert('여덟자리 모두 입력해주세요');
		age.focus();
		age.value = "";
		
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

function calcAge() {
    var date = new Date();
    var year = date.getFullYear();
    var month = (date.getMonth() + 1);
    var day = date.getDate();
    let birth = document.myForm.age;
    
    if (month < 10) month = '0' + month;
    if (day < 10) day = '0' + day;
    
    var monthDay = month + day;
    birth = birth.replace('-', '').replace('-', '');
    
    var birthdayy = birth.substr(0, 4);
    var birthdaymd = birth.substr(4, 4);
    var age = monthDay < birthdaymd ? year - birthdayy - 1 : year - birthdayy;
    
    return age;
}
