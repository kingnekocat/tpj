<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#main_slide img {
	width:100%;
}
#main_slide {
    width:100%;
    height:800px;
    overflow:hidden;
}
#main_slide > div {
    width:100%;
    height:100%;
}
#main_banner {
	background-color: #FF5C5C;
	width: 1600px;
	height: 273px;
}
#footer {
	border-top: 2px solid #353535;
}
.inner {
	width: 1200px;
	color: #353535;
	margin-left: auto;
	margin-right: auto;
	display: flex;
	padding-left: 200px;
	padding-right: 200px;
	padding-top: 37px;
	padding-bottom: 37px;
}
.left_inner {
	font-size: 17px;
	color: #888888; 
	width: 400px;
}
.right_inner {
	border-left: 1px solid #e5e5e5;
	padding-left: 34px;
	width: 400px;
}
.footer_logo img {
	width:100px;
	heigh:100px;
	margin-bottom: 12px;
}
.phone_number {
	font-size: 55px;
	color: #FF5C5C;
}
</style>
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
		<div>
			<img class="MainImg" src="img/img_one.jpg">
		</div>
		<div>
			<img class="MainImg" src="img/img_two.jpg">
		</div>
	</div>
	<div id="main_banner">
	<!-- 콘텐츠 넣을지 말지 고민 중 -->
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