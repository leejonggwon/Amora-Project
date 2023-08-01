<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body> 
	<h1>누적 방문자 수</h1>

	<%  // 방문자수 알수있는 페이지
		Integer visit = (Integer)application.getAttribute("visit");
	
		if(visit == null){
			application.setAttribute("visit", 0);
			visit = 0 ;
		}else{
			visit += 1 ;
			application.setAttribute("visit", visit); // 증가된 값이 visit에 들어간다
		}
	%>
	
	<h1><%=visit %>명</h1>

</body>
</html>


































