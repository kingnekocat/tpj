<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/Menu1.css" rel="stylesheet">
</head>
<body style="text-align:center;">
<br>
<br>
<form action="Menu1UpC" method="post" onsubmit="return call()" enctype="multipart/form-data">

<div id="m1up">

<div>
<div>가게 이름</div>
<div>
<input name="name" placeholder="필수" required>
</div>
</div>

<br>
<div>음식 종류</div>
<div><select name="genre">
<option value="한식">한식</option>
<option value="중식">중식</option>
<option value="일식">일식</option>
<option value="양식">양식</option>
<option value="아시안">아시안</option>
<option value="패스트푸드">패스트푸드</option>
<option value="치킨">치킨</option>
<option value="분식">분식</option>
<option value="카페">카페</option>
<option value="디저트">디저트</option>
</select></div>
<br>
<div>
<div>가게 위치</div>
<div><select name="region">
<option value="서울">서울</option>
<option value="경기">경기</option>
<option value="부산">부산</option>
<option value="대구">대구</option>
<option value="대전">대전</option>
</select></div>
</div>
<br>
<div>
<div>소개</div>
<div><textarea name="inform" placeholder="필수" required style="height:100px;"></textarea></div>
</div>
<br>
<div>
<div>사진</div>
<div><input type="file" name="img"></input></div>
</div>

<br>
<br>
<div>
<div><button>등록</button></div>
</div>


</div>
</form>

</body>
</html>