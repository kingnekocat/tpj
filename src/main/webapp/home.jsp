<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="css/Review.css" rel="stylesheet">
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
	<div style="background-color:#FFF5F4; height:30px; width:100%"></div>
	
	<div id="main_banner_test">
	<div id="main_banner">
	
	
	<a class="main_banner_left" href="Menu1DC?gen=${sessionScope.accountInfo.region }">
		<div>
				<img class="forkImg" src="img/fork_white.png">
				<span class="main_banner_title">내 근처 맛집</span><br>
				<span class="main_banner_second_title">내 근처 맛집을 확인해보세요!</span>
				<img class="arrowImg" src="img/arrow.png">
		</div>
	</a>
	<a class="main_banner_right" href="Menu3C">
		<div>
				<img class="friend_main_Img" src="img/friend_white.png">
				<span class="main_banner_title_two">나와 맞을 것 같은 친구는?</span><br>
				<span class="main_banner_second_title_two">전국 여러 지역에서 친구를 만날 수 있어요!</span>
				<img class="arrowImg2" src="img/arrow.png">	
		</div>
	</a>

	
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
	
	<br>
	<br>
	
	

	<table  id="ReviewTbl" width="1200px">
	<tr>
		<td></td>
		<td id="SecondTR" colspan="4" style="text-align: center;" ><img alt="" src="review_tit.png"><br>
		<a style="color:gray; font-size: 14pt;">밥메이트 사용자들의 소중한 후기</a></td>
		<td colspan="2"><button id="ReviewBtn" onclick="location.href='Menu2C'">후기 더보기</button></td>
	</tr>
	<tr>
		<td colspan="7" style="text-align: center;" height="15px" class="ColorTD"></td>
	</tr>
	<tr>
		<td class="ReviewTD" style="text-align: center;"><img class="ReviewIMG" src="css/음식.jpg" width="265px" height="220px">
		
		
		<td width="12px" class="ColorTD"></td>
		<td class="ReviewTD" style="text-align: center;"><img class="ReviewIMG" src="css/음식1.jpg" width="265px" height="220px">
		
		
		</td>
		<td width="12px" class="ColorTD"></td>
		<td class="ReviewTD" style="text-align: center;"><img class="ReviewIMG" src="css/음식2.jpg" width="265px" height="220px">
		
		
		</td>
		<td width="12px" class="ColorTD"></td>
		<td class="ReviewTD" style="text-align: center;"><img class="ReviewIMG" src="css/음식3.jpg" width="265px" height="220px">
		
		
		</td>
	</tr>
	<tr>
		<td class="ReviewTD2" style="text-align: center;">
		<a style="font-size:15pt; font-weight: 1000;"><br>다음에 또 먹을거에요~</a><br><br>
		<a class="ReviewA" >평소에 족발 너무 좋아하는데 너무너무 신선한 느낌..모라고 설명하기가 어렵네요..
		ㅎㅎㅎ집 주변 족발집 많이 가봤었는데 이렇게 맛있지 않더라구여!!너무 맛있어서 살찌겠어요!! ㅎㅎ만난분도 너무 잘먹더라구요!</a><br>
		</td>
		<td class="ColorTD"></td>
		<td class="ReviewTD2" style="text-align: center;">
		<a style="font-size:15pt; font-weight: 1000;"><br>신선함이 다르네요!!</a><br><br>
		<a class="ReviewA">오늘은 뭘 먹을까 고민하다가 타코야끼가 생각나서 와봤는데 맛있네요! 마치 일본에 가서 먹던 타코야끼가 생각날 정도로 깊은 맛이 나더라구요!
		밥메이트에서 친구도 찾고 맛집도 찾고! 너무 좋은거 같아요~~!</a><br>
		</td>
		<td class="ColorTD"></td>
		<td class="ReviewTD2" style="text-align: center;">
		<a style="font-size:15pt; font-weight: 1000;"><br>오늘도 먹고있어요!</a><br><br>
		<a class="ReviewA">별 기대 없이 들어간 국수집 이였지만 그 결과는 너무 놀라웠습니다! 면도 부드럽고 육수도 맛있고 가게 내부도 고급스러워서 좋았어요!!
		평소에 국수 좋아하지 않았는데 앞으로 이 국수집에 자주 와야 할거 같아여!! </a><br>
		</td>
		<td class="ColorTD"></td>
		<td class="ReviewTD2" style="text-align: center;">
		<a style="font-size:15pt; font-weight: 1000;"><br>인생 갈비집 입니다!</a><br><br>
		<a class="ReviewA">오늘 먹었던 갈비입니다!! 정말 너무너무 맛있었어요! 친구랑 폭풍 흡입! 갈비도 적당히 매콤하고 떡도 너무 쫄깃하고 맛있더라구요~ 
		밥메이트 덕분에 맛집을 잘 찾는거 같아요!! 다음엔 또 어떤 맛집이 있을려나~ 기대됩니당!</a><br>
		</td>
	</tr>
	<tr>
		<td class="ThirdTD">
		<button class="ReviewBtn2" onclick="location.href='Menu2C'">더보기</button>
		
		<td class="ColorTD"></td>
		<td class="ThirdTD">
		<button class="ReviewBtn2" onclick="location.href='Menu2C'">더보기</button>
		
		</td>
		<td class="ColorTD"></td>
		<td class="ThirdTD">
		<button class="ReviewBtn2" onclick="location.href='Menu2C'">더보기</button>
		
		</td>
		<td class="ColorTD"></td>
		<td class="ThirdTD">
		<button class="ReviewBtn2" onclick="location.href='Menu2C'">더보기</button>
		
		</td>
	</tr>
	</table>


</body>

</html>
