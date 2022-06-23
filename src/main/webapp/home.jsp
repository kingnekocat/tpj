<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/SEJ_Home.css">
<script type="text/javascript" src="js/jquery.js"></script>
 <script>
        $('#main_slide > div:gt(0)').hide();

        setInterval(function () {
            $('#main_slide > div:first')
                .fadeOut(2000)
                .next()
                .fadeIn(2000)
                .end()
                .appendTo('#main_slide');
        }, 5000);
        
    </script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
     <link rel="stylesheet" href="css/jquery.bxslider.css">
    <script src="js/jquery.bxslider.min.js"></script>
<script>
  //기본 호출
$(document).ready(function(){
    $('.slider').bxSlider( {
        mode: 'horizontal',// 가로 방향 수평 슬라이드
        speed: 500,        // 이동 속도를 설정
        pager: false,      // 현재 위치 페이징 표시 여부 설정
        moveSlides: 1,     // 슬라이드 이동시 개수
        slideWidth: 800,   // 슬라이드 너비
        minSlides: 3,      // 최소 노출 개수
        maxSlides: 3,      // 최대 노출 개수
        slideMargin: 5,    // 슬라이드간의 간격
        auto: true,        // 자동 실행 여부
		controls: true,    // 이전 다음 버튼 노출 여부
        nextSelector: '#next', // 다음 버튼 지정
        prevSelector: '#prev', // 이전 버튼 지정
        autoHover: false,   // 마우스 호버시 정지 여부
        touchEnabled:false,
        nextSelector: '#slider-next',
  	  prevSelector: '#slider-prev',
  	  nextText: '앞으로',
  	  prevText: '이전'
    });
    


});
</script>

</head>


<body>

	<div id="main_slide">
	
		<div class="imgBox">
			<img class="MainImg" src="img/img_one.jpg">
		</div>
		<div class="imgBox">
			<img class="MainImg" src="img/img_two.jpg">
		</div>
	</div>
	<div id="main_banner">

	<a class="main_banner_left" href="https://www.naver.com/">
		<div >
				<p class="main_banner_title">내 근처 맛집</p>
				<span>내 근처 맛집을 확인해보세요!</span>
				<img class="arrowImg" src="img/arrow.png">
		</div>
	</a>
	<a class="main_banner_right" href="https://www.naver.com/">
		<div >
				<p class="main_banner_title">나와 맞을 것 같은 친구는?</p>
				<span>전국 여러 지역에서 친구를 만날 수 있어요!</span>
				<img class="arrowImg" src="img/arrow.png">	
		</div>
	</a>
	
	</div>

	<div id="footer">
	
	<div class="inner">
	
	<div class="left_inner">
	<div class="footer_logo"><img src="img/logo.png"></div>
	<span>법인명 : 밥메이트</span> <br>
	<span>팀리더 : 송한찬</span><br>
	<span>팀원 : 장윤수, 손은주</span><br>
	<span>전화 : 010-0000-0000 팩스 : 0000-0000</span><br>
	<span>주소 : 찾아봐</span><br>
	<span>Copyright © <strong>밥메이트</strong>. All rights reserved.</span>
	</div>
	
	<div class="right_inner">
	<span>고객 상담 전화</span><br>
	<span class="phone_number">0000-0000</span><br>
	<span>평일 토.일.공휴일 모두 휴무</span>
	</div>
	
	</div>
	
	</div>
	
	
	




        
<table id="contentTb1" style="text-align:center;">
    <tr>
     <td class="contentTb1TD2">
   
     <ul class="slider">
  <li><a href="Menu1DC2?no=71"> <img src="fileFolder/aa.jpg" alt="img1"> </a></li>
  <li><img src="fileFolder/bb.jpg" alt="img2"></li>
  <li><img src="fileFolder/cc.jpg" alt="img3"></li>
  <li><a href="Menu1DC2?no=71"> <img src="fileFolder/aa.jpg" alt="img1"> </a></li>
  <li><img src="fileFolder/bb.jpg" alt="img2"></li>
  <li><img src="fileFolder/cc.jpg" alt="img3"></li>
	</ul>
	
	<div class="outside">
  	<p><span id="slider-prev"></span> | <span id="slider-next"></span></p>
	</div>
 	 </td>
  	 </tr>
</table>


</body>

</html>
