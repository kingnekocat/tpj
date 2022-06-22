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
	<div id="">
	</div>
</body>
</html>