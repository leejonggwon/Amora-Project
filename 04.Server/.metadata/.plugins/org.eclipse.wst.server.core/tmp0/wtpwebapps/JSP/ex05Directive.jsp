<!-- ������ -->
<%@page import="java.util.Random"%> <!-- import�� ������ �����ڸ� ���� -->
<%@ page language="java" contentType = "text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!--  contentType="text/html; charset=EUC-KR" �� �ѱ��� �� �� �ִ� 
	  �̺κ��� charset="EUC-KR"�� �Բ�  
	  response.setcontentType("text/html; charset = EUC-KR"); �̷��� �ڹ��ڵ�� ��ȯ�ȴ� 
	  �����ڿ����� JSP�� ���������� ��ȯ�ɶ� �ʿ��� ������ �����ϴ°� 
-->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	������ �ʹ��ʹ� �ູ�� ������ �Դϴ� ^^;
	<br>
	���� ����� ����� ���ڴ�?
	<br>
	
	<%
	//��ũ��Ʈ�������� �ڵ��ϼ��� �ϸ� impot���� �ڵ��ϼ��� �ȴ�
	Random rd = new Random(); 
	int lucky = rd.nextInt(10)+1;
	%>
	
	<strong><%= lucky %></strong> �Դϴ�. 
	
</body>
</html>