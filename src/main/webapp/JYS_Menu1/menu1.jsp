<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<li id="menu1"><a href="Menu1DC?gen=한식"> <img src="fileFolder/한식.png" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=중식"> <img src="fileFolder/중식.png" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=일식"> <img src="fileFolder/일식.png" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=양식"> <img src="fileFolder/양식.png" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=아시안"> <img src="fileFolder/아시안.png" alt="img6" width="100px" height="100px"></a></li>
</ul>
</div>

<br>
<div id="menu1Div">
<ul id="menu1">
<li id="menu1"><a href="Menu1DC?gen=패스트푸드"> <img src="fileFolder/패스트푸드.png" alt="img6" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=치킨"> <img src="fileFolder/치킨.png" alt="img7" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=분식"> <img src="fileFolder/분식.png" alt="img8" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=카페"> <img src="fileFolder/카페.png" alt="img9" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=디저트"> <img src="fileFolder/디저트.png" alt="img10" width="100px" height="100px"></a></li>
</ul>
</div>
<br>
<div id="menu1Div">
<ul id="menu1">
<li id="menu1"><a href="Menu1DC?gen=region"> <img src="fileFolder/지역별.png" alt="img11" width="100px" height="100px"></a></li>
<li id="menu1"><a href="Menu1DC?gen=${sessionScope.accountInfo.region }"> <img src="fileFolder/주변.png" alt="img12" width="100px" height="100px"></a></li>
</ul>
</div>
<br>

</form>
<br>
<form action="Menu1SC">
<div id="menu1Div">
<input name="name" placeholder="가게 이름 입력" id="searchinput">  <button id="searchbtn">검색</button>
</div>
</form>

<br>

<c:if test="${sessionScope.accountInfo.id eq 'admin'}">
<div style="text-align:right;">
<button type="button" onclick="location.href='Menu1UpC'">가게 등록</button>
</div>
</c:if>

</body>
</html>