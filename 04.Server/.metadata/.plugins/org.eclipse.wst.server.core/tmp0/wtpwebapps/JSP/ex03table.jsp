<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<table border ="1px solid black">
	<tr>
	
	<%-- �ι�° ��� --%>
	<%  //��ũ��Ʈ��
		String td = "";
	
		for(int i = 1; i <= 10; i++){
			td = td + "<td>" + i + "</td>";
		}
	%>
	<%= td %>
	
	<tr>
	<%= "<td>" + 1 + "</td>" + "<td>" + 2 + "</td>" + "<td>" + 3 + "</td>" + "<td>" + 4 + "</td>" 
	+ "<td>" + 5 + "</td>" + "<td>" + 6 + "</td>" + "<td>" + 7 + "</td>" + "<td>" + 8 + "</td>" 
	+ "<td>" + 9 + "</td>" + "<td>" + 10 + "</td>" %>
	</tr>
	
	<%-- ù��° ��� --%>
	
	<%--  <% for(int i= 1; i<=10; i++){ %>  
	
	      <td><%= i %></td>                     <!-- *****�̷��� �̾��� ���·� �����ϴ�-->
	      
	      <% } %>	                                                   --%>	
			
	</tr>
	</table>

</body>
</html>