<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

</script>

</head>
<link href="css/Menu1.css" rel="stylesheet">

<body>

<br>
<br>
${r }

<div id="menu1Div">
가게 찾기
</div>
<form action="Menu1DC">
<div id="menu1Div">

<ul id="menu1">
<li id="menu1"><a href="Menu1DC?gen=한식"> <img src="fileFolder/aa.jpg" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=중식"> <img src="fileFolder/aa.jpg" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=일식"> <img src="fileFolder/aa.jpg" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=양식"> <img src="fileFolder/aa.jpg" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=아시안"> <img src="fileFolder/aa.jpg" alt="img6" width="100px" height="100px"></a></li>
</ul>
</div>

<br>
<div id="menu1Div">
<ul id="menu1">
<li id="menu1"><a href="Menu1DC?gen=카페"> <img src="fileFolder/aa.jpg" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=분식"> <img src="fileFolder/aa.jpg" alt="img7" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=치킨"> <img src="fileFolder/aa.jpg" alt="img8" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=region"> <img src="fileFolder/aa.jpg" alt="img9" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=${sessionScope.accountInfo.region }"> <img src="fileFolder/aa.jpg" alt="img10" width="100px" height="100px"></a></li>
</ul>
</div>

<br>

<div id="menu1Div">
<button type="button" onclick="location.href='Menu1UpC'">가게 등록</button>
</div>
</form>

<br><br>
<form action="Menu1SC">
<div id="menu1Div">
<input name="name">  <button>검색</button>
</div>
</form>



</body>
</html>