<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- ****�����߻��� "ex06error.jsp"�� �̵���Ű�� ������ ������ -->
<%@ page errorPage="ex06error.jsp" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = "������";
		int age = 36;
		int error = 15 / 0; // �����ڵ带 �ִ´�
		String phobeNumber = "010-4919-0328";
		String info = "880328-0000000";
	%>
	

	
</body>
</html>