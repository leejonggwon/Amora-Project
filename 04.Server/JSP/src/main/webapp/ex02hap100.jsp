<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--1부터 100까지 합을 반복문을 통하여 구한다음 h1태그 안에 표현하시오 --%>
	
	<%
	// 스트립트릿 -> JSP안에서 java코드를 사용하기 위해사 사용하는 것 
	// 스트립트릿은 head태그에도 body태그에도 사용가능하다 
	%>
	
	
	<%
	int sum = 0;
	for(int i = 1; i <= 100; i++ ){
		sum = sum + i;	
	}
	%>
	<h1> 1부터 100까지의 합은 -> <%= sum %> </h1> 
	
	
	
	
	
</body>
</html>