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
	
	
	
</body>
</html>