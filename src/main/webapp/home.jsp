<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
