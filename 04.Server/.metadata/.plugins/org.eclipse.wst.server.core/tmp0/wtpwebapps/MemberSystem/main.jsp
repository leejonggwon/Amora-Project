<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   
   #wrap{
      width: 70%;
      height: 500px;
      margin: auto;
   }
   .menu{
      border: 2px solid gray;
      margin: auto;
      text-align: center;
      width: 18%;
      height: 200px;
      float: left;
      font-size: 30px;
      line-height: 200px;
   }
   
   .menu:hover {
      background-color: gray;
   }
   
</style>
</head>
<body>
   <div id="wrap">
      <!-- a 태그는 HTML 문서에서 하이퍼링크를 생성하는 데 사용되는 태그입니다-->
      <!-- div 태그는 HTML 문서에서 구역을 나누거나 그룹화하는 데 사용되는 가장 기본적인 컨테이너 요소입니다. 
           "division"을 나타내는 줄임말로, div 태그는 특별한 의미를 가지지 않고, 
            스타일링을 적용하거나 스크립트를 삽입하기 위한 목적으로 사용됩니다. -->
      <a href="join.jsp"><div class="menu">회원가입</div></a> 
      <a href="login.jsp"><div class="menu">로그인</div></a>
      <a href="update.jsp"><div class="menu">회원정보수정</div></a>
      <a href="select.jsp"><div class="menu">회원목록보기</div></a>
      <a href="delete.jsp"><div class="menu">회원탈퇴</div></a>
      
   </div>
</body>
</html>