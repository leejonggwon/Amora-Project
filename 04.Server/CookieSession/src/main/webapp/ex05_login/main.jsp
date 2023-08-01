<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>	
	<h1><%=session.getAttribute("id2") %>님 환영합니다</h1>
	<a href="../LogoutService">로그아웃</a>
</body>
</html>