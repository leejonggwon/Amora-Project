<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
	    // 서블릿에서 요청한 데이터는 다 request에 있었다 
		// request를 쓸 수 있었던 이유는 서비스 매게변수를 request안에 있었기 떄문이다  
		// JSP 안에서도 request.getParameter로 받을 수 있다 
	
		String text = request.getParameter("text");
	
		out.print(text);
	%>
	<%= text %>

</body>
</html>