<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Session 영역</h1>
	
	<%
		//Session Scope
		// - JESSIONID로 사용자를 구분
		// - 브라우저가 꺼지거나 임즤적으로 삭제하면 더이상 유지되지 않는다
		session.setAttribute("nickName", "스코프");
		response.sendRedirect("ec06_getSessionScope.jsp");
	%>

</body>
</html>