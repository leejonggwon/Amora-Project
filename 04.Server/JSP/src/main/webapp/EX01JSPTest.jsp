<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type = "text/css"> /* type="text/css"�� �ش� ��Ÿ�� ��Ʈ�� CSS���� ��Ÿ���ϴ� */

/* CSS�ּ� */

</style>
<script type = "text/javascript">  
    // type="text/javascript"�� �ش� ��ũ��Ʈ�� JavaScript���� ��Ÿ���ϴ�.
	// js �ּ�
</script>
</head>
<% 
	// �� ������ �ڹ��ڵ常 �� �� �ִ� �����̴� 
	int num = 100;
	String name = "ȣ�ξƺ�";
%>

<%
	int age = 20;

	int size = 20;
	String color = "yellow";
	
	System.out.println(color); // �ֿܼ��� ��µȴ�
%>



<%= name %> <!-- ȣ�ξƺ� ��� --> 
<%= age %> <!-- 20 ��� -->



<hr size="20" color ="red"> <!-- <hr>�� ���� ������ش� -->

<hr size="<%= size %>" color ="<%= color%>" >  <!-- size="<%= size %>"�� �ص� size���� ���� -->



<body>
	<!--  ���� �ּ� ���� -->
	<!--  HTML �ּ� -->
	<%-- JSP �ּ� --%>
	<%-- JSP �ּ��� ������ ȯ�濡���� ������� �ʴ´� --%>
	
	


	<h1>������ �ݿ���</h1>
</body>
</html>













